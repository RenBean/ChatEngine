
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="springBootApp.controllers.ChatRestController" %>
<html>
<head>
    <style>
        table.center {
            margin-left:auto;
            margin-right:auto;
        }
        body {text-align:center;
            background-image: url(".");
        }
        *{
            background-color: aliceblue;
            text-align: center;
        }
        a:hover{
            text-decoration: none;
            color:gold;
        }
        a{
            text-decoration: none;
            color:dimgrey;
        }
    </style>
    <title>Chat Box</title>

</head>

<body>
<h1>Create Message</h1>
<form action= '/chat/send?message=[]' method ='GET'>
<textarea rows='4' cols='50' placeholder='Input message text here...' name= 'message' value=''></textarea>
    <br>
<button type='submit'>Send via GET</button>
</form>
<a href='/chat/send'> view all messages</a>

<h3>Send Message</h3>
<form name="Message" method="POST" action="/chat/send?message=[message]">
    Message: <input type="text" placeholder="Input message text here..." name="message" value="${message}" /><br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="form-control" />
    <br><button type='submit'>Send via POST</button>
</form>


<%@ page import="springBootApp.entities.Cuboid" %>
<%
    Cuboid tc = new Cuboid();
    tc.callCube();
%>

<out.print (tc.callCube());></out.print>

<a href="/chat/">view all chats</a>

<a href="/">HOME</a>

</body>
</html>
