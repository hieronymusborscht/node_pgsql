const express = require('express');
const monsters = require('./routes/monsters');

const app = express();

app.use('/monsters',monsters);


//const port = 3000;
//app.listen(port, ()=> console.log(`listening on port ${port}`));

app.use((err, req, res, next)=>{
   res.json(err);
});

module.exports = app;
