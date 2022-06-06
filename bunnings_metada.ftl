<div class="metadata_css"id='bunnings_metadata'></div>
<@liaAddScript>
;(function ($) {
    const url = window.location.href;
    const lastSegment = url.split("/").pop();
    var trim_data=lastSegment?.trim()
    var main_data=[];
    let final_data='';
    var query = "select c_bunnings_post from messages where id='"+trim_data+"'";
    $.ajax({
                url : "/api/2.0/search?q="+encodeURIComponent(query),
                type: 'get',
                "async": true,
                success : function(dataa){
                    var meta=dataa?.data?.items[0]?.c_bunnings_post;
                    if(meta){
                         var  meta_s_data=JSON.parse(meta);
                         <#--  meta_s_data.Steps = JSON.parse(meta_s_data.Steps)   -->
                        var arraydata=Object.entries(meta_s_data);
                        console.log(arraydata)
                        <#--  console.log( meta_s_data.Steps,' meta_s_data.Steps')  -->
                        for(var a=0;a<=arraydata.length-2;a++){
                            final_data +='<div class="lia-message-subject">'+arraydata[a]+'</div>';
                        }
                        main_data.push(arraydata[arraydata.length-1]);
                        console.log(main_data,'main_data');
                        var Obj=main_data[0][1];
                        console.log(Obj,'main_data[1][0]')
                        for (let value of Object.values(Obj)) {
                           final_data +='<div class="lia-message-subject">'+value+'</div>';
                        }
                        console.log(final_data,'final_data')
                        $('#bunnings_metadata').html(final_data);  
                        console.log(dataa,"success");
                    }else{
                        $("#bunnings_metadata").remove();
                    }
                   
                },
                error : function(data){               
                    console.log(data,"error block");
                    $("#bunnings_metadata").remove();
                }
            
            });
    <#--  ajax call end here  -->
})(LITHIUM.jQuery);
</@liaAddScript>
<style>
.metadata_css{
    border-radius: 4px;
    padding-right: 40px;
    padding-left: 40px;
    border-color: #d1d1d1;
    background-color: none;
    display: block;
    border-style: solid;
}
</style>