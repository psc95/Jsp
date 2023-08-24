<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="/error/viewError.jsp" %>
<!-- page 디렉티브의 errorPage 속성을 사용해서 에러 페이지를 지정함. -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 addr 피라미터 값 : <strong><%=request.getParameter("addr").toLowerCase()%></strong>
</body>
</html>