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

## MassiveJS