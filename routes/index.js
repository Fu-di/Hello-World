const express=require("express");
var router=express.Router();
var pool=require("../pool");
/*轮播广告*/
/*router.get("/",(req,res)=>{
    var sql="SELECT * FROM `myMovie_carousel_item` WHERE seq_recommended!=0 order by seq_recommended";
    pool.query(sql,[],(err,result)=>{
        res.send(result);
    })
});*/
router.get("/",(req,res)=>{
    var sql="SELECT * FROM `myMovie_slider_item` order by sid";
    pool.query(sql,[],(err,result)=>{
        res.send(result);
    });

})
module .exports=router;
//http://localhost:3000/index