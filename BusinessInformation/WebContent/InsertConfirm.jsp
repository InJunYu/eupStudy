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
<title>������� �Է� Ȯ��</title>
</head>
<body>
<form name="confirm" method="post" action="">
��� ���� �Է� Ȯ��
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>ȸ���</td>
 <td colspan="3"><jsp:getProperty property="companyname" name="bean"/></td>
 <td>��ǥ�ڸ�</td>
 <td colspan="4"><jsp:getProperty property="name" name="bean"/></td> 
</tr>
<tr>
 <td>�ּ�</td>
 <td colspan="5"><jsp:getProperty property="adress" name="bean"/></td>
 <td>��ȭ</td>
 <td colspan="2"><jsp:getProperty property="phone" name="bean"/></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">�����</td>
 <td>�μ���</td>
 <td><jsp:getProperty property="department" name="bean"/></td>
 <td>������</td>
 <td><jsp:getProperty property="takecharge" name="bean"/></td>
 <td>�ѽ�</td>
 <td colspan="2"><jsp:getProperty property="fax" name="bean"/></td>
</tr>
<tr>
 <td>����</td>
 <td><jsp:getProperty property="position" name="bean"/></td>
 <td>�ۼ��ڸ�</td>
 <td><jsp:getProperty property="writer" name="bean"/></td>
 <td>e-mail</td>
 <td colspan="2"><jsp:getProperty property="email" name="bean"/></td>
</tr>
<tr> 
 <td colspan="9">�Ϲ���Ȳ</td>
</tr> 
 <tr>
  <td colspan ="2">��������</td>
  <td><jsp:getProperty property="establishyear" name="bean"/>��</td>
  <td>�����������</td>
  <td colspan ="2"><jsp:getProperty property="workernum" name="bean"/>��</td
  ><td>���������η¼�</td>
  <td colspan ="2"><jsp:getProperty property="researchernum" name="bean"/>��</td>
 </tr>
 <tr>
  <td colspan ="2">����Ը�</td>
  <td colspan ="8">
   <jsp:getProperty property="bigsmall" name="bean"/>
  </td>
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
  <td ><jsp:getProperty property="employeenum" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="man" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="woman" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="overseas" name="bean"/></td>
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
  <td><jsp:getProperty property="management" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="technology" name="bean"/></td>
  <td><jsp:getProperty property="production" name="bean"/></td>
  <td colspan ="2"><jsp:getProperty property="development" name="bean"/></td>
  <td><jsp:getProperty property="etc" name="bean"/></td>
 </tr>
 <tr>
  <td colspan ="2">�Ѹ����</td>
  <td colspan ="2">�����</td>
  <td colspan ="2">��������</td>
  <td colspan ="3">�����������ھ�</td>
 </tr>
 <tr>
  <td colspan ="2"><jsp:getProperty property="totalmoney" name="bean"/>�鸸��</td>
  <td colspan ="2"><jsp:getProperty property="exportmoney" name="bean"/>�鸸��</td>
  <td colspan ="2"><jsp:getProperty property="income" name="bean"/>�鸸��</td>
  <td colspan ="3"><jsp:getProperty property="developmentmoney" name="bean"/>�鸸��</td>
 </tr>

 <tr><td colspan ="2">�ַ¾���(���� 1��)</td><td colspan ="7">
 <jsp:getProperty property="major" name="bean"/>
 </td>
 </tr>
 <tr>
 <td colspan ="2">�ֻ���ǰ</td>
 <td colspan ="7"><jsp:getProperty property="mainproduction" name="bean"/></td>
 </tr>
 <tr>
  <td >���������Ȳ</td>
  <td>Ư�����</td>
  <td><jsp:getProperty property="patent" name="bean"/>��</td>
  <td>Ư����</td>
  <td><jsp:getProperty property="patentregister" name="bean"/>��</td>
  <td>�ǿ�ž�</td>
  <td><jsp:getProperty property="utilitymodel" name="bean"/>��</td>
  <td>��������</td>
  <td><jsp:getProperty property="nonpatent" name="bean"/>��</td>
 <tr>
 <tr>
  <td colspan ="2">���������üҼ۰���</td>
  <td colspan ="7">�ֱ�3�Ⱓ  <jsp:getProperty property="lawsuit" name="bean"/>��</td>
 </tr>
</table>
<input type="button" value="�ٽ� ��ȸ" onClick="javascript:location.href='MainPage.jsp'">
</form>
</body>
</html>
