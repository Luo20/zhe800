/* 
* @Author: Marte
* @Date:   2019-06-12 17:26:17
* @Last Modified by:   Marte
* @Last Modified time: 2019-06-15 19:29:46
*/

$(function() {

    

    //1.把图片统一放在右侧
    var iw = $('.imglist li').eq(0).outerWidth();
    $('.imglist li').css('left' , iw);
    $('.imglist li').eq(0).css('left' , 0);

    //2.自动轮播
    var timer = null;
    var now = 0;//可视区图片的下标
    timer = setInterval(next,6000);//每隔两秒切换一张图片
    
    function next() {
        //旧图挪走，新图进入
        $('.imglist li').eq(now).animate({'opacity' : 0},1000,'linear');
        now++;
        if(now >= $('.imglist li').size()) {
            now = 0;
        }
        //新图
        $('.imglist li').eq(now).css('left',iw);
        $('.imglist li').eq(now).animate({'left' : 0,'opacity' : 1},1000,'linear');
        light();
    }

    var html = '';
    $('.imglist li').each(function(i,item) {
        html += '<span></span>';
    });
    $('.light').html(html);
    $('.light').children().eq(0).addClass('active');

    //焦点跟随
    function light() {
        $('.light').children().eq(now).addClass('active').siblings().removeClass('active');
    }

    //点击焦点切换到对应图片
    $('.light').on('mouseenter','span',function() {
        var index = $(this).index();
        if(index > now) {
            //新图从右边进来
            $('.imglist li').eq(now).animate({'left' : -iw,'opacity' : 0},1000,'linear');
            $('.imglist li').eq(index).css('left',iw);
            $('.imglist li').eq(index).animate({'left' : 0,'opacity' : 1},1000,'linear');
        }
        
        if(index < now) {
            //新图从左边进来
            $('.imglist li').eq(now).animate({'left' : iw,'opacity' : 0},1000,'linear');
            $('.imglist li').eq(index).css('left',-iw);
            $('.imglist li').eq(index).animate({'left' : 0,'opacity' : 1},1000,'linear');         
        }
        now = index;
        light();
    });

    //数据渲染
    var list = getid('list');
    var pagebtn = getid('pages');
    var num = 20;
    function init(ipage) {
        
        ajax2({
            type : 'get',
            url : 'api/mainlist.php',
            data : 'page=' + ipage + '&num=' + num,
            success : function(str) {
                // console.log(str);
                var arr = JSON.parse(str);
                 // console.log(arr);
                 var res = arr.indexlist.map(function(item) {
                    return `
                            <div class="deal" data-id="${item.gid}">
                            <div class="com">
                                <a href="###"><img src="${item.imgurl}" alt="" /></a>
                                <div class="title-time">
                                    <a href="###" class="title-url">${item.title}</a>
                                    <span class="remain-time">剩余${item.time}天</span>
                                </div>
                                <div class="coupon-collect">
                                    <span class="coupon">${item.zhekou}</span>
                                    <span class="brand_fav">收藏品牌</span>
                                </div>
                            </div>
                        </div>
                    `;
                }).join('');
                list.innerHTML = res;

                //页数的生成：
                var pages = Math.ceil(arr.total / arr.num);
                // console.log(pages);
                var html = '';
                for(var i = 0; i < pages; i++) {
                    html += '<a href="javascript:;">'+(i+1)+'</a>';
                }
                pagebtn.innerHTML = html;
                pagebtn.children[arr.page-1].className = 'current';
            }

        });
    }
    init(1);

    pagebtn.onclick = function(ev) {
        if(ev.target.tagName.toLowerCase() == 'a') {
            var page = ev.target.innerHTML;
            init(page);
        }
    }

    list.onclick = function(ev) {
        window.open('html/list.html');  
    }


    //吸顶导航栏
    var navbox = getid('junav1');
    var gotop = getid('goTop');
    //滚动滑轮
    window.onscroll = function() {
        var scrollTop = window.scrollY; //获取滚动距离Y

        if (scrollTop >= 800) {
            navbox.style.display = 'block';
        } else {
            navbox.style.display = 'none';
        }

        if(scrollTop >= 1000) {
            gotop.style.display = 'block';
        }else{
             gotop.style.display = 'none';
        }
    }

    //返回顶部
    gotop.onclick = function() {
        var speed = 140;
        var scrollTop = window.scrollY; //目前的滚动距离
        var timer = setInterval(function() {
            scrollTop -= speed;
            if(scrollTop <= 0) {
                clearInterval(timer);
                window.scrollTo(0, 0);
            } else {
                window.scrollTo(0, scrollTop);
            }

        }, 30);
    }



});


