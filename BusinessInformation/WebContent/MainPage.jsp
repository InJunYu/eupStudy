<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ������</title>
<script type="text/javascript">
	function selectCheck() {
		if (document.select.companyname.value == "") {
			alert("ȸ����� �Է��� �ּ���.");
			document.select.companyname.focus();
			return;
		}
		if (document.select.name.value == "") {
			alert("��ǥ�ڸ��� �Է��� �ּ���.");
			document.select.name.focus();
			return;
		}
		document.select.submit();
	}
</script>
</head>
<body>
��� ���� ��ȸ test
<form name="select" method="post" action="SelectPage.jsp">
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>ȸ���</td>
 <td ><input type="text" name="companyname"></td>
</tr>
<tr>
 <td>��ǥ�ڸ�</td>
 <td ><input type="text" name="name"></td> 
</tr>
<tr>
 <td ><input type="button" value="��� ���" onClick="javascript:location.href='CompanyInsert.jsp'"></td>
 <td ><input type="button" value="��� ��ȸ" onclick="selectCheck()"></td>
</tr>
</table>
</form>
</body>
</html>