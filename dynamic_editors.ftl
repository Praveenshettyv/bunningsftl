<style>
  .addStep{
        display: flex;
        border: 1px solid #b7b7a4;
        border-radius: 5px;
        min-width: 400px;
        width: 50%;
        min-height: 250px;
        height: 100%;
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
</style>
<script src="https://unpkg.com/vue@3"></script>
 <link href="${asset.get('/html/assets/quilt.css')}" rel="stylesheet">

<div id="app">
  <div v-for="id in count">
    <div v-bind:id="'editor' + id" class="editor" style="height: 200px; outline: none;" contenteditable @input="onInput"></div>
  </div>
  <div class='addStep'><div class='innerAddStep'><div v-on:click="addEditor()" class='plusBtn'>+</div><div class='addStepTxt'>Click to Add Another step</div></div></div>
  <button v-on:click="submitForm()">submit</button>
</div>

<script src="${asset.get('/html/assets/quilt.js')}"></script>

<#-- Initialize Quill editor -->
<script>
  const { createApp } = Vue;

  createApp({
    data() {
      return {
        count: 1,
        editors: {}
      };
    },
    methods: {
      addEditor() {
        this.count = this.count + 1;
      },
      addQuil() {
        new Quill('#editor' + this.count, {
          modules: {
            toolbar: [
              [{ header: [1, 2, false] }],
              ["bold", "italic", "underline", "link", "image", "video"]
            ],
          },
          placeholder: "Placeholder comes here ...",
          theme: "snow",
        });
      },
      onInput(e){
        this.editors[e.target.id] = e.target?.children[0]?.innerHTML;
      },
      submitForm() {
          console.log(this.editors, "editor data")
      },
    },
    mounted(){
      this?.addQuil();
    },
    updated(){
     this?.addQuil();
    },
  }).mount("#app");
</script>
