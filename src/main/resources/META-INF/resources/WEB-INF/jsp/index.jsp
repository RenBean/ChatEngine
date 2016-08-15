<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <title>INDEX JSP</title>
</head>
<body>
<h1>INDEX JSP</h1>
<br><br>
    <a href="/jspAddChat">Kevin's Add</a>
    <br><br>
    <a href="/jspChat">Go to Secure Chat</a>
    <br><br>
    <a href="/chat/help">Go to REST Chat</a>

    <br><br>
    <a href="/logout">SIGN OUT</a>

</body>
</html>