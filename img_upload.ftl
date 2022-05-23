<input type='file'  accept="image/png, image/jpeg" id="uploadBtn_ask"/>
<@liaAddScript>
;(function ($) {
    document.querySelector('#uploadBtn_ask').addEventListener('change', (e) => {
        const file = e.target.files[0];
        if (!file) {
            return null;
        }
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
                headers: {
                    Accept: 'application/json', 
                    'Content-Type': 'multipart/form-data'
                    },
                    method: 'POST',
                    data: data,
                    processData: false,
                    contentType: false,
            }).then(response => console.log(response))
            .catch(err => console.error(err));
        });

    });
})(LITHIUM.jQuery);
</@liaAddScript>