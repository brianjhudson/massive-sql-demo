const massive = require('massive')

const db = massive.connectSync({connectionString: 'postgres://dm5:dm52017@localhost/testdb'});

db.createTables([], (err, results) => {
    console.log(results)
})

module.exports = db;
