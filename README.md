# HTML5 file uploader

This is a simple file upload plugin depends on HTML5. You can use it to mordern browser.

### Install

install by bower:

```
bower install h5uploader --save
```
or: 

```
git clone https://github.com/wewoor/h5uploader.git
```

### Example

Import this script in you html page:

```html
<script type="text/javascript" src="h5uploader.js"></script>
```

#### html

```html
<input type="file" id="myfile" value="" name="myfile" multiple="multiple"/>
<button id="uploader">Upload</button>
```

#### Javascript

```javascript
<script type="text/javascript">
    var uploader = document.getElementById('uploader');
    uploader.addEventListener("click", function(e) {

        H5Uploader.upload({
            action: 'upload',
            id: 'myfile',
            size: {
                max: 5000, // 5000kb 
                valide: function(e) {
                    if (e) {
                        alert("The size of " + e.name + " is exceed max value!");
                    }
                }
            }, // MB
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

            }
        });

    }, false);
    </script>
```

**more examples and demos can be found in [`/example`](https://github.com/wewoor/h5uploader/tree/master/example) directory.**

### H5uploader options

name | type | description
------|-----|---------|----
action | string | file upload request path
id | string | input element id,`example: <input id="myfile"/>` 
size | object | validate file size
type | object | validate file type
progress | function | progress for upload
success | function | when file upload successfully callback
fail | function | when file upload fail callback

## License
MIT
