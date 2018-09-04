$(function(){
    //ajax("http://localhost:3000/header.html")
    $.ajax({
        url:"http://localhost:3000/header.html",
        type:"get"
    })
    .then(res=>{
        document.getElementById("header").innerHTML=res;
        //下拉菜单：区域选择
        $("div.dropdown").on("click","a",function(){
           $(this).next().fadeToggle();
        });
        $("div.login").on("mouseenter","span",function(){
            $(this).next().fadeToggle();
        })

    });
})

