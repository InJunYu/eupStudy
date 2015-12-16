<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "BusinessInformation.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    request.setCharacterEncoding("EUC-KR"); 
%>
<jsp:useBean id="dao" class="BusinessInformation.CompanyDAO" scope="page"></jsp:useBean>
<%
String CN = request.getParameter("companyname"); 
String NA = request.getParameter("name"); 

Vector veclist = dao.select(CN,NA);
BIBean bean = (BIBean)veclist.get(0);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>기업 정보 조회 확인</title>
<script language="JavaScript">
function updatepage(formName){
	formName.action="UpdatePage.jsp";
	formName.submit();
}
function deletepage(formName){
	formName.action="DeletePage.jsp";
	formName.submit();
}
</script>

</head>
<body>
기업 정보 조회 확인
<form name="seform" method="post" >
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>회사명</td>
 <td colspan="3"><%= bean.getCompanyname() %></td>
 <td>대표자명</td>
 <td colspan="4"><%= bean.getName() %></td> 
</tr>
<tr>
 <td>주소</td>
 <td colspan="5"><%= bean.getAdress() %></td>
 <td>전화</td>
 <td colspan="2"><%= bean.getPhone() %></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">담당자</td>
 <td>부서명</td>
 <td><%= bean.getDepartment() %></td>
 <td>담당업무</td>
 <td><%= bean.getTakecharge() %></td>
 <td>팩스</td>
 <td colspan="2"><%= bean.getFax() %></td>
</tr>
<tr>
 <td>직위</td>
 <td><%= bean.getPosition() %></td>
 <td>작성자명</td>
 <td><%= bean.getWriter() %></td>
 <td>e-mail</td>
 <td colspan="2"><%= bean.getEmail() %></td>
</tr>
<tr> 
 <td colspan="9">일반현황</td>
</tr> 
 <tr>
  <td colspan ="2">설립연도</td>
  <td><%= bean.getEstablishyear() %>년</td>
  <td>상시종업원수</td>
  <td colspan ="2"><%= bean.getWorkernum() %>명</td
  ><td>연구개발인력수</td>
  <td colspan ="2"><%= bean.getResearchernum() %>명</td>
 </tr>
 <tr>
  <td colspan ="2">기업규모</td>
  <td colspan ="8">
   <%= bean.getBigsmall() %>
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
  <td ><%= bean.getEmployeenum() %></td>
  <td colspan ="2"><%= bean.getMan() %></td>
  <td colspan ="2"><%= bean.getWoman() %></td>
  <td colspan ="2"><%= bean.getOverseas() %></td>
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
  <td><%= bean.getManagement() %></td>
  <td colspan ="2"><%= bean.getTechnology() %></td>
  <td><%= bean.getProduction() %></td>
  <td colspan ="2"><%= bean.getDevelopment() %></td>
  <td><%= bean.getEtc() %></td>
 </tr>
 <tr>
  <td colspan ="2">총매출액</td>
  <td colspan ="2">수출액</td>
  <td colspan ="2">영업이익</td>
  <td colspan ="3">연구개발투자액</td>
 </tr>
 <tr>
  <td colspan ="2"><%= bean.getTotalmoney() %>백만원</td>
  <td colspan ="2"><%= bean.getExportmoney() %>백만원</td>
  <td colspan ="2"><%= bean.getIncome() %>백만원</td>
  <td colspan ="3"><%= bean.getDevelopmentmoney() %>백만원</td>
 </tr>

<tr>
 <td colspan ="2">주력업종(매출 1위)</td>
 <td colspan ="7"><%= bean.getMajor() %></td>
</tr>
 <tr>
 <td colspan ="2">주생산품</td>
 <td colspan ="7"><%= bean.getMainproduction() %></td>
 </tr>
 <tr>
  <td >보유기술현황</td>
  <td>특허출원</td>
  <td><%= bean.getPatent() %>건</td>
  <td>특허등록</td>
  <td><%= bean.getPatentregister() %>건</td>
  <td>실용신안</td>
  <td><%= bean.getUtilitymodel() %>건</td>
  <td>미출원기술</td>
  <td><%= bean.getNonpatent() %>건</td>
 <tr>
 <tr>
  <td colspan ="2">기술유출관련소송경험</td>
  <td colspan ="7">최근3년간  <%= bean.getLawsuit() %>건</td>
 </tr>
</table>
<input type="hidden" name="CoN" value="<%=CN%>">
<input type="hidden" name="Na" value="<%=NA%>">
<input type="button" value="정보 수정" onClick="updatepage(this.form)">
<input type="button" value="정보 삭제" onClick="deletepage(this.form)">
<input type="button" value="다시 조회" onClick="javascript:location.href='MainPage.jsp'">


</form>
</body>
</html>