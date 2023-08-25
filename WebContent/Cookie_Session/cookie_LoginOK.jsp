<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("pass");
	
	if(id.equals(password)){//아이디와 비번이 같을때 로그인 인증 성공한 걸로 판단
		response.addCookie(Cookies.createCookie("auth", id, "/", -1));//쿠키이름,값,경로,
		//유효시간을 가진 쿠키 추가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공~ </title>
</head>
<body>
 <h2>로그인에 성공했습니다!(쿠키를 사용함)</h2>
</body>
</html>
<%
	}else{//로그인 실패시
%>
	<script>
	  alert('로그인에 실패 했습니다!');
	  history.back();//자바스크립트에서 history객체는 이전 주소 정보를 담고 있다.back()메서드는 뒤로 한칸
	  //이동.즉 이전 주소로 이동한다. go(-1)메서드와 기능이 같다.
	</script>
<% } %>