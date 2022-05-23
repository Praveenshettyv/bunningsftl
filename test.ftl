<style>
#session_popup{
  position: absolute;
  left:25%;
  top:10%;
  width :25%;
  padding: 20px; 
  border: 1px solid red;
  box-shadow: 0px 0px 10px green;
  background-color :rgb(230, 255, 230);
  }
#close-btn{
  float: right;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<#attempt>
<#assign userInfoCookie = http.request.cookies.name.get("LithiumUserInfo_italent", "") />
    <#if !userInfoCookie?has_content>
        <@liaAddScript>
        ;(function($) {
          $("#close-btn").click(function(){
            $("#session_popup").remove();
            document.cookie='LithiumUserInfo_italent';
          });
})(LITHIUM.jQuery);
</@liaAddScript>
    <#else>
       <div id="session_popup">this is pop up notification you want any informaation read it here else close it <p id="close-btn">[X]</p></div>
    </#if>
</#list>
<#recover>
  <#-- ${error} -->
</#attempt>
<@liaAddScript>
;(function($) {
          $("#close-btn").click(function(){
            $("#session_popup").remove();
            document.cookie='LithiumUserInfo_italent';
          });
})(LITHIUM.jQuery);
</@liaAddScript>

















<#-- session storage -->

<#--  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<div id="session_popup">this is pop up notification you want any informaation read it here else close it <p id="close-btn">[X]</p></div>
<@liaAddScript>
;(function($) {

          $("#close-btn").click(function(){
            $("#session_popup").remove();
             if(!sessionStorage.getItem('display')){
               sessionStorage.setItem('display', true)
             }
          });
          if(sessionStorage.getItem('display')){
            $("#session_popup").hide();
           }
})(LITHIUM.jQuery);
</@liaAddScript>  -->

<#--  cookie storage  -->
<#--  <body>
    <div>
      <div id="session_popup"  onload="myFunction()">this is pop up notification you want any informaation read it here else close it <p id="close-btn">[X]</p></div>
    </div>
    <script>
    $(document).ready(function() {    
      var a=decodeURIComponent(document.cookie);
        let ca = a.split(';');
        for(let i = 0; i < ca.length; i++) {
          var data=' session_popup_true';
          if(ca[i]===data){
              $("#session_popup").remove();
              console.log("it is working");
          }
        } 
    });  
    $("#close-btn").click(function(){
      document.cookie='session_popup_true';
      $("#session_popup").remove();
    });  
    </script>
</body>  -->