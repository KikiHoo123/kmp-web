<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/2/28
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="${pageContext.request.contextPath}/tools/css/plugins/footable/footable.core.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/tools/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/tools/css/style.css" />
<html>
<head>
    <title>interaction</title>
</head>
<body>
<c:out value="${msg}"/>
<div class="ibox-content">
    <table class="footable table table-stripped" data-page-size="8" data-filter=#filter>
        <thead>
        <tr>
            <th>wiki</th>
            <th>用户</th>
            <th>空间</th>
            <th>时间</th>
            <th>类型</th>
            <th>评论内容</th>
            <th colspan="3">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${interactionList}" var="interaction" >
            <tr>
                <td>${interaction.wikiID.title}</td>
                <td>${interaction.userID.name}</td>
                <td>${interaction.spaceID.name}</td>
                <td>${interaction.time}</td>
                <td>${interaction.type}</td>
                <td>${interaction.content}</td>
                <td><a href="${pageContext.request.contextPath}/interaction/get/${interaction.id}"><input type="button" value="详情"></a></td>
                <td><a href="${pageContext.request.contextPath}/interaction/edit/${interaction.id}"><input type="button" value="编辑"></a></td>
                <td><a href="${pageContext.request.contextPath}/interaction/del/${interaction.id}"><input type="button" value="删除"></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
