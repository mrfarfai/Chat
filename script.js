$(document).ready(function() {
    $(document).scrollTop($(document).height());
});

function SunMoon(argument) {
    body.classList.toggle("dark");

    if(body.classList.contains("dark")){
        modeText.innerText = "Light mode";
        localStorage.setItem("Background color", "Dark mode");
    }else{
        modeText.innerText = "Dark mode";
        localStorage.setItem("Background color", "Light mode");
    }
}
const body = document.querySelector('body'),
      sidebar = body.querySelector('nav'),
      toggle = body.querySelector(".toggle"),
      modeSwitch = body.querySelector(".toggle-switch"),
      modeText = body.querySelector(".mode-text"),
      SunMoonBtn = document.querySelector(".SunMoon");


toggle.addEventListener("click" , () =>{
    sidebar.classList.toggle("close");
})

modeSwitch.addEventListener("click" , SunMoon);
SunMoonBtn.addEventListener("click" , SunMoon);

window.onload = function() {
    let Background = localStorage.getItem("Background color");
    body.classList.remove("dark");

    if(Background == "Dark mode") {
        Background = "Light mode";
        document.querySelector(".mobile-sun-i").style.display = "block";
        document.querySelector(".mobile-moon-i").style.display = "none";
        body.classList.add("dark");
    }
    else  {
        Background = "Dark mode";
    }
    modeText.innerText = Background;
};

$('.send-msg').on('click', function(){
    $('.emoji').css("display", "none");

    var from = $('.from_user').val(),
        to = $('.to_user').val(),
        msg = $('.user_msg').val();
    if(msg.length) {
        var currentdate = new Date(); 
        var datetime = currentdate.getFullYear() + "-"
                        + (currentdate.getMonth()+1)  + "-" 
                        + currentdate.getDate() + " " 
                        + currentdate.getHours() + ":"  
                        + currentdate.getMinutes() + ":" 
                        + currentdate.getSeconds();
        $('.msg').append('<div class="my_msg">'+ msg +'</div><div class="my_msg_dt">'+ datetime +'</div>'); 
        $(document).scrollTop($(document).height());
        $.ajax({
            url: "send-msg.php",
            type: "POST",
            data: ({
                from: from, 
                to: to,
                msg: msg
            }),
            dataType: "html",
            beforeSend: function () {
                
            },

            success: function () {
                $('.user_msg').val("");
            }
        });
    }
    
});

setInterval(function() {
    var id = $('.from_user').val(),
        to = $('.to_user').val();
    $.ajax({
        url: "request.php",
        type: "POST",
        data: ({
            id: id
        }),
        dataType: "html",

        success: function (data) {
            data = JSON.parse(data);
            for (var i = 0; i < data[0].length; ++i) {
                if(data[0][i]["id"] == id) {
                    var my_color = data[0][i]['status_color'],
                        my_status = data[0][i]['status'];    
                }
                else {
                    var not_my_status = data[0][i]['status'],
                        not_my_color = data[0][i]['status_color'];
                }
            }
            
            $('.home2').css('background-color', my_color+"6b");
            $('.home').css('background-color', my_color+"6b");
            $('body').css('background-color', my_color+"6b");
            $('.user_' + id + ' small').text(my_status);
            $('.user_' + id + ' small').css("color", my_color);
            $('.user_' + to + ' small').text(not_my_status);
            $('.user_' + to + ' small').css("color", not_my_color);

            if(data[1].length) {
                for(var i = 0; i < data[1].length; ++i) {
                    if(data[1][i]["to_user"] == id) {
                        var msg = data[1][i]['msg'];
                        if(msg.substr(0, 2) == '{[') {
                            var img = data[1][i]['msg'].substr(2, 1);
                            var currentdate = new Date(); 
                            var datetime = currentdate.getFullYear() + "-"
                                            + (currentdate.getMonth()+1)  + "-" 
                                            + currentdate.getDate() + " " 
                                            + currentdate.getHours() + ":"  
                                            + currentdate.getMinutes() + ":" 
                                            + currentdate.getSeconds();
                            $('.msg').append('<img src="img/'+ img +'.png"><div class="not_my_msg_dt">'+ datetime +'</div>'); 
                        }
                        else{
                            $('.msg').append('<div class="not_my_msg">'+data[1][i]['msg']+'</div><div class="not_my_msg_dt">'+data[1][i]['send_dt']+'</div>');                        
                        }
                        
                        $(document).scrollTop($(document).height()); 
                    }
                }
                
            }
        }
    });
}, 1000);

$('.user_msg').on('input', function () {
    $('.emoji').empty();
    $.ajax({
        url: "check_text.php",
        type: "POST",
        data: ({
            text: $(this).val()
        }),
        dataType: "html",

        success: function (data) {
            if(data != "") {
                console.log(data);
                $('.emoji').css("display", "block");
                $('.emoji').append('<img src="img/'+ data +'.png" class="emoji_img" id="'+ data +'">');
                
                $('.emoji_img').on("click", function(){
                    var id = $(this).attr("id"),
                        from = $('.from_user').val(),
                        to = $('.to_user').val();
                    var currentdate = new Date(); 
                    
                    var datetime = currentdate.getFullYear() + "-"
                        + (currentdate.getMonth()+1)  + "-" 
                        + currentdate.getDate() + " " 
                        + currentdate.getHours() + ":"  
                        + currentdate.getMinutes() + ":" 
                        + currentdate.getSeconds();
                    $('.msg').append('<img src="img/'+ id +'.png" class="msg_img"><div class="my_msg_dt">'+ datetime +'</div>'); 
                    $('.user_msg').val('');
                    $('.emoji').css("display", "none");
                    $.ajax({
                        url: "send_emoji.php",
                        type: "POST",
                        data: ({
                            id: id,
                            from: from,
                            to: to
                        }),
                        dataType: "html",
                    });
                    $(document).scrollTop($(document).height());
                });
            }
            else  {
                $('.emoji').css("display", "none");
            }
        }
    });
});

