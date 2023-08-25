<%@ page contentType="text/html; charset=UTF-8"%>
<%
	session.invalidate();//세션 만료 => 세션 로그아웃
	
	out.println("<script>");
	out.println("alert('세션 로그아웃 되었습니다!');");
	out.println("location='session_LoginForm.jsp';");
	out.println("</script>");
%>