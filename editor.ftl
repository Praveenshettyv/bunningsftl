                   <#-- Include stylesheet -->
                    <link href="${asset.get("/html/assets/quilt.css")}" rel="stylesheet">

                    <#-- Create the editor container -->
                    <div id="editor">
                    <p>Hello World!</p>
                    <p>Some initial <strong>bold</strong> text</p>
                    <p><br></p>
                    </div>

                    <#-- Include the Quill library -->
                    <script src="${asset.get("/html/assets/quilt.js")}"></script>

                    <!-- Initialize Quill editor -->
                    <script>
                    var quill = new Quill('#editor', {
                        modules: {
                        toolbar: [
                        [{ header: [1, 2, false] }],
                        ['bold', 'italic', 'underline', 'link', 'video'],
                        ['image', 'code-block']
                        ]
                        },
                        placeholder: 'Compose an epic...',
                        theme: 'snow'
                    });
                    </script>