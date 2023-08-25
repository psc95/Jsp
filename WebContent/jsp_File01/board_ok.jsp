<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); //post로 전송되는 한글을 안깨지게 한다.
	
	String title = request.getParameter("title");
	String cont = request.getParameter("content");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<table border="1">
 <tr><th colspan="2">받아온 결과값 확인</th></tr>
 <tr>
  <th>제목</th> <td><%=title%></td>
 </tr>
 <tr>
  <th>내용</th> <td><%=cont%></td>
 </tr>
 <tr>
  <th colspan="2"><input type="button" value="입력" 
  onclick="location='jsp19_boradWrite.jsp';" >
  </th>
 </tr>
</table>
</body>
</html>