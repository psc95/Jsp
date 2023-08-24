<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 실습 </title>
</head>
<body>
 <%
  int number=10;
 %>
 <%@ include file="included2.jspf" %> <%-- 포함되어질 파일의 확장자를.jspf로 하면 소스코드 조각
 파일이다라는 의미이다. .jsp로 해도 된다. --%>
 
 공통 변수 dataFolder : <%=dataFolder%>
</body>
</html>