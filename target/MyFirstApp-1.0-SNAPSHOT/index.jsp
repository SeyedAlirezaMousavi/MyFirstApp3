<%@ page import="tehran.Halfadder" %><%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 3/2/202PM1
  Time: 3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
salam
<%
    /*out.println("start zadim raft...");
    for (int i = 0; i < 20; i++) {
        out.println("<p>hi</p>");
        alter session set "_ORACLE_SCRIPT"=true;
    }*/
    Halfadder halfadder = new Halfadder() ;
    out.print(halfadder.sum(10,11));
    /* alter session set "_ORACLE_SCRIPT"=true;*/
    out.print("</br>" + halfadder.sum(10,11));
    out.print("</br>" + "hi");

%>
<form action="one.jsp">
  <p>
      <label>
          <input type="text" name="first-name">
      </label>
      <br>
      <label>
          <input type="text" name="last-name">
      </label>
      <br>
      <label>
          <input type="text" name="nationalID">
      </label>
      <br>
      <label>
          <input type="text" name="birthDate">
      </label>
      <br>
      <input type="submit" value="send Data">

  </p>
</form>
</body>
</html>
