<%@page import="BusinessInformation.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
           <%
    request.setCharacterEncoding("EUC-KR"); 
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="dao" class="BusinessInformation.CompanyDAO"></jsp:useBean>
<jsp:useBean id="bean" class="BusinessInformation.BIBean" scope="page"/>
<jsp:setProperty  name="bean" property="*" />
<%
String insert = "insert";
dao.INorUP(bean,insert);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>기업정보 입력 확인</title>
</head>
<body>
<form name="confirm" method="post" action="">
기업 정보 입력 확인
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>회사명</td>
 <td colspan="3"><jsp:getProperty property="companyname" name="bean"/></td>
 <td>대표자명</td>
 <td colspan="4"><jsp:getProperty property="name" name="bean"/></td> 
</tr>
<tr>
 <td>주소</td>
 <td colspan="5"><jsp:getProperty property="adress" name="bean"/></td>
 <td>전화</td>
 <td colspan="2"><jsp:getProperty property="phone" name="bean"/></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">담당자</td>
 <td>부서명</td>
 <td><jsp:getProperty property="department" name="bean"/></td>
 <td>담당업무</td>
 <td><jsp:getProperty property="takecharge" name="bean"/></td>
 <td>팩스</td>
 <td colspan="2"><jsp:getProperty property="fax" name="bean"/></td>
</tr>
<tr>
 <td>직위</td>
 <td><jsp:getProperty property="position" name="bean"/></td>
 <td>작성자명</td>
 <td><jsp:getProperty property="writer" name="bean"/></td>
 <td>e-mail</td>
 <td colspan="2"><jsp:getProperty property="email" name="bean"/></td>
</tr>
<tr> 
 <td colspan="9">일반현황</td>
</tr> 
 <tr>
  <td colspan ="2">설립연도</td>
  <td><jsp:getProperty property="establishyear" name="bean"/>년</td>
  <td>상시종업원수</td>
  <td colspan ="2"><jsp:getProperty property="workernum" name="bean"/>명</td
  ><td>연구개발인력수</td>
  <td colspan ="2"><jsp:getProperty property="researchernum" name="bean"/>명</td>
 </tr>
 <tr>
  <td colspan ="2">기업규모</td>
  <td colspan ="8">
   <jsp:getProperty property="bigsmall" name="bean"/>
  </td>
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
  <td ><jsp:getProperty property="employeenum" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="man" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="woman" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="overseas" name="bean"/></td>
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
  <td><jsp:getProperty property="management" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="technology" name="bean"/></td>
  <td><jsp:getProperty property="production" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="development" name="bean"/></td>
  <td><jsp:getProperty property="etc" name="bean"/></td>
 </tr>
 <tr>
  <td colspan ="2">총매출액</td>
  <td colspan ="2">수출액</td>
  <td colspan ="2">영업이익</td>
  <td colspan ="3">연구개발투자액</td>
 </tr>
 <tr>
  <td colspan ="2"><jsp:getProperty property="totalmoney" name="bean"/>백만원</td>
  <td colspan ="2"><jsp:getProperty property="exportmoney" name="bean"/>백만원</td>
  <td colspan ="2"><jsp:getProperty property="income" name="bean"/>백만원</td>
  <td colspan ="3"><jsp:getProperty property="developmentmoney" name="bean"/>백만원</td>
 </tr>

 <tr><td colspan ="2">주력업종(매출 1위)</td><td colspan ="7">
 <jsp:getProperty property="major" name="bean"/>
 </td>
 </tr>
 <tr>
 <td colspan ="2">주생산품</td>
 <td colspan ="7"><jsp:getProperty property="mainproduction" name="bean"/></td>
 </tr>
 <tr>
  <td >보유기술현황</td>
  <td>특허출원</td>
  <td><jsp:getProperty property="patent" name="bean"/>건</td>
  <td>특허등록</td>
  <td><jsp:getProperty property="patentregister" name="bean"/>건</td>
  <td>실용신안</td>
  <td><jsp:getProperty property="utilitymodel" name="bean"/>건</td>
  <td>미출원기술</td>
  <td><jsp:getProperty property="nonpatent" name="bean"/>건</td>
 <tr>
 <tr>
  <td colspan ="2">기술유출관련소송경험</td>
  <td colspan ="7">최근3년간  <jsp:getProperty property="lawsuit" name="bean"/>건</td>
 </tr>
</table>
<input type="button" value="다시 조회" onClick="javascript:location.href='MainPage.jsp'">
</form>
</body>
</html>
