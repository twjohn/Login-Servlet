//$.ajax({type: "GET", url: "/ajaxSessionServlet", success: function(result){
//            $(document).ready(function(){
//                $("#dispUser").html("welcome <b>"+result+"</b>");
//            })
//}
//});

$(document).ready(function(){
    $("#confirm").click(function(){
        if(confirm("You are about to logout!")){
            window.location.replace("/logoutServlet");
        }
    });
});



