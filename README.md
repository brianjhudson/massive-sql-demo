# SQL and MassiveJS

Now that we have learned how to create and query data in SQL and how to run our database server on our own computers, we can connect our applications to our database. 

## Postgres Check 
First, check that the database server is running. 

### Mac with Brew
If you're using brew on a Mac, type the following:
```brew services list``

You should see postgres in the list, and it should be started. If it is not running, type the following: 

```brew services start postgres```

### Mac without Brew
If you're on a Mac and not using brew, type the following: 

```ps | grep postgres```

You should also see postgres in the list. If it is not started, you'll have to find the directory where postgres was installed and find the bin subdirectory. Type `postgres` in that subdirectory. 

You can make this command accessible to other directories by creating a symbolic link to this location. 

### Windows
If you're on windows, postgres starts by default, but if you want to check, go to PowerShell and type: 
```ps postgres```

If for some reason postgres is not started, you could restart your computer, or you could manually start it by typing `postgres` in the terminal. If the command is not recognized, you have to run the file from its directory. Try navigating to `C:\Program Files\PostgreSQL\9.6\bin\`. You can also add this file path to the PATH variable in Environment Variables so that you don't have to navigate to it.  

## Postgres Setup
We'll need a database to hook up to our application. You can do this through your terminal with the following command:

```createdb testdb```

Or you can create a database through psql, Postico, or PGAdmin. You can also set up your tables through the client, but we'll let a script in our application do this for us.  

## MassiveJS
To connect our app, we'll use a library called MassiveJS. Massive will connect to our database server like Postico, and it will send our SQL statements from our node server to our database server. 

### Connecting to the database server
First, set up the connection to the server in `db.js`: 

```
const massive = require('massive')

module.exports = massive.connectSync({connectionString: 'postgres://username:password@localhost/testdb'});
```

We're importing the massive library and making the connection to our database using the connectSync method. We provide the username, password, host, and database name in the connection string so that massive can connect to the server. 

### Setting up the Node server
Now we can write our server in `index.js`:

```
const express = require('express')

const app = express();
const port = 3000;

app.listen(port, () => {
    console.log(`Listening on port ${port}`)
})
```

That's enough to get us started. Later, we can add in our standard packages, express-session, body-parser, and cors. 

Now let's bring the database into `index.js`: 

```
const express = require('express')
const db = require('./db')

const app = express();
const port = 3000;

app.listen(port, () => {
    console.log(`Listening on port ${port}`)
})
```

Run nodemon and see if you're connected. 
