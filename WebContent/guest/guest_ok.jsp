<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="net.daum.vo.GuestVO, net.daum.dao.*" %>

<%
    request.setCharacterEncoding("UTF-8");//post로 전달되는 한글을 안깨지게 한다.
%>
<jsp:useBean id="g" class="net.daum.vo.GuestVO" /> <%-- jsp:useBean 액션태그, GuestVO 빈클래스 객체 g생성 --%>
<jsp:setProperty property="*" name="g" /> <%-- 값 저장 액션태그, 프로퍼티 속성값을 *로 처리하면 한꺼번에 값이 저장됨. 이렇게 할 수 있는 이유가 네임피라미터 이름과 빈클래스 변수명이 같기 때문이다. --%>

<%
   Guest24DAOImpl gdao = new Guest24DAOImpl();
   int result = gdao.insertGuest(g);
   
   if(result == 1){
%>
    <script>
      alert("방명록 저장에 성공했습니다!");
      location = "guest_list.jsp";
    </script>
<% } %>