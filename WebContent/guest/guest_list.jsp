<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, net.daum.vo.*,net.daum.dao.*" %>
<%
    Guest24DAOImpl gdao=new Guest24DAOImpl();
    List<GuestVO> glist = gdao.getGuList();//방명록 목록을 가져옴.
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 목록</title>
</head>
<body>
 <table border="1">
  <tr>
   <th colspan="5">방명록 목록(문제겸 과제물 풀이)</th>
  </tr>
  
  <tr>
   <th>번호</th> <th>제목</th> <th>작성자</th> <th>내용</th> <th>등록날짜</th>
  </tr>
  <%
    if(glist != null && glist.size() > 0){
    	for(GuestVO g:glist){
  %>
   <tr>
    <th><%=g.getGno()%></th>
    <th><%=g.getGtitle()%></th>
    <th><%=g.getGname()%></th>   
    <th><%=g.getGcont()%></th>
    <th><%=g.getGdate().substring(0,10)%></th> <%-- 0이상 10미만 사이의 년월일을 반환 --%>
   </tr>
  <% }
   }else{
  %>
  <tr>
   <th colspan="5">방명록 목록이 없습니다!</th>
  </tr>
  <% } %>
   <tr>
    <th colspan="5">
    <input type="button" value="방명록 작성" onclick="location='guest_write.jsp';" >
    </th>
   </tr>
 </table>
</body>
</html>