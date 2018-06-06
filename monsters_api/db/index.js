const {Pool} = require('pg');
const {user, host, database,password,port} = require('../secure/db_config.js');

const pool = new Pool({user, host, database, password, port});




module.exports = pool;
