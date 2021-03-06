<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"/>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="/user/my.action"><b>管理平台</b>test</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">登录</p>
        <p class="login-box-msg" style="color: red">${error}</p>

        <form id="postForm" action="/login" method="post">
            <input name="redirectUrl" type="hidden" value="${redirectUrl}">
            <div class="form-group has-feedback">
                <input id="username" name="username" type="text" class="form-control" placeholder="Username">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input id="passwd" name="password" type="password" class="form-control" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <button id="doLogin" type="button" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/static/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/static/plugins/iCheck/icheck.min.js"></script>

<script src="/static/plugins/layer/layer.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });

    $("#doLogin").bind("click",function (data) {
        var parmas={
            username:$("#username").val(),
            passwd:$("#passwd").val(),
            kaptcha:$("#kaptcha").val()
        };

        if(!parmas.username){
            layer.msg('用户名不允许为空');
            return false;
        }
        if(!parmas.passwd){
            layer.msg("密码不允许为空")
            return false;
        }

        $("#postForm")[0].submit();
    })

</script>
</body>
</html>

