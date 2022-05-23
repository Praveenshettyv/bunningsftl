
function uploadCoverImage(file) {
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

    $.ajax({
      url: "/api/2.0/images",
      data: data,
      processData: false,
      contentType: false,
      type: "POST",
      success: (data) => {
        console.log("image result ", data);
        resolve(data);
      },
      error: (err) => {
        reject(err);
      },
    });
  });
}