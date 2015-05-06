module.exports = {

    index : function(req, res) {
        return res.view("app/demo");
    },

    upload: function(req, res) {
        console.log("file upload....");
        req.file('myfile').upload(function(err, file) {
            sails.log.error(err);
            // 发送批处理请求
            console.log(file);
        });
        return res.ok();
    }
};