<%@ page contentType="text/html; charset=UTF-8"%>
<%
 String id=request.getParameter("id2");//jsp_07.jsp?id2=아이디 형태의 주소창에 노출되는 get방식
 //으로 전달해야 한다.=> 퀴리스트링 방식
 
 if(id != null && id.equals("admin")){
	 response.sendRedirect("index.jsp?id="+id);//?id=아이디를 get으로 전달
 }else
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response jsp 내장 객체 하위의 sendRedirect() 메서드 </title>
</head>
<body>
	<span style="fone-size:28px; color:red; fone-weight:bolder;">
	 잘못된 아이디입니다.
	</span>
</body>
</html>