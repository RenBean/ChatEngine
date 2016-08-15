<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="springBootApp.controllers.ChatRestController" %>
<html>
<head>
    <title>Add Chat</title>
</head>
<body>
<h1>Add Chat</h1>
<form commandName="chat" method="POST" action="/chat/send?message=[message]">
        Message: <input type="text" placeholder="Input message text here..." name="message" value="${message}" /><br>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="form-control" />
        <br><button type='submit'>Send via POST</button>
    </form>
</form>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/logout">SIGN OUT</a>
</body>
</html>