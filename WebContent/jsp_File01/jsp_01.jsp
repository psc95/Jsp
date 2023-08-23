<%@ page contentType="text/html; charset=UTF-8"%>
<%-- jsp 주석문 기호, %@: 지시자 또는 디렉티브라고 한다. 어떤 페이지에 대한 정의문을 내릴때 사용한다.
content="text/html; charset=UTF-8" 의 의미는 JSP 파일 내용을 웹브라우저에 출력할 때 HTML,문자,언어코딩
타입을 UTF-8로 지정하라는 의미이다. 확장자가 .jsp인 %@ page 디렉티브 부분을 설정하지 않으면 출력되는 한글이
모두 깨진다. 웹브라우저 출력창에서 페이지 소스 보기 하면 jsp주석문은 보이지 않아서 보안상 좋다.하지만 html주석문은
보이기 때문에 보안상 안좋다. 그러므로 html주석 내용에 보안상 중요한 내용은 기입 하지 말아야 한다.--%>

<%
//이 영역을 jsp에서는 스크립트 릿이라고 한다. 주로 자바 언어 문법을 따라가고 주석문 기호도 자바랑 같다.

	String bookTitle="jsp 서버 웹프로그래밍";
	String author="홍길동";
%>
교재명:<%=bookTitle%><hr>
저자명:<%=author%><hr>
<%-- %=은 jsp 문법에서 표현식이라고 한다.주로 출력용도로 활용된다. 숫자를 출력해도 문자열로 인식되어서 출력한다
.jsp 스크립트 요소 종류: 선언문(<%! %>)은 주로 변수와 메서드 선언용도로 활용된다. 표현식(출력용도),
스크립트 릿(<% %>)--%>