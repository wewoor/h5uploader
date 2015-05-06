# HTML5 file uploader

This is a simple file upload plugin depends on HTML5. You can use it to mordern browser.

### Example

Add this script tag in you html page:

```html
    <script type="text/javascript" src="h5uploader.js"></script>
```

Usage in js:

```javascript
H5Uploader.upload({
            action: 'upload',
            id: 'myfile', // <input id="myfile" type="file"/>
            size: {
                max: 5000, // 5000 KB
                valide: function(e) {
                    if (e) {
                        alert("The size of " + e.name + " is exceed max value!");
                    }
                }
            },
            type: {
                name: 'csv;png;jpg',
                valide: function(e) {
                    if (e) {
                        alert("The type of " + e.name + " is not supported!");
                    }
                }
            },
            progress: function() {
                    var p = document.createElement('p');
                    p.innerHTML = "uploading";
                    p.id = "loading";
                    document.body.appendChild(p);
            },
            success: function(data) {
                alert(data);
                if (data && data == 200) {
                    document.getElementById('loading').innerHTML = "The file upload successfully!";
                    alert("The file upload successfully.");
                }
            },
            fail: function(data) {
					alert("upload fail!");
            }
        });
```

**more examples and demos can be found on `/example` directory.**

### H5uploader options

name | type | description
------|-----|---------|----
action | string | file upload request path
id | string | input element id,`example: <input id="myfile"/>` 
action | string | file upload request path
size | object | validate file size
type | object | validate file type
progress | function | progress for upload
success | function | when file upload successfully callback
fail | function | when file upload fail callback

## License
MIT
