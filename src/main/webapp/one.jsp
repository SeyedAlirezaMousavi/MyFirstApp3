<%@ page import="tehran.PersonDA" %>
<%@ page import="tehran.PersonTO" %><%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 3/14/2021
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>one</title>
</head>
<body>
<%
    String fname = request.getParameter("first-name");
    String lname = request.getParameter("last-name");
    String nationalid = request.getParameter("nationalID");
    String birthdate = request.getParameter("birthDate");

    try {
        if (fname.equals("") || lname.equals("") || nationalid.equals("") || birthdate.equals("")) {
            response.sendRedirect("error.jsp");
        } else {
            PersonDA personDA = new PersonDA();
            PersonTO personTO = new PersonTO();
            personTO.setFname(fname);
            personTO.setLname(lname);
            personTO.setNationalId(nationalid);
            personTO.setBirthdate(Long.parseLong(birthdate));
            personDA.insert(personTO);
            personDA.close();
            response.sendRedirect("response.jsp");
        }


    } catch (Exception exception) {
        exception.printStackTrace();
    }


%>

</body>
</html>
