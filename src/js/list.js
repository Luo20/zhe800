/* 
* @Author: Marte
* @Date:   2019-06-14 20:36:11
* @Last Modified by:   Marte
* @Last Modified time: 2019-06-15 18:33:26
*/
    (function() {
        $('.toolbar').load('../html/mokuai/toolbar.html');
        $('.header').load('../html/mokuai/head.html');
        $('#nav').load('../html/mokuai/nav.html');
        $('.about').load('../html/mokuai/about.html');
        $('.for_bg_color').load('../html/mokuai/for_bg_color.html');
        $('.foot-con').load('../html/mokuai/foot-con.html');



        var list = getid('deal');
        var pagenum = getid('pages');
        var btn = getid('btn');
        var btns = getid('btn2');
        var nowpage = 0; //当前是第几页
        var order = '';
        var num = 12;
        var types = '';

        //初始化
        function init(ipage,order) {
            ajax2({
                type : 'get',
                url : '../api/orderby.php',
                data : 'page=' + ipage + '&num=' + num + '&order=' + order + '&type=' + types,
                success : function(str) {
                    create(str);
                }
            })
        }
        init(1,order);

        function create(str) {
            var arr = JSON.parse(str);
            console.log(arr);
            var res = arr.list.map(function(item) {
                return `
                        <div class="list-con" data-id="${item.id}">
                            <a href="XiangQing.html" id="btn2">
                                <img src="${item.imglist}" alt="" width="283" height="283" />
                                <img src="../img/bdg_img.png" alt="" width="283" />
                            </a>
                            <h3><a href="###">${item.title}</a></h3>
                            <h4><em><b>¥</b>${item.price}</em><del class="list_price">￥${item.del}</del>
                            <span>剩余2天</span>
                            </h4>
                        </div>
                `;
            }).join('');
            list.innerHTML = res;

            //页数的生成
            var pages = Math.ceil(arr.total / arr.num);
            var html = '';
            for (var i = 0; i < pages; i++) {
                html += '<a href="###">' + (i + 1) + '</a>';
            }
            pagenum.innerHTML = html;
            pagenum.children[arr.page - 1].className = 'current';
            nowpage = arr.page; //当前是第几页
            // console.log(nowpage);
        }

        pagenum.onclick = function(ev) {
            if (ev.target.tagName.toLowerCase() == 'a') {
                var page = ev.target.innerHTML;
                init(page,order);
            }
        }

        var isok = true;
        btn.onclick = function(ev) {
            if (ev.target.tagName.toLowerCase() == 'a') {
                types = 'price';

                if (isok) {
                    order = 'ASC';
                   ev.target.className = 'sort_nav';
                } else {
                    order = 'DESC';
                    ev.target.className = '';
                }
                isok = !isok;
                }
               init(1,order); 
        }

        for(var i = 0; i < btns.length; i++) {
            btns[i].index = i;
            btns[i].onclick = function() {
                console.log(111);
                var shuju = objToStr(arr[this.index]);
                window.open('XiangQing.html?' + shuju);
            }
        }

    })()
    

    