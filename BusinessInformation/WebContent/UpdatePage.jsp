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
<title>��� ���� ����</title>
</head>
<body>
��� ���� ����
<form name="upform" method="post" action="UpdateConfirm.jsp" >
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>ȸ���</td>
 <td colspan="3"><input type="text" name="companyname" value="<%= bean.getCompanyname() %>"></td>
 <td>��ǥ�ڸ�</td>
 <td colspan="4"><input type="text" name="name" value="<%= bean.getName() %>"></td> 
</tr>
<tr>
 <td>�ּ�</td>
 <td colspan="5"><input type="text" name="adress" value="<%= bean.getAdress() %>"></td>
 <td>��ȭ</td>
 <td colspan="2"><input type="text" name="phone" value="<%= bean.getPhone() %>"></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">�����</td>
 <td>�μ���</td>
 <td><input type="text" name="department" value="<%= bean.getDepartment() %>"></td>
 <td>������</td>
 <td><input type="text" name="takecharge" value="<%= bean.getTakecharge() %>"></td>
 <td>�ѽ�</td>
 <td colspan="2"><input type="text" name="fax" value="<%= bean.getFax() %>"></td>
</tr>
<tr>
 <td>����</td>
 <td><input type="text" name="position" value="<%= bean.getPosition() %>"></td>
 <td>�ۼ��ڸ�</td>
 <td><input type="text" name="writer" value="<%= bean.getWriter() %>"></td>
 <td>e-mail</td>
 <td colspan="2"><input type="text" name="email" value="<%= bean.getEmail() %>"></td>
</tr>
<tr> 
 <td colspan="9">�Ϲ���Ȳ</td>
</tr> 
 <tr>
  <td colspan ="2">��������</td>
  <td><input type="text" name="establishyear" value="<%= bean.getEstablishyear() %>">��</td>
  <td>�����������</td>
  <td colspan ="2"><input type="text" name="workernum" value="<%= bean.getWorkernum() %>">��</td
  ><td>���������η¼�</td>
  <td colspan ="2"><input type="text" name="researchernum" value="<%= bean.getResearchernum() %>">��</td>
 </tr>
 <tr>
  <td colspan ="2">����Ը�</td>
  <td colspan ="8">
   <input type="text" name="bigsmall" value="<%= bean.getBigsmall() %>"> </td>
 </tr>
 <tr>
  <td rowspan="4">������ ��Ȳ</td>
  <td rowspan="2">�ο���</td>
  <td>�����������</td>
  <td colspan ="2">��</td>
  <td colspan ="2">��</td>
  <td colspan ="2">�ؿ��η��İ߼�</td>
 </tr>
 <tr>
  <td ><input type="text" name="employeenum" value="<%= bean.getEmployeenum() %>"></td>
  <td colspan ="2"><input type="text" name="man" value="<%= bean.getMan() %>"></td>
  <td colspan ="2"><input type="text" name="woman" value="<%= bean.getWoman() %>"></td>
  <td colspan ="2"><input type="text" name="overseas" value="<%= bean.getOverseas() %>"></td>
 </tr>
 <tr>
  <td rowspan="2">�ι���</td>
  <td>������</td>
  <td colspan ="2">�����</td>
  <td>������</td>
  <td colspan ="2">������</td>
  <td>��Ÿ</td>
 </tr>
 <tr>
  <td><input type="text" name="management" value="<%= bean.getManagement() %>"></td>
  <td colspan ="2"><input type="text" name="technology" value="<%= bean.getTechnology() %>"></td>
  <td><input type="text" name="production" value="<%= bean.getProduction() %>"></td>
  <td colspan ="2"><input type="text" name="development" value="<%= bean.getDevelopment() %>"></td>
  <td><input type="text" name="etc" value="<%=  bean.getEtc() %>"></td>
 </tr>
 <tr>
  <td colspan ="2">�Ѹ����</td>
  <td colspan ="2">�����</td>
  <td colspan ="2">��������</td>
  <td colspan ="3">�����������ھ�</td>
 </tr>
 <tr>
  <td colspan ="2"><input type="text" name="totalmoney" value="<%= bean.getTotalmoney() %>">�鸸��</td>
  <td colspan ="2"><input type="text" name="exportmoney" value="<%= bean.getExportmoney() %>">�鸸��</td>
  <td colspan ="2"><input type="text" name="income" value="<%= bean.getIncome() %>">�鸸��</td>
  <td colspan ="3"><input type="text" name="developmentmoney" value="<%= bean.getDevelopmentmoney() %>">�鸸��</td>
 </tr>

<tr>
 <td colspan ="2">�ַ¾���(���� 1��)</td>
 <td colspan ="7"><input type="text" name="major" value="<%=bean.getMajor() %>"></td>
</tr>
 <tr>
 <td colspan ="2">�ֻ���ǰ</td>
 <td colspan ="7"><input type="text" name="mainproduction" value="<%=bean.getMainproduction() %>"></td>
 </tr>
 <tr>
  <td >���������Ȳ</td>
  <td>Ư�����</td>
  <td><input type="text" name="patent" value="<%= bean.getPatent() %>">��</td>
  <td>Ư����</td>
  <td><input type="text" name="patentregister" value="<%= bean.getPatentregister() %>">��</td>
  <td>�ǿ�ž�</td>
  <td><input type="text" name="utilitymodel" value="<%=bean.getUtilitymodel() %>">��</td>
  <td>��������</td>
  <td><input type="text" name="nonpatent" value="<%= bean.getNonpatent() %>">��</td>
 <tr>
 <tr>
  <td colspan ="2">���������üҼ۰���</td>
  <td colspan ="7">�ֱ�3�Ⱓ  <input type="text" name="lawsuit" value="<%= bean.getLawsuit() %>">��</td>
 </tr>
</table>
<input type="submit" value="���� �ϱ�" >
<input type="button" value="��ȸ �ϱ�" onClick="javascript:location.href='MainPage.jsp'">
</form>
</body>
</html>