<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>Test</title>
</head>

<body>
    <h1>H5 file upload demo</h1>
    <input type="file" id="myfile0" value="" name="myfile0" multiple="multiple"/>
    <input type="file" id="myfile1" value="" name="myfile1" multiple="multiple"/>
    <button id="uploader">Upload</button>
    <script type="text/javascript" src="js/h5uploader.js"></script>
    <script type="text/javascript">
    var uploader = document.getElementById('uploader');
    uploader.addEventListener("click", function(e) {

        H5Uploader.upload({
            action: 'upload',
            id: 'myfile0',
            size: {
                max: 5000, // Kb 5MB
                valide: function(e) {
                    console.log(e);
                }
            }, // MB
            type: {
                name: 'csv',
                valide: function(e) {
                    console.log(e);
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
</body>

</html>