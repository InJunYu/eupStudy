<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="BusinessInformation.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    request.setCharacterEncoding("EUC-KR"); 
%>
<jsp:useBean id="dao" class="BusinessInformation.CompanyDAO" scope="page"></jsp:useBean>
<%
String CN2 = request.getParameter("CoN"); 
String NA2 = request.getParameter("Na"); 

Vector veclist = dao.select(CN2,NA2);
BIBean bean = (BIBean)veclist.get(0);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>기업 정보 수정</title>
</head>
<body>
기업 정보 수정
<form name="upform" method="post" action="UpdateConfirm.jsp" >
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>회사명</td>
 <td colspan="3"><input type="text" name="companyname" value="<%= bean.getCompanyname() %>"></td>
 <td>대표자명</td>
 <td colspan="4"><input type="text" name="name" value="<%= bean.getName() %>"></td> 
</tr>
<tr>
 <td>주소</td>
 <td colspan="5"><input type="text" name="adress" value="<%= bean.getAdress() %>"></td>
 <td>전화</td>
 <td colspan="2"><input type="text" name="phone" value="<%= bean.getPhone() %>"></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">담당자</td>
 <td>부서명</td>
 <td><input type="text" name="department" value="<%= bean.getDepartment() %>"></td>
 <td>담당업무</td>
 <td><input type="text" name="takecharge" value="<%= bean.getTakecharge() %>"></td>
 <td>팩스</td>
 <td colspan="2"><input type="text" name="fax" value="<%= bean.getFax() %>"></td>
</tr>
<tr>
 <td>직위</td>
 <td><input type="text" name="position" value="<%= bean.getPosition() %>"></td>
 <td>작성자명</td>
 <td><input type="text" name="writer" value="<%= bean.getWriter() %>"></td>
 <td>e-mail</td>
 <td colspan="2"><input type="text" name="email" value="<%= bean.getEmail() %>"></td>
</tr>
<tr> 
 <td colspan="9">일반현황</td>
</tr> 
 <tr>
  <td colspan ="2">설립연도</td>
  <td><input type="text" name="establishyear" value="<%= bean.getEstablishyear() %>">년</td>
  <td>상시종업원수</td>
  <td colspan ="2"><input type="text" name="workernum" value="<%= bean.getWorkernum() %>">명</td
  ><td>연구개발인력수</td>
  <td colspan ="2"><input type="text" name="researchernum" value="<%= bean.getResearchernum() %>">명</td>
 </tr>
 <tr>
  <td colspan ="2">기업규모</td>
  <td colspan ="8">
   <input type="text" name="bigsmall" value="<%= bean.getBigsmall() %>"> </td>
 </tr>
 <tr>
  <td rowspan="4">종업원 현황</td>
  <td rowspan="2">인원별</td>
  <td>상시종업원수</td>
  <td colspan ="2">남</td>
  <td colspan ="2">여</td>
  <td colspan ="2">해외인력파견수</td>
 </tr>
 <tr>
  <td ><input type="text" name="employeenum" value="<%= bean.getEmployeenum() %>"></td>
  <td colspan ="2"><input type="text" name="man" value="<%= bean.getMan() %>"></td>
  <td colspan ="2"><input type="text" name="woman" value="<%= bean.getWoman() %>"></td>
  <td colspan ="2"><input type="text" name="overseas" value="<%= bean.getOverseas() %>"></td>
 </tr>
 <tr>
  <td rowspan="2">부문별</td>
  <td>관리직</td>
  <td colspan ="2">기술직</td>
  <td>생산직</td>
  <td colspan ="2">연구직</td>
  <td>기타</td>
 </tr>
 <tr>
  <td><input type="text" name="management" value="<%= bean.getManagement() %>"></td>
  <td colspan ="2"><input type="text" name="technology" value="<%= bean.getTechnology() %>"></td>
  <td><input type="text" name="production" value="<%= bean.getProduction() %>"></td>
  <td colspan ="2"><input type="text" name="development" value="<%= bean.getDevelopment() %>"></td>
  <td><input type="text" name="etc" value="<%=  bean.getEtc() %>"></td>
 </tr>
 <tr>
  <td colspan ="2">총매출액</td>
  <td colspan ="2">수출액</td>
  <td colspan ="2">영업이익</td>
  <td colspan ="3">연구개발투자액</td>
 </tr>
 <tr>
  <td colspan ="2"><input type="text" name="totalmoney" value="<%= bean.getTotalmoney() %>">백만원</td>
  <td colspan ="2"><input type="text" name="exportmoney" value="<%= bean.getExportmoney() %>">백만원</td>
  <td colspan ="2"><input type="text" name="income" value="<%= bean.getIncome() %>">백만원</td>
  <td colspan ="3"><input type="text" name="developmentmoney" value="<%= bean.getDevelopmentmoney() %>">백만원</td>
 </tr>

<tr>
 <td colspan ="2">주력업종(매출 1위)</td>
 <td colspan ="7"><input type="text" name="major" value="<%=bean.getMajor() %>"></td>
</tr>
 <tr>
 <td colspan ="2">주생산품</td>
 <td colspan ="7"><input type="text" name="mainproduction" value="<%=bean.getMainproduction() %>"></td>
 </tr>
 <tr>
  <td >보유기술현황</td>
  <td>특허출원</td>
  <td><input type="text" name="patent" value="<%= bean.getPatent() %>">건</td>
  <td>특허등록</td>
  <td><input type="text" name="patentregister" value="<%= bean.getPatentregister() %>">건</td>
  <td>실용신안</td>
  <td><input type="text" name="utilitymodel" value="<%=bean.getUtilitymodel() %>">건</td>
  <td>미출원기술</td>
  <td><input type="text" name="nonpatent" value="<%= bean.getNonpatent() %>">건</td>
 <tr>
 <tr>
  <td colspan ="2">기술유출관련소송경험</td>
  <td colspan ="7">최근3년간  <input type="text" name="lawsuit" value="<%= bean.getLawsuit() %>">건</td>
 </tr>
</table>
<input type="submit" value="수정 하기" >
<input type="button" value="조회 하기" onClick="javascript:location.href='MainPage.jsp'">
</form>
</body>
</html>