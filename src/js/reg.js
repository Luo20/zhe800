/* 
* @Author: Marte
* @Date:   2019-06-10 17:15:12
* @Last Modified by:   Marte
* @Last Modified time: 2019-06-15 15:59:57
*/

(function(){
    $.fn.drag = function(options){
        var x, drag = this, isMove = false, defaults = {
        };
        var options = $.extend(defaults, options);
        //添加背景，文字，滑块
        var html = '<div class="drag_bg"></div>'+
                    '<div class="drag_text" onselectstart="return false;" unselectable="on">请按住滑块，拖动到最右边</div>'+
                    '<div class="handler handler_bg"></div>';
        this.append(html);
        
        var handler = drag.find('.handler');
        var drag_bg = drag.find('.drag_bg');
        var text = drag.find('.drag_text');
        var maxWidth = drag.width() - handler.width();  //能滑动的最大间距
        
        //鼠标按下时候的x轴的位置
        handler.mousedown(function(e){
            isMove = true;
            x = e.pageX - parseInt(handler.css('left'), 10);
        });
        
        //鼠标指针在上下文移动时，移动距离大于0小于最大间距，滑块x轴位置等于鼠标移动距离
        $(document).mousemove(function(e){
            var _x = e.pageX - x;
            if(isMove){
                if(_x > 0 && _x <= maxWidth){
                    handler.css({'left': _x});
                    drag_bg.css({'width': _x});
                }else if(_x > maxWidth){  //鼠标指针移动距离达到最大时清空事件
                    dragOk();
                }
            }
        }).mouseup(function(e){
            isMove = false;
            var _x = e.pageX - x;
            if(_x < maxWidth){ //鼠标松开时，如果没有达到最大距离位置，滑块就返回初始位置
                handler.css({'left': 0});
                drag_bg.css({'width': 0});
            }
        });
        
        //清空事件
        function dragOk(){
            handler.removeClass('handler_bg').addClass('handler_ok_bg');
            text.text('验证通过');
            drag.css({'color': '#fff'});
            handler.unbind('mousedown');
            $(document).unbind('mousemove');
            $(document).unbind('mouseup');
        }
    };


    var phone = getid('phone');
    var inf = getid('phone_info');
    var psw = getid('password');
    var btn = getid('reg_submit');

    var isok = false;
    phone.onblur = function() {
        ajax2({
            type : 'post',
            url : '../api/checkname.php',
            data : 'name=' + phone.value,
            success : function(str) {
                console.log(str);
                if(str == 'yes') {
                    inf.innerHTML = '可以注册';
                    css(inf,'color','#58bc58');
                    isok = true;
                }else{
                    inf.innerHTML = '用户名已存在';
                    css(inf,'color','red');
                    isok = false;
                }
            }
        })
    }

    btn.onclick = function() {
        if(isok) {
            ajax2({
               type : 'post',
               url : '../api/reg.php',
               data : 'name=' + phone.value + '&psw=' + psw.value,
               success : function(str) {
                    if(str == 'yes') {
                        location.href = 'login.html?' + phone.value;
                    }
               }
            });
        }
    }

})();