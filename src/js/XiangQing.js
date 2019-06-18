/* 
* @Author: Marte
* @Date:   2019-06-15 09:23:43
* @Last Modified by:   Marte
* @Last Modified time: 2019-06-15 12:01:15
*/

(function(){
    
    $('.toolbar').load('../html/mokuai/toolbar.html');
    $('.header').load('../html/mokuai/head.html');
    $('#nav').load('../html/mokuai/nav.html');
    $('.about').load('../html/mokuai/about.html');
    $('.for_bg_color').load('../html/mokuai/for_bg_color.html');
    $('.foot-con').load('../html/mokuai/foot-con.html');

    var smail = document.querySelector('.smail');
    // 小图片框节点
    var smailBox = document.querySelector(".smail_box");
    // 小图节点
    var smailImg = smailBox.children[0];
    // 大图片框节点
    var bigBox = document.querySelector('.big');
    //    大图片节点
    var bigImg = bigBox.children[0];
    // 小黄标
    var make = document.querySelector('.make');
    // 图片列表 
    var list = document.querySelector('.list');
    // 图片列表ul
    var ulNode = list.children[0];
    var lis = document.querySelector('li');

    smailBox.addEventListener('mousemove', xian);

    smailBox.addEventListener('mouseout', cang);

    smail.addEventListener('mouseover', bian);


        // 现方法
        function xian(e) {
            // 显示大图框
            bigBox.style.display = 'block';
            // 显示小黄标
            make.style.display = 'block';
            let x = e.clientX - smail.offsetLeft - make.offsetWidth / 2;
            let y = e.clientY - smail.offsetTop - make.offsetHeight / 2;
            x <= 0 ? x = 0 : x;
            x >= smailBox.offsetWidth - make.offsetWidth ? x = smailBox.offsetWidth - make.offsetWidth : x;
            y <= 0 ? y = 0 : y;
            y >= smailBox.offsetHeight - make.offsetHeight ? y = smailBox.offsetHeight - make.offsetHeight : y;
            // 小黄标移动
            make.style.left = x + 'px';
            make.style.top = y + 'px';
            // 大图移动
            let bigX = x * (bigImg.offsetWidth - bigBox.offsetWidth) / (smail.offsetWidth - make.offsetWidth);
            let bigY = y * (bigImg.offsetWidth - bigBox.offsetWidth) / (smail.offsetWidth - make.offsetWidth);
            bigImg.style.marginLeft = -bigX + "px";
            bigImg.style.marginTop = -bigY + "px";
        }

        // 藏方法
        function cang(e) {
            bigBox.style.display = 'none';
            make.style.display = 'none';
        }

         function bian(e) {
            // ul可移动最大距离
            var juLi = parseInt(window.getComputedStyle(list).width) - parseInt(window.getComputedStyle(ulNode)
                .width);

            if (e.target.tagName === "IMG") {
                smailImg.src = e.target.src;
                bigImg.src = e.target.src;
            }
         }

})()