<%@page import="BusinessInformation.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
           <%
    request.setCharacterEncoding("EUC-KR"); 
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="updao" class="BusinessInformation.CompanyDAO"></jsp:useBean>
<jsp:useBean id="upbean" class="BusinessInformation.BIBean" scope="page"/>
<jsp:setProperty  name="upbean" property="*" />
<%
String update = "update";
updao.INorUP(upbean,update);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������� ���� Ȯ��</title>
</head>
<body>
<form name="UPconfirm" method="post" action="">
��� ���� ���� Ȯ��
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>ȸ���</td>
 <td colspan="3"><jsp:getProperty property="companyname" name="upbean"/></td>
 <td>��ǥ�ڸ�</td>
 <td colspan="4"><jsp:getProperty property="name" name="upbean"/></td> 
</tr>
<tr>
 <td>�ּ�</td>
 <td colspan="5"><jsp:getProperty property="adress" name="upbean"/></td>
 <td>��ȭ</td>
 <td colspan="2"><jsp:getProperty property="phone" name="upbean"/></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">�����</td>
 <td>�μ���</td>
 <td><jsp:getProperty property="department" name="upbean"/></td>
 <td>������</td>
 <td><jsp:getProperty property="takecharge" name="upbean"/></td>
 <td>�ѽ�</td>
 <td colspan="2"><jsp:getProperty property="fax" name="upbean"/></td>
</tr>
<tr>
 <td>����</td>
 <td><jsp:getProperty property="position" name="upbean"/></td>
 <td>�ۼ��ڸ�</td>
 <td><jsp:getProperty property="writer" name="upbean"/></td>
 <td>e-mail</td>
 <td colspan="2"><jsp:getProperty property="email" name="upbean"/></td>
</tr>
<tr> 
 <td colspan="9">�Ϲ���Ȳ</td>
</tr> 
 <tr>
  <td colspan ="2">��������</td>
  <td><jsp:getProperty property="establishyear" name="upbean"/>��</td>
  <td>�����������</td>
  <td colspan ="2"><jsp:getProperty property="workernum" name="upbean"/>��</td
  ><td>���������η¼�</td>
  <td colspan ="2"><jsp:getProperty property="researchernum" name="upbean"/>��</td>
 </tr>
 <tr>
  <td colspan ="2">����Ը�</td>
  <td colspan ="8">
   <jsp:getProperty property="bigsmall" name="upbean"/>
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
  <td ><jsp:getProperty property="employeenum" name="upbean"/></td>
  <td colspan ="2"><jsp:getProperty property="man" name="upbean"/></td>
  <td colspan ="2"><jsp:getProperty property="woman" name="upbean"/></td>
  <td colspan ="2"><jsp:getProperty property="overseas" name="upbean"/></td>
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
  <td><jsp:getProperty property="management" name="upbean"/></td>
  <td colspan ="2"><jsp:getProperty property="technology" name="upbean"/></td>
  <td><jsp:getProperty property="production" name="upbean"/></td>
  <td colspan ="2"><jsp:getProperty property="development" name="upbean"/></td>
  <td><jsp:getProperty property="etc" name="upbean"/></td>
 </tr>
 <tr>
  <td colspan ="2">�Ѹ����</td>
  <td colspan ="2">�����</td>
  <td colspan ="2">��������</td>
  <td colspan ="3">�����������ھ�</td>
 </tr>
 <tr>
  <td colspan ="2"><jsp:getProperty property="totalmoney" name="upbean"/>�鸸��</td>
  <td colspan ="2"><jsp:getProperty property="exportmoney" name="upbean"/>�鸸��</td>
  <td colspan ="2"><jsp:getProperty property="income" name="upbean"/>�鸸��</td>
  <td colspan ="3"><jsp:getProperty property="developmentmoney" name="upbean"/>�鸸��</td>
 </tr>

 <tr><td colspan ="2">�ַ¾���(���� 1��)</td><td colspan ="7">
 <jsp:getProperty property="major" name="upbean"/>
 </td>
 </tr>
 <tr>
 <td colspan ="2">�ֻ���ǰ</td>
 <td colspan ="7"><jsp:getProperty property="mainproduction" name="upbean"/></td>
 </tr>
 <tr>
  <td >���������Ȳ</td>
  <td>Ư�����</td>
  <td><jsp:getProperty property="patent" name="upbean"/>��</td>
  <td>Ư����</td>
  <td><jsp:getProperty property="patentregister" name="upbean"/>��</td>
  <td>�ǿ�ž�</td>
  <td><jsp:getProperty property="utilitymodel" name="upbean"/>��</td>
  <td>��������</td>
  <td><jsp:getProperty property="nonpatent" name="upbean"/>��</td>
 <tr>
 <tr>
  <td colspan ="2">���������üҼ۰���</td>
  <td colspan ="7">�ֱ�3�Ⱓ  <jsp:getProperty property="lawsuit" name="upbean"/>��</td>
 </tr>
</table>
<input type="button" value="�ٽ� ��ȸ" onClick="javascript:location.href='MainPage.jsp'">
</form>
</body>
</html>