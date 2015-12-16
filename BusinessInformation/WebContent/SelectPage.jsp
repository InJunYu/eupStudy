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
<title>��� ���� ��ȸ Ȯ��</title>
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
��� ���� ��ȸ Ȯ��
<form name="seform" method="post" >
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>ȸ���</td>
 <td colspan="3"><%= bean.getCompanyname() %></td>
 <td>��ǥ�ڸ�</td>
 <td colspan="4"><%= bean.getName() %></td> 
</tr>
<tr>
 <td>�ּ�</td>
 <td colspan="5"><%= bean.getAdress() %></td>
 <td>��ȭ</td>
 <td colspan="2"><%= bean.getPhone() %></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">�����</td>
 <td>�μ���</td>
 <td><%= bean.getDepartment() %></td>
 <td>������</td>
 <td><%= bean.getTakecharge() %></td>
 <td>�ѽ�</td>
 <td colspan="2"><%= bean.getFax() %></td>
</tr>
<tr>
 <td>����</td>
 <td><%= bean.getPosition() %></td>
 <td>�ۼ��ڸ�</td>
 <td><%= bean.getWriter() %></td>
 <td>e-mail</td>
 <td colspan="2"><%= bean.getEmail() %></td>
</tr>
<tr> 
 <td colspan="9">�Ϲ���Ȳ</td>
</tr> 
 <tr>
  <td colspan ="2">��������</td>
  <td><%= bean.getEstablishyear() %>��</td>
  <td>�����������</td>
  <td colspan ="2"><%= bean.getWorkernum() %>��</td
  ><td>���������η¼�</td>
  <td colspan ="2"><%= bean.getResearchernum() %>��</td>
 </tr>
 <tr>
  <td colspan ="2">����Ը�</td>
  <td colspan ="8">
   <%= bean.getBigsmall() %>
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
  <td ><%= bean.getEmployeenum() %></td>
  <td colspan ="2"><%= bean.getMan() %></td>
  <td colspan ="2"><%= bean.getWoman() %></td>
  <td colspan ="2"><%= bean.getOverseas() %></td>
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
  <td><%= bean.getManagement() %></td>
  <td colspan ="2"><%= bean.getTechnology() %></td>
  <td><%= bean.getProduction() %></td>
  <td colspan ="2"><%= bean.getDevelopment() %></td>
  <td><%= bean.getEtc() %></td>
 </tr>
 <tr>
  <td colspan ="2">�Ѹ����</td>
  <td colspan ="2">�����</td>
  <td colspan ="2">��������</td>
  <td colspan ="3">�����������ھ�</td>
 </tr>
 <tr>
  <td colspan ="2"><%= bean.getTotalmoney() %>�鸸��</td>
  <td colspan ="2"><%= bean.getExportmoney() %>�鸸��</td>
  <td colspan ="2"><%= bean.getIncome() %>�鸸��</td>
  <td colspan ="3"><%= bean.getDevelopmentmoney() %>�鸸��</td>
 </tr>

<tr>
 <td colspan ="2">�ַ¾���(���� 1��)</td>
 <td colspan ="7"><%= bean.getMajor() %></td>
</tr>
 <tr>
 <td colspan ="2">�ֻ���ǰ</td>
 <td colspan ="7"><%= bean.getMainproduction() %></td>
 </tr>
 <tr>
  <td >���������Ȳ</td>
  <td>Ư�����</td>
  <td><%= bean.getPatent() %>��</td>
  <td>Ư����</td>
  <td><%= bean.getPatentregister() %>��</td>
  <td>�ǿ�ž�</td>
  <td><%= bean.getUtilitymodel() %>��</td>
  <td>��������</td>
  <td><%= bean.getNonpatent() %>��</td>
 <tr>
 <tr>
  <td colspan ="2">���������üҼ۰���</td>
  <td colspan ="7">�ֱ�3�Ⱓ  <%= bean.getLawsuit() %>��</td>
 </tr>
</table>
<input type="hidden" name="CoN" value="<%=CN%>">
<input type="hidden" name="Na" value="<%=NA%>">
<input type="button" value="���� ����" onClick="updatepage(this.form)">
<input type="button" value="���� ����" onClick="deletepage(this.form)">
<input type="button" value="�ٽ� ��ȸ" onClick="javascript:location.href='MainPage.jsp'">


</form>
</body>
</html>