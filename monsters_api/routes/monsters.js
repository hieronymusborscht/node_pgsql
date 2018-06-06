const {Router} = require('express');
const pool = require('../db');


const router = Router();


router.get('/',(request,response, next)=>{
  pool.query('select * from monsters order by m_id asc',(err, res)=>{
   if(err) return next(err);
    response.json(res.rows);
  });
});

router.get('/:id',(request,response, next)=>{
   const {id} = request.params;
   pool.query('select * from monsters where m_id=$1',[id],(err, res)=>{
     if(err) return next(err);
     response.json(res.rows);
 });
});

module.exports =router;
