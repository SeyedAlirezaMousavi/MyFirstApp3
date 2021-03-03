<%@ page import="tehran.Halfadder" %><%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 3/2/2021
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>
salam
<%
    /*out.println("start zadim raft...");
    for (int i = 0; i < 20; i++) {
        out.println("<p>hi</p>");
    }*/
    Halfadder halfadder = new Halfadder() ;
    out.print(halfadder.sum(10,11));

%>
</body>
</html>
