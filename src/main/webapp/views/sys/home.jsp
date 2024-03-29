<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2019/3/20
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>BSC-主页</title>
    <!-- css -->
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/tools/lib/semantic/semantic.min.css" />
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/tools/lib/toastr/toastr.css" />
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/tools/css/md-github.css" />
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/tools/css/admin.css" />
</head>
<body>
<div  style="z-index:1992;" class="ui fixed inverted main menu">
    <div class="ui floating top  pointing dropdown link item dd-top-menu-user">
        <span class="ad-index-user-username" >BSC</span>
        <div class="menu">
            <div class="header">选择操作</div>
            <div class="item " >
                <span><a href="${pageContext.request.contextPath}/sys/home">首页</a></span>
            </div>
            <div class="item ">
                <span><a href="#">青岛大学官网</a></span>
            </div>
        </div>
    </div>
    <a class="title item">
        <b>青岛大学商学院知识管理系统</b>
    </a>
    <div class="ui floating top  pointing dropdown link item dd-top-menu-user">
        <div class="ad-index-user-username">创建 </div>
        <div class="menu">
            <div class="header">选择操作</div>
            <div class="item ad-index-user-edit" >
                <span><a href="${pageContext.request.contextPath}/team/add" target="main">团队</a></span>
            </div>
            <div class="item ad-index-logout">
                <span><a href="${pageContext.request.contextPath}/space/add" target="main">空间</a></span>
            </div>
        </div>
    </div>
    <div class="search bar7">
    <form action="${pageContext.request.contextPath}/wiki/queryList" method="post" target="main">
        <input type="text" placeholder="请输入关键字" name="condition">
        <button type="submit"></button>
    </form>
</div>
    <div class="right menu">
        <div class="ui floating top right pointing dropdown link item dd-top-menu-user">
            <i class="user icon"></i>
            <span class="ad-index-user-username" >${sessionScope.user.name}</span>
            <div class="menu">
                <div class="header">选择操作</div>
                <div class="item ad-index-user-edit" >
                    <i class="edit icon"></i>
                    <span><a href="${pageContext.request.contextPath}/user/get/${sessionScope.user.id}" target="main">个人信息</a> </span>
                </div>
                <div class="item ad-index-user-username" >
                    <i class="edit icon"></i>
                    <span><a href="${pageContext.request.contextPath}/user/person">个人空间</a> </span>
                </div>
                <div class="item ad-index-logout">
                    <i class="sign out icon"></i>
                    <span><a href="${pageContext.request.contextPath}/sys/loginOut">退出 </a> </span>
                </div>
            </div>
        </div>
        <div class="ui floating top right pointing dropdown link item dd-top-menu-user">
            <i class="question icon"></i>
            <span class="ad-index-user-username" >帮助</span>
            <div class="menu">
                <div class="header">选择操作</div>
                <div class="item ad-index-user-edit" >
                    <i class="edit icon"></i>
                    <span><a href="#" target="main">新手入门</a> </span>
                </div>
                <div class="item ad-index-user-username" >
                    <i class="edit icon"></i>
                    <span><a href="#">疑难解惑</a> </span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="pusher ad-index-content">
    <div class="ad-index-container">
        <div  class="ui dividing close left rail ad-index-rail" style="width:133px; height:450px; padding-top:70px;">
            <div  class="ui vertical pointing inverted menu" style="width: 9rem !important; position: fixed;">
                <a class="item"  href="${pageContext.request.contextPath}/wiki/list" target="main">
                    <i class="question icon"></i> 热门
                </a>
                <a class="item" target="main"  href="${pageContext.request.contextPath}/space">
                    <i class="chat icon"></i> 所有空间
                </a>
                <a class="item" target="main"  href="${pageContext.request.contextPath}/team">
                    <i class="chat icon"></i> 所有团队
                </a>
                <a class="item" target="main"  href="${pageContext.request.contextPath}/interaction/collect/${sessionScope.user.id}">
                    <i class="wikipedia icon"></i> 收藏空间
                </a>
                <a class="item" target="main">
                    收藏空间1
                </a>
                <a class="item" target="main">
                    收藏空间2
                </a>
                <a class="item" target="main">
                    收藏空间3
                </a>
                <a class="item" target="main">
                    收藏空间4
                </a>
                <a class="item" target="main">
                    收藏空间5
                </a>
                <a class="item" target="main">
                    收藏空间6
                </a>
                <a class="item" target="main">
                    收藏空间7
                </a>
                <a class="item" target="main">
                    收藏空间8
                </a>
            </div>
            <div style="width:133px; height:450px; padding-top:70px;">
            </div>
        </div>
        <div id="context" style="background-color: white; padding-top:70px;" >
            <iframe name="main" src="${pageContext.request.contextPath}/wiki/list" style="width:100%; min-height:500px" frameborder="no">
            </iframe>
        </div>
    </div>
    <script type="text/javascript"  src="${pageContext.request.contextPath}/tools/js/deps-base.js"></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath}/tools/js/admin.js"></script>
</div>
</body>
</html>
