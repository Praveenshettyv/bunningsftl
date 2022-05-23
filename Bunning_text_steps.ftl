<style>
  .container3 {
      width:100%;
  }
  .container{
      width:100%;
  }
  .title{

  }
  .under_title{
      margin: 1px;
  }
  .addStep1{
      border: 1px solid #b7b7a4;
      border-radius: 5px;
      width: 400px;
      height: 250px;
      display: flex;
      justify-content: center;
      align-items: center;
  }
  .addStep{
      border: 1px solid #b7b7a4;
      border-radius: 5px;
      width: 400px;
      height: 250px;
      display: flex;
      justify-content: center;
      align-items: center;
      background: silver
  }
  .innerAddStep{
      display: flex;
      flex-wrap: wrap;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      cursor: pointer;
  }
  .plusBtn{
      font-weight: normal;
      font-size: 6rem;
  }
  .addStepTxt{
     margin-top: -10px;
  }
  .button_label{
     text-align: center;
    height: 30px;
    width: 120px;
     background-color:green;
     color:white;
     cursor: pointer;
     text-align: center;
    margin-bottom: 20px;
  }
     .mainClass{
         display: flex;
       }
</style>
<div>
    <h2 class='title'>Steps</h2>
    <p class='under_title'>List the steps you took to get to the final product. This will help everyone follow along as they try it themseleves.</p>
</div>
<div class="mainClass">
    <div class='container' id="main_div">
        <div>
            <@component id="Bunnings.texteditor2"  placeholderText="Hint :Describe what you did,be as detailed as possible"/></div>
        </div>
    </div>
    <div class='container3'>
        <div>
            <div class='addStep'><div class='innerAddStep'><div class='plusBtn'>+</div><div class='addStepTxt'>Click to Add Another step</div></div></div>
        </div>
    </div>
</div>
<@liaAddScript>
;(function ($)
{
$('.plusBtn').click(function(){
 var value_bunn=document.querySelectorAll('.container');
 if(value_bunn.length < 5){
     const node = document.getElementById("main_div");
     const clone = node.cloneNode(true);
     $('.mainClass').prepend(clone);
     console.log('node',node);
     console.log('clone',clone);
 }
});
})(LITHIUM.jQuery);
</@liaAddScript>