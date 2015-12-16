<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="BusinessInformation.*" %>
<%
    request.setCharacterEncoding("EUC-KR"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
CompanyDAO dao = new CompanyDAO();
String aa= request.getParameter("CoN");
String bb= request.getParameter("Na");
boolean result = dao.delete(aa, bb);
if(result){
%>
<script type="text/javascript">
   alert("정보가 삭제되었습니다.");
   location.href="MainPage.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
   alert("정보를 삭제하는데 실패히였습니다.");
   history.back();
</script>
<%} %>
</body>
</html>