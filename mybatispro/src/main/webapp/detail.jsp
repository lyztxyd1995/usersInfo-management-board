<%--
  Created by IntelliJ IDEA.
  User: yizeliu
  Date: 7/24/18
  Time: 1:41 PM
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

    <c:set var="user" value="${user}"> </c:set>
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <form class="form-horizontal" action="${pageContext.request.contextPath}/updateUsers">
                    <input type="hidden" name="id" value="${user.id}">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">account</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">${user.id}</p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">password</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">******</p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">nickname</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"  id="nickname" value=${user.nickname} name="nickname" placeholder="nickname">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">age</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"  id="age" value=${user.age} name="age" placeholder="age">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">gender</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="gender" value=${user.gender}  name="gender" placeholder="gender">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">phone</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="phone" value=${user.phone} name="phone" placeholder="phone">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">email</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="email" value=${user.email} name="email" placeholder="email">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">create time</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">
                                <fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
                            </p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">lastest update time</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">
                                <fmt:formatDate value="${user.updateTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
                            </p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">latest login time</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">
                                <fmt:formatDate value="${user.lastLogin}" pattern="yyyy-MM-dd"></fmt:formatDate>
                            </p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">User status</label>
                        <div class="col-sm-10">
                           <c:if test="${user.userStatus == 0}">
                               <p class="form-control-static">normal</p>
                           </c:if>
                            <c:if test="${user.userStatus == 1}">
                                <p class="form-control-static">lock</p>
                            </c:if>
                            <c:if test="${user.userStatus == 2}">
                                <p class="form-control-static">deleted</p>
                            </c:if>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">remark</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"  id="remark" value = ${user.remark} name="remark" placeholder="remark">
                        </div>
                    </div>

                    <div class="row">
                        <table class="table table-striped">
                            <tr>
                                <th>id</th>
                                <th>nation</th>
                                <th>province</th>
                                <th>city</th>
                                <th>county</th>
                                <th>street</th>
                                <th>detailed address</th>
                                <th>Default</th>
                            </tr>
                            <c:forEach var="addr" items="${user.addresses}">
                                <tr>
                                    <td>${addr.id}</td>
                                    <td>${addr.nation}</td>
                                    <td>${addr.province}</td>
                                    <td>${addr.city}</td>
                                    <td>${addr.country}</td>
                                    <td>${addr.street}</td>
                                    <td>${addr.remark}</td>
                                    <c:if test="${addr.defaultAddr} == true">
                                        <td>Default Address</td>
                                    </c:if>
                                    <c:if test="${addr.defaultAddr} == true">
                                        <td>----------</td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="submit updating info">
                    </div>
                </form>
            </div>
        </div>

</body>
</html>
