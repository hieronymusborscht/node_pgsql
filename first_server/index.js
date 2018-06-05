const http = require('http');


 const hostname ='127.0.0.1';
 const port = 3000;

 const server = http.createServer((req,res)=>{

   const {url} = req;
   console.log(url);
   if(url==='/translations'){

     const translations= {1: 'one', 2: 'two', 3: 'three'}
     //res.end('translations');
     res.setHeader('Content-Type', 'application/json');
     res.write(JSON.stringify(translations, undefined, 2));
     res.end('welcome to node.');

   }else{

   res.end('welcome to node.');
 }
 });


server.listen(port, hostname, ()=>{
  console.log(`Running on port ${port}`);
});
