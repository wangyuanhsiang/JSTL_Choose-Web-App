<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 11-Jul-2017, 4:27:42 PM
    Author     : Shawn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Choose</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="index.jsp">
            <table border="0">
                <tbody>
                    <tr>
                        <td><input type="submit" value="Section1" name="displayConditionalText" /></td>
                        <td> <input type="submit" value="Section2" name="displayConditionalText" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <c:choose>
            <c:when test="${param.displayConditionalText == 'Section1'}">
                <p>
                    This paragraph will only be displayed if the request<br>
                    parameter named "displayConditionalText" has a value<br>
                    of "1".
                </p>
            </c:when>
            <c:when test="${param.displayConditionalText == 'Section2'}">
                <p>
                    This paragraph will only be displayed if the request<br>
                    parameter named "displayConditionalText" has a value<br>
                    of "2".
                </p>
            </c:when>
            <c:otherwise>
                <p>
                    This paragraph will only be displayed if the request<br>
                    parameter named "displayConditionalText" is either not<br>
                    present or has a value different from "1" or
                    "2".
                </p>                             
            </c:otherwise>
        </c:choose>

    </body>
</html>
