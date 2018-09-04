$(function(){
    //ajax("http://localhost:3000/index")
    $.ajax({
        url:"http://localhost:3000/index",
        type:"get",
        dataType:"json"//
    })
    .then(slider=>{
        //var products=JSON.parse(res);
        /*slider*/
        var html="";
        for(var {pic,href,fname,fdate,cinema} of slider){
            html+=`<li>
                    <div>
                        <a href="${href}">
                            <img src="${pic}">
                            <p class="fname">${fname}</p>
                        </a>
                        <a href="#" class="bottom">
                            <p class="fdate">${fdate}</p>
                            <p class="fcinima">${cinema}</p>
                        </a>
                    </div>
                </li>`;}
        document.querySelector("div.slider>ul").innerHTML=html;
            document.querySelector("div.slider>ul").innerHTML=html;
        //navbar导航栏
        var $parent= $("div.navbar").children(":nth-child(2)");
        $parent.on("mouseover","li",function(e){
            e.preventDefault();
            $(this).addClass("active")
                   .siblings().removeClass("active");
        });
        /*carousel*/
            var $img=$("div.item>img");
            $("ul.indicator>li").mouseover(function () {
                var $btn=$(this);
                var src=$btn.attr("data-target")
                $img.attr("src",src);
                $btn.addClass("active")
                    .siblings()
                    .removeClass("active");
            })
            //function carousel(){
            //    var html="";
            //    var n=0;
            //    if(n>=0)
            //      n++;
            //    else(n==4)
            //      n=0;
            //    html=`<img src="img/pic${n}.jpg"/>`;
            //    document.querySelector("div.item");
            //}
            //var timer=setInterval(carousel,3000);
            //var $img=$("div.item>img");
            //$("ul.indicator>li").mouseover(function () {
            //    var $btn=$(this);
            //    var src=$btn.attr("data-target")
            //    $img.attr("src",src);
            //    $btn.addClass("active")
            //        .siblings()
            //        .removeClass("active");
            //});
    })
})
