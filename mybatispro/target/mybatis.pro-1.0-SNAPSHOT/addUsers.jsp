<%--
  Created by IntelliJ IDEA.
  User: yizeliu
  Date: 7/24/18
  Time: 5:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>慕课网用户管理中心</title>
    <link rel="stylesheet" href="lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="lib/2.2.4/jquery-1.12.4.min.js"></script>
    <script src="lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h1>慕课网后台管理系统 <small>用户数据管理中心</small></h1>
        </div>
    </div>
    <div class="row">
        <div class="jumbotron">
            <h1>MyBatis基础入门课程!</h1>
            <p>通过一个项目来完成基础部分的学习</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">查看更多，请上慕课网</a></p>
            <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/addusers.jsp" role="button">新增用户</a></p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <form class="form-horizontal" action="${pageContext.request.contextPath}/addUsers">
                <div class="form-group">
                    <label class="col-sm-2 control-label">username</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  id="username" name="username" placeholder="please enter username">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">password</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  id="userpass" name="userpass" placeholder="please enter password">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">nickname</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  id="nickname"  name="nickname" placeholder="please enter nickname">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">age</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  id="age"  name="age" placeholder="please enter your age">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">gender</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="gender" name="gender" placeholder="please enter your gender">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">phone</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="phone"  name="phone" placeholder="please enter your phone">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">email</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email"  name="email" placeholder="please enter your email">
                    </div>
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="add new user">
                </div>
            </form>
        </div>
    </div>

</body>
</html>
