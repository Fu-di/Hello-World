//使用express构建web服务器
const  express=require("express");
const bodyParser=require("body-parser");
/*引用路由模块*/
var index=require("./routes/index");

var app=express();
var server=app.listen(3000);
/*使用body-parser中间件*/
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static("public"));
//路由
app.use("/index",index);