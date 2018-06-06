const {Pool} = require('pg');
const {user, host, database,password,port} = require('../secure/db_config.js');

const pool = new Pool({user, host, database, password, port});

pool.query('select * from monsters',(err, res)=>{
 if(err) return console.log(err);

  console.log(res);
});
