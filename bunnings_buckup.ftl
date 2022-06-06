<div class="header_title"></div>
</div>
<style>
    .container1{
        width: 100%;
        margin: 5px;
    }
    .label{
        margin-bottom: 5px;
        font-size: 16px;
    }
    .titleInput, .selectBox{
        width:100%;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 10px;
        outline: none;
        border: 2px solid #b7b7a4;
        border-radius: 5px;
        color: #b7b7a4;
    }
    .container2{
        width:100%;
    }
    .label{
        margin-y: 5px;
    }
    .uploadBtn{
        display: none;
    }
    .btn{
        padding: 10px;
        background-color: #b7b7a4;
        font-weight: bold;
        cursor: pointer;
    }
    .hintText{
        color: #b7b7a4;
    }
    .container3{
        width:100%;
        margin-bottom: 5px;
    }
    .title{

    }
    .under_title{
        margin: 1px;
    }
    .addStep{
        display: flex;
        border: 1px solid #b7b7a4;
        border-radius: 5px;
        min-width: 400px;
        width: 50%;
        height: 200px;
        justify-content: center;
        align-items: center;
        background-color: #b7b7a4;
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
        height: 30px;
        width: 120px;
        background-color:rgb(179, 204, 204);
        color:block;
        cursor: pointer;
        border-radius: 250%;
        text-align: center;
        font-size:10px;
        margin-bottom: 20px;
    }
    .active{
        background-color: rgb(35, 216, 92); /* Green */
        color: rgb(241, 247, 241);
    }
    .button_bunn_cls button{
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        padding: 15px 32px;
        border: none;
        border: 1px solid block;
    }
    .categorypage_div_class{
        margin-bottom: 100px;
    }
    .inner_categorypage_div_class{
        display: flex;
        justify-content: space-between;
    }
    .inner_box{
        width: 100%;
        margin: 5px;
    }
    .addStep_new{
        display: inline-block;
        height: 30px;
        width: 427px;
        border-radius: 250%;
    }
    #new_comp{
        margin: 5px;
        width: 48%;
    }
    .inner_categorypage_add_step_box{
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .editors_box{
        width: 100%;
        display: flex;
        flex-wrap: wrap;
    }
    .editor{
        margin: 5px;
        width: 49%;
        position: relative;
    }
    .editor_comp{
        outline: none;
        resize: vertical;
        overflow: auto;
    }
    .popup{
        min-width: 300px;
        min-height: auto;
        max-width:80%;
        max-height: 80%;
        margin: auto;
        padding: 10px;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        border: 2px solid #eee;
        border-radius: 10px;
        position: fixed;
        left:40%;
        top:40%;
        box-shadow: 0px 0px 10px green;
        background-color :rgb(230, 255, 230);
        z-index: 1000;
    }
    .row{
        width: 100%;
        margin: 0px 5px;
        display: flex;
        justify-content: space-between;
    }
    .key{
        font-weight: 700;
        font-size: 1.2rem;
    }
    .vlaue{
        margin-left:2px;
    }
    .buttons{
        width: 100%;
        margin-right: 10px;
        display: flex;
        justify-content: flex-end;
    }
    .popup_btn,.popup_btn_project{
        color: white;
        font-weight: bold;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        margin: 5px;
        cursor: pointer;
    }
    .success{
        background-color: green;
    }
    .cancel{
        background-color: crimson;
    }

    #session_popup{
    
    }
    #close-btn{
    float: right;
    }
    .mystyle{
        display: none;
    }
    .ql-toolbar.ql-snow + .ql-container.ql-snow {
        border-top: 0px;
        height: 150px;
        resize: vertical;
        overflow: auto;
    }
    .img_View_id{
        margin: 10px;
        width: 200px;
        height: 200px;
        position: relative;
        display: none;
    }
    .img_ask_class, .img_share_class{
        width: 100%;
        height: 100%;
    }
    .remove_editor{
        border-radius: 50%;
        background-color: rgb(82,82,82);
        border: none;
        color: white;
        cursor: pointer;
        padding: 5px 10px;
        position: absolute;
        top: -10px;
        right: -10px;
    }

    .loadingTxt{
        margin: 5px; 
        font-size: 1.2rem;
        font-weight: 600;
    }
    .d_none{
        display: none;
    }
    .d_block{
        display: block;
    }
    .label_active{
        background-color: green;
        height: 30px;
        width: 120px;
        color:block;
        cursor: pointer;
        border-radius: 250%;
        text-align: center;
        font-size:10px;
        margin-bottom: 20px;
    }
    .bunning_btn{
        background-color: #00001a;
        border: none;
        color: white;
        padding: 10px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        margin: 4px 2px;
        cursor: pointer;
        font-size: 16px
    }
</style>
<script src="https://unpkg.com/vue@3"></script>
<link href="${asset.get('/html/assets/quilt.css')}" rel="stylesheet">

    <#assign Res_board=  rest("2.0","/search?q=" + "select title,id from boards"?url).data  />
    <div class="button_bunn_cls">
        <button class="bunnings_button_askme active">Ask a home improvement Question</button>
        <button class="bunnings_button_share">Share a completed project</button>
    </div>

    <#-- Share a project start here   -->
    <div class="askaquestion_bunn">
        <div class='container1'>
            <div class="box">
                <span class='label' id='bunning_project_label1'>Enter a title for your DIY project</span>
                <input type='text' placeholder='Hint :Try starting with "How to..."' name='titleInput' id='bunning_project_val1' class='titleInput'>
            </div>
            <div class="box">
                <span class='label' id="bunning_project_board_label">Choose a location for your post</span><br />
                <select name='selectBox' id='bunning_project_board_val' class='selectBox'>
                    <#list Res_board.items as board>
                        <option class='optionValue' value="${board.id}">${board.title}</option>
                    </#list>
                </select>
            </div>
        </div><br>
        <div class='container2'>
            <h2 class='title'>Project Overview </h2>
            <div class="box">
            <p class='label'>Add a photo of your <b>completed</b> DIY Project:</p>
                <div>
                    <label for="image.content" class="btn" id='share_upload_img'>Upload Image</label>
                    <input type='file' name='image.content' class='uploadBtn' style='display:none' id='image.content' value='Upload Image' accept="image/png, image/jpeg"/>
                    <span class='hintText'>Hint: This will be the main feature photo everyone sees first, make it your best one!</span>
                </div>
                <span class='loadingTxt d_none' id='loadingTxt'>Uploading Image Wait ...</span>
                 <div id='img_View_share' class="img_View_id">
                    <button id="img_remove_btn_share" class="remove_editor">X</button>
                    <img src="" alt="cover image" id="img_share_id" class="img_share_class" >
                </div>
            </div>
            <div class="categorypage_div_class" id="myList2">
            <div><b>Brifly describe</b> the project in 75-100 words or less</div>
            <#--  editor start here  -->
                               <#-- Include stylesheet -->
                    <link href="${asset.get('/html/assets/quilt.css')}" rel="stylesheet">

                    <#-- Create the editor container -->
                    <div id="editor_one">
                    </div>

                    <#-- Include the Quill library -->
                    <script src="${asset.get('/html/assets/quilt.js')}"></script>
                    <!-- Initialize Quill editor -->
                    <script>
                    var quill = new Quill('#editor_one', {
                        modules: {
                            toolbar: [
                                [{ header: [1, 2, false] }],
                                ['bold', 'italic', 'underline', 'link', 'image', 'video']
                            ]
                        },
                        placeholder: 'Hint: You could explain what the project is,the difficulty level,the purpose of the completed project ,any special tips you learned along the way,etc',
                        theme: 'snow'
                    });
                    </script>
            <#--  editor ends here  -->
                <div class="inner_categorypage_div_class">
                    <div class="inner_box">
                        <span class='label'>List the <b>Tools</b> You used:</span>
                        <#--  editor start here  -->
                        <#-- Include stylesheet -->
                            <link href="${asset.get('/html/assets/quilt.css')}" rel="stylesheet">
                            <#-- Create the editor container -->
                            <div id="editor_two">
                            </div>
                            <#-- Include the Quill library -->
                            <script src="${asset.get('/html/assets/quilt.js')}"></script>

                            <!-- Initialize Quill editor -->
                            <script>
                            var quill = new Quill('#editor_two', {
                                modules: {
                                toolbar: [
                                [{ header: [1, 2, false] }],
                                ['bold', 'italic', 'underline', 'link', 'image', 'video']
                                ]
                                },
                                placeholder: 'Hint: Use bullet point for an easy to read list',
                                theme: 'snow'
                            });
                            </script>
                        <#--  editor ends here  -->
                    </div>
                    <div class="inner_box">
                        <span class='label'>List the <b>Materials</b> You used:</span>
                         <#--  editor start here  -->
                                            <#-- Include stylesheet -->
                    <link href="${asset.get('/html/assets/quilt.css')}" rel="stylesheet">

                    <#-- Create the editor container -->
                    <div id="editor_three">
                    </div>

                    <#-- Include the Quill library -->
                    <script src="${asset.get('/html/assets/quilt.js')}"></script>

                    <!-- Initialize Quill editor -->
                    <script>
                    var quill = new Quill('#editor_three', {
                        modules: {
                        toolbar: [
                        [{ header: [1, 2, false] }],
                        ['bold', 'italic', 'underline', 'link', 'image', 'video']
                        ]
                        },
                        placeholder: 'Hint: Use bullet point for an easy to read list',
                        theme: 'snow'
                    });
                    </script>
                        <#--  editor ends here  -->
                    </div>
                </div>
            </div>
        </div>
        <div class='container3'>
            <h2 class='title'>Steps</h2>
            <p class='under_title'>List the steps you took to get to the final product. This will help everyone follow along as they try it themseleves.</p>
            <div class="inner_categorypage_add_step_box" id='inner_categorypage_add_step_box'>
            <#--  text editor  start here   -->

            <div id="app" class='editors_box' >
                <div v-for="id in count" class="editor">
                    <button v-bind:id="'remove' + id" v-on:click="e => removeEditor(e)" class="remove_editor">X</button>
                    <div v-bind:id="'editor' + id" class='editor_comp' contenteditable @input="onInput"></div>
                </div>
            <div class='addStep' id='addStep'><div class='innerAddStep'><div v-on:click="addEditor()" class='plusBtn'>+</div><div class='addStepTxt'>Click to Add Another step</div></div></div>
            </div>
            <#--   text editor  ends here -->
            </div>
        </div>
        <#assign labelsResponse= rest("/labels/")   />
        <#list labelsResponse.labels.label as li> 
            <button class="button_label" value="${li.text}" id="button_project_label">${li.text}</button>
        </#list>
        <div class="popup" id="popup_project" style="display:none;">
            <div id="inner_popup_project">
                
            </div>
                <div class='buttons'><button class='popup_btn_project success'>Okay</button><button class='popup_btn_project cancel'>Cancel</button></div>
            </div>
        <div>
            <div class="bunning_btn"  id="Post_data_project">Post</div>
            <button  class="bunning_btn"  id="previewss">Preview</button>
            <button class="bunning_btn" id="save_draft_p">Save Draft</button>
            <button class="bunning_btn" id="Cancel">Cancel</button>
        </div>
    </div>

    <script src="${asset.get('/html/assets/quilt.js')}"></script>
        <#-- Initialize Quill editor -->
        <script>
            var editorss ={};
            const { createApp } = Vue;
            const vueData = createApp({
                data() {
                return {
                    count: 1,
                    editors: {},
                };
                },
                methods: {
                    addEditor() {
                        console.log('cll')
                        this.count = this.count + 1;
                    },
                    removeEditor(e) {
                        console.log(e, 'target')
                        e.path[1]?.remove()

                        /** Re render and change class in addStep div on click of removeBtn  */
                        let count_vue=document.querySelectorAll(".editor").length;
                        console.log('count data is using vue js ',count_vue)
                        if (count_vue < 10) {
                        document.getElementById("addStep").classList.add('d_block');
                        } else {
                        document.getElementById("addStep").classList.remove('d_none');
                        }
                    },
                    addQuil() {
                        new Quill('#editor' + this.count, {
                        modules: {
                            toolbar: [
                                [{ header: [1, 2, false] }],
                                ["bold", "italic", "underline", "link", "image", "video"]
                            ],
                        },
                        placeholder: "Hint :Describe what you did,be as detailed as possible",
                        theme: "snow",
                        });
                    },
                    onInput(e){
                    data=this.editors[e.target.id] = e.target?.children[0]?.innerHTML;
                    },
                    submitForm() {
                        console.log(this.editors, "editor data")
                    }
                },
                mounted(){
                    this?.addQuil();
                },
                updated(){
                    this?.addQuil();
    
                    /** button event add a steps of text editor */
                    document.querySelector('.plusBtn').addEventListener('click', function(){
                        var value_bunn=document.querySelectorAll('.editor');
                        if(value_bunn.length > 9){
                            document.querySelector('.addStep').classList.add('d_none');
                             if(document.querySelector('.addStep').classList.contains('d_block')){
                                document.querySelector('.addStep').classList.remove('d_block');
                            }
                        }
                    })
                },
            }).mount("#app");
            </script>

    <@liaAddScript>
    ;(function ($) {
                   
        let labels_project_Arr = [];
        var image_data;
        var image_id;

        $(".askaquestion_bunn").hide();
        $(".AskaQuestion_class").show();
        
        var element = document.getElementById("remove1");
        element.classList.add("mystyle");
        $('.header_title').append("<h1>Ask a home improvement question<h1>");
   
        <#--  On button click close image viewer  -->
        $('#img_remove_btn_share').on('click', function(){
            if($( "#img_View_share" ).hasClass('d_block')){
                document.getElementById("share_upload_img").innerHTML = "Upload Image";
                $('#img_View_share').removeClass('d_block');
            }
        });

        <#--  main button functional events Ask a home improvement question && Share a home improvement project -->
        $('.bunnings_button_share').click(function(){
            $('.askaquestion_bunn').show();
            $(".AskaQuestion_class").hide();
            $( "h1" ).remove();
            $('.header_title').append("<h1>Share a home improvement project<h1>");
            $('.bunnings_button_askme').removeClass('active');
            $('.bunnings_button_share').addClass('active');
        });
        $('.bunnings_button_askme').click(function(){
            $(".askaquestion_bunn").hide();
            $( "h1" ).remove();
            $('.header_title').append("<h1>Ask a home improvement question<h1>");
            $(".AskaQuestion_class").show();
            $('.bunnings_button_share').removeClass('active');
            $('.bunnings_button_askme').addClass('active');
        });

        <#--  selected label function event  -->
        $(".button_label").on("click", function($event){
            var label_project=$event.target.getAttribute("value");
             $event.target.setAttribute("class", "label_active");
             var Array_labels=label_project.split("_");
            var i=0;
                var data_lables_project={
                        "id":Array_labels[i+1],
                        "text":Array_labels[i]
                }
            labels_project_Arr.push(data_lables_project);
        });

        <#--  JSON Obj Genration for Share a completed project  -->
        $("#previewss").click(function(){
            let bunning_label1 = $("#bunning_project_label1").text();
            let bunning_input1 = $("#bunning_project_val1").val();
            let bunning_board_label = $("#bunning_project_board_label").text();
            let bunning_board_val = $("#bunning_project_board_val").val();
            let fileUp_loadproject = $("#image.content").val();
            <#--  let fileUp_loadproject = ""  -->
            let textEditor_pro = $("#sample_editor2").text();
            FinalData_project = `<div>
                <div class='row'>
                    <span class='key'>` + [bunning_label1] + `:</span><span class='value'>` + bunning_input1 + `</span>
                </div>
                <div class="row">
                    <span class='key'>` + [bunning_board_label] + `:</span><span class='value'>` + bunning_board_val + `</span>
                </div>
                <div class="row">
                    <span class='key'>textdata</span><span class='value'>` + textEditor_pro + `</span>
                </div>
                <div class="row">
                    <span class='key'>File:</span><span class='value'>` + fileUp_loadproject + `</span>
                </div>
                <div class="row">
                    <span class='key'>Labels:</span><span class='value'>` + labels_project_Arr?.toString() + `</span>
                </div>
                </div>`;
             <#--  Preview button popup function  -->
                    $("#popup_project").show();
                    $("#inner_popup_project").html(FinalData_project)
                    $(".popup_btn_project").click(function(){
                        $("#popup_project").hide();
                    })
        })
        <#-- JSON Obj Genration  done   -->

        <#--  post call using fetch   -->
        $("#Post_data_project").click(function(){
            console.log(vueData.$data.editors, 'test editors')
            var steps_text_data = vueData.$data.editors;
            let bunning_label1 = $("#bunning_project_label1").text();
            let bunning_input1 = $("#bunning_project_val1").val();
            let bunning_board_label = $("#bunning_project_board_label").text();
            let bunning_board_val = $("#bunning_project_board_val").val();
            let fileUp_loadproject = $("#image.content").val();
            <#--  let fileUp_loadproject = "";  -->
            let textEditor_pro_one = $("#editor_one > .ql-editor").html();
            let textEditor_pro_two = $("#editor_two > .ql-editor").html();
            let textEditor_pro_three = $("#editor_three > .ql-editor").html();

            fetch("/api/2.0/messages", {
                
                headers: {
                    Accept: "application/json",
                    "Content-Type": "application/json",
                 },
                method: "POST",
                body: JSON.stringify({"data":
                    {
                        "type":"message",
                        "subject":bunning_input1,
                        "body":textEditor_pro_one,
                        "board":{
                            "id":bunning_board_val
                        },
                        cover_image:{
                            type: "image",
                            id:fileUp_loadproject
                        },
                        "labels": {
                            "items":labels_project_Arr
                        },
                        c_bunnings_post: JSON.stringify({
                            "description" : textEditor_pro_one,
                            "Tools" : textEditor_pro_two,
                            "Materials" : textEditor_pro_three,
                            "Steps" :  steps_text_data 
                        })
                    }
                })
            }).then((response) => response)
             .then((json) => {
                <#--  window.location.reload();  -->
                <#--  location.href = 'https://italent2.demo.lithium.com/t5/'+bunning_board_label+'/bd-p/'+bunning_board_val;  -->
                console.log(json, 'json')
            })
            .catch(err => console.error(err));

        });


        <#--  image post call  -->
        document.getElementById("image.content").addEventListener("change", (e) => {
            let file = e.target.files[0];
            if (!file) {
                return null;
            }
             $('#loadingTxt')?.addClass('d_block');
            return new Promise((resolve, reject) => {
                console.log("file upload", file);
                const data = new FormData();

                data.append(
                "api.request",
                JSON.stringify({
                    request: {
                    data: {
                        type: "image",
                        title: "message cover image",
                        field: "image.content",
                        description: "",
                        tags: { items: [] },
                    },
                    },
                })
                );
                data.append("image.content", file);
                data.append("payload", "");

                fetch('/api/2.0/images', {
                    method: 'POST',
                    body: data,
                    processData: false,
                    contentType: false,
                }).then(res => res.json()).then(val => {
                    image_data=val.data.original_href;
                    image_id = val.data.id;
                    <#--  after upload image block condtion  -->
                      if(image_data){
                        $('#img_View_share').addClass('d_block');
                        $('#img_share_id').attr('src',image_data);
                    }
                    $('#loadingTxt')?.removeClass('d_block');
                    document.getElementById("share_upload_img").innerHTML = "Replace Image";
                }).catch(e => {
                     $('#loadingTxt')?.removeClass('d_block');
                    console.log("err", e)
                })
            });
        });
    })(LITHIUM.jQuery);
    </@liaAddScript>
    <#-- Share a project ends here   -->

    <#--  Ask a Question start here  -->
    <div class="AskaQuestion_class">
        <div class='container1'>
            <div class="box">
                <span class='label' id="titleInputLabel2_ask">Enter a title for your post</span>
                <input type='text' placeholder='Hint:When asking a question,try starting with How...' name='titleInput_ask' id='titleInput2_ask' class='titleInput'>
            </div>
            <div class="box">
                <span class='label' id="selectBoxLabel2_ask">Choose a location for your post</span><br />
                <select name='selectBox_ask'id='selectBox2_ask' class='selectBox'>
                <#list Res_board.items as board>
                    <option class='optionValue' value='${board.id}'>${board.title}</option>
                </#list>
                </select>
            </div>
            <div>
                <div class='label' id="textEditorTitle_ask">Write your post and add photos</div>
                <#--  <@component id="Bunnings.texteditor" placeholderText="Hint:Add as much details as possible nd add your best photo first"/>  -->
                <#--  test editor component   -->
                    <#-- Include stylesheet -->
                    <link href="${asset.get('/html/assets/quilt.css')}" rel="stylesheet">

                    <#-- Create the editor container -->
                    <div id="editor_one_ask">
                    </div>

                    <#-- Include the Quill library -->
                    <script src="${asset.get('/html/assets/quilt.js')}"></script>

                    <!-- Initialize Quill editor -->
                    <script>
                    var quill = new Quill('#editor_one_ask', {
                        modules: {
                            toolbar: [
                                [{ header: [1, 2, false] }],
                                ['bold', 'italic', 'underline', 'link', 'image', 'video']
                            ]
                        },
                        placeholder: 'Hint:Add as much details as possible nd add your best photo first',
                        theme: 'snow'
                    });
                    </script>
                <#-- test editor component end here  -->
            </div>
            <div>
            <label for="image.contentss"  class="btn" id="image_ask_btn">Upload Image</label>
                <input type='file' name='image.contentss' class='uploadBtn' style='display:none' id='image.contentss' value='Upload Image'  accept="image/png, image/jpeg"/>
                <span class='loadingTxt d_none' id='loadingTxtss'>Uploading Image Wait ...</span>
               <div id='img_View_id' class="img_View_id">
                    <button id="img_remove_btn" class="remove_editor">X</button>
                    <img src="" alt="cover image" id="img_ask_id" class="img_ask_class" >
                </div>
            </div>
            <div>
                <div class="label">Click at least one label for your post</div>
                <#assign labelsResponse= rest("/labels/") />
                <#list labelsResponse.labels.label as li> 
                    <button class="button_label" value="${li.text}_${li.id}" data-id="button_label_ask" >${li.text}</button>
                </#list>
            </div>
            <div class="popup" id="popup" style="display:none;">
                <div id="inner_popup">
                
                </div>
                <div class='buttons'><button class='popup_btn success'>Okay</button><button class='popup_btn cancel'>Cancel</button></div>
            </div>
            <div>
                <button class="bunning_btn" id="bunning_post">Post</button>
                <button class="bunning_btn"  id="preview_ask">Preview</button>
                <button class="bunning_btn" >Save Draft</button>
                <button class="bunning_btn" >Cancel</button>
            </div>
        </div><br>
    </div>

    <@liaAddScript>
    ;(function ($) {
        let selectedLabelsArr = [];
        let FinalData;
        var image_data_ask;
        var image_id_ask;

        <#--  On button click close image viewer  -->
        $('#img_remove_btn').on('click', function(){
            if($( "#img_View_id" ).hasClass('d_block')){
                document.getElementById("image_ask_btn").innerHTML = "Upload Image";
                $('#img_View_id').removeClass('d_block');
            }
        });

        <#--  lables data functions   -->
        
        $('*[data-id="button_label_ask"]').on("click", function($event){
            let label=$event.target.getAttribute("value");
            var element_event=$event.target.toggleClass("label_active");
            var Array_l=label.split("_");
            var i=0;
                var data_lables={
                        "id":Array_l[i+1],
                        "text":Array_l[i]
                }
            selectedLabelsArr.push(data_lables);
        });
        <#--  JSON Obj Genration for Ask a home improvement Question  -->
        $("#preview_ask").click(function(){
            let inp1Title_ask = $("#titleInputLabel2_ask").text();
            let inp1Value_ask = $("#titleInput2_ask").val();
            let inp2Title_ask = $("#selectBoxLabel2_ask").text();
            let inp2Value_ask = $("#selectBox2_ask").val();
            let textEditor_Title_ask = $("#textEditorTitle_ask").text();
            let textEditor_ask = $("#sampleeditor").html();
            let fileUpload_ask = $("#image.contentss").val();
            console.log(fileUpload_ask, "fileUpload_ask")
            FinalData = `<div>
                <div class='row'>
                    <span class='key'>` + [inp1Title_ask] + `:</span><span class='value'>` + inp1Value_ask + `</span>
                </div>
                <div class="row">
                    <span class='key'>` + [inp2Title_ask] + `:</span><span class='value'>` + inp2Value_ask + `</span>
                </div>
                <div class="row">
                    <span class='key'>` + [textEditor_Title_ask] + `:</span><span class='value'>` + textEditor_ask + `</span>
                </div>
                <div class="row">
                    <span class='key'>File:</span><span class='value'>` + fileUpload_ask + `</span>
                </div>
                <div class="row">
                    <span class='key'>Labels:</span><span class='value'>` + selectedLabelsArr?.toString() + `</span>
                </div>
                </div>`;
            <#--  Preview button popup function  -->
            $("#popup").show();
            $("#inner_popup").html(FinalData)
            $(".popup_btn").click(function(){
                $("#popup").hide();
            })
        })

        <#--  img call using ajax  -->
        document.getElementById("image.contentss").addEventListener("change", (e) => {
            let file = e.target.files[0];
            if (!file) {
            return null;
            }
            $('#loadingTxtss')?.addClass('d_block');
            return new Promise((resolve, reject) => {
            console.log("file upload", file);
            const data = new FormData();
            data.append(
                "api.request",
                JSON.stringify({
                request: {
                    data: {
                    type: "image",
                    title: "message cover image",
                    field: "image.content",
                    description: "",
                    tags: { items: [] },
                    },
                },
                })
            );
            data.append("image.content", file);
            data.append("payload", "");

            fetch("/api/2.0/images", {
                method: "POST",
                body: data,
                processData: false,
                contentType: false,
            })
                .then((res) => res.json())
                .then((val) =>{
                    image_data_ask=val.data.original_href;
                    image_id_ask=val.data.id;
                    <#--  after upload image block condtion  -->
                      if(image_data_ask){
                        $('#img_View_id').addClass('d_block');
                        $('#img_ask_id').attr('src',image_data_ask);
                    }
                    $('#loadingTxtss')?.removeClass('d_block');
                    document.getElementById("image_ask_btn").innerHTML = "Replace Image";
                    console.log(image_id_ask,"image id is ");
                    console.log(image_data_ask,"image_data_ask data href")
                })
                .catch((e) => {
                    $('#loadingTxtss')?.removeClass('d_block');
                    console.log("err", e)
                });
            });
        });
        <#--  fetch the data using java script   -->
            $("#bunning_post").click(function(){
            let inp1Title_ask = $("#titleInputLabel2_ask").text();
            let inp1Value_ask = $("#titleInput2_ask").val();
            let inp2Title_ask = $("#selectBoxLabel2_ask").text();
            let inp2Value_ask = $("#selectBox2_ask").val();
            let textEditor_Title_ask = $("#textEditorTitle_ask").text();
            let textEditor_ask = $("#editor_one_ask > .ql-editor").html();
            let fileUpload_ask = $("#image.contentss").val();
    
            fetch("/api/2.0/messages", {
            headers: {
                Accept: "application/json",
                "Content-Type": "application/json",
            },
            method: "POST",
         
             body: JSON.stringify({"data":
                {
                    "type":"message",
                    "subject":inp1Value_ask,
                    "body":textEditor_ask,
                    "board":{
                        "id":inp2Value_ask
                    },
                    cover_image:{
                        type: "image",
                        id:image_id_ask
                    },
                    "labels": {
                        "items":selectedLabelsArr
                    }
                }
            })
            }).then((response) => response)
             .then((json) => {

                 location.href = 'https://italent2.demo.lithium.com/t5/'+inp2Title_ask+'/bd-p/'+inp2Value_ask;

                console.log(json)
            })
            .catch(err => console.error(err));

                

        });

    })(LITHIUM.jQuery);
    </@liaAddScript>
    <#--  Ask a Question start here  -->
