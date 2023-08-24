<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//JSP에서는 post전송되는 한글이 깨진다.그러므로 위의 코드를 해서 post전송되는 한글을 안깨지게 한다.

	String name = request.getParameter("name");
	String addr = request.getParameter("address");
	String[] hobby = request.getParameterValues("hobby");
	//checkbox는 복수개값이 전달되기 때문에 배열로 받는다.
	
	out.println("이름 : "+name+"<hr>");
	out.println("주소 : "+addr+"<hr>");
	
	out.println("선택한 취미는 ");
	if(hobby != null && hobby.length > 0){
		for(String h:hobby){
			out.println("&nbsp;"+h);//&nbsp; 특수문자는 한칸의 빈공백을 띄움
		}
	}else{
		out.println("없습니다.");
	}
%>
<a href="jsp_06.jsp">입력</a>