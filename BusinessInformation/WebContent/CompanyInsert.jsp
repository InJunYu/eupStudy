<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������� �Է�</title>
<script type="text/javascript">
	function insertCheck() {
		if (document.cominsert.companyname.value == "") {
			alert("ȸ����� �Է��� �ּ���.");
			document.cominsert.companyname.focus();
			return;
		}
		if (document.cominsert.name.value == "") {
			alert("��ǥ�ڸ��� �Է��� �ּ���.");
			document.cominsert.name.focus();
			return;
		}
		document.cominsert.submit();
	}
</script>
</head>
<body>
<form name="cominsert" method="post" action="InsertConfirm.jsp">
��� ���� �Է�
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>ȸ���</td>
 <td colspan="3"><input type="text" name="companyname"></td>
 <td>��ǥ�ڸ�</td>
 <td colspan="4" ><input type="text" name="name"></td> 
</tr>
<tr>
 <td>�ּ�</td>
 <td colspan="5"><input type="text" name="adress"></td>
 <td>��ȭ</td>
 <td colspan="2"><input type="text" name="phone"></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">�����</td>
 <td>�μ���</td>
 <td><input type="text" name="department"></td>
 <td>������</td>
 <td><input type="text" name="takecharge"></td>
 <td>�ѽ�</td>
 <td colspan="2"><input type="text" name="fax"></td>
</tr>
<tr>
 <td>����</td>
 <td><input type="text" name="position"></td>
 <td>�ۼ��ڸ�</td>
 <td><input type="text" name="writer"></td>
 <td>e-mail</td>
 <td colspan="2"><input type="text" name="email"></td>
</tr>
<tr> 
 <td colspan="9">�Ϲ���Ȳ</td>
</tr> 
 <tr>
  <td colspan ="2">��������</td>
  <td><input type="text" name="establishyear">��</td>
  <td>�����������</td>
  <td colspan ="2"><input type="text" name="workernum">��</td>
  <td>���������η¼�</td>
  <td colspan ="2"><input type="text" name="researchernum">��</td>
 </tr>
 <tr>
  <td colspan ="2">����Ը�</td>
  <td colspan ="8">
   <input type="radio" name="bigsmall" value="����"/>����
 <input type="radio" name="bigsmall" value="�߼ұ��"/>�߼ұ��
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
  <td ><input type="text" name="employeenum">��</td>
  <td colspan ="2"><input type="text" name="man">��</td>
  <td colspan ="2"><input type="text" name="woman">��</td>
  <td colspan ="2"><input type="text" name="overseas">��</td>
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
  <td><input type="text" name="management">��</td>
  <td colspan ="2"><input type="text" name="technology">��</td>
  <td><input type="text" name="production">��</td>
  <td colspan ="2"><input type="text" name="development">��</td>
  <td><input type="text" name="etc">��</td>
 </tr>
 <tr>
  <td colspan ="2">�Ѹ����</td>
  <td colspan ="2">�����</td>
  <td colspan ="2">��������</td>
  <td colspan ="3">�����������ھ�</td>
 </tr>
 <tr>
  <td colspan ="2"><input type="text" name="totalmoney">�鸸��</td>
  <td colspan ="2"><input type="text" name="exportmoney">�鸸��</td>
  <td colspan ="2"><input type="text" name="income">�鸸��</td>
  <td colspan ="3"><input type="text" name="developmentmoney">�鸸��</td>
 </tr>

 <tr><td colspan ="2">�ַ¾���(���� 1��)</td><td colspan ="7">
 <input type="radio" name="major" value="���/����"/>���/����
 <input type="radio" name="major" value="����/����"/>����/����
 <input type="radio" name="major" value="����"/>����
 <input type="radio" name="major" value="ȭ��"/>ȭ��
 <input type="radio" name="major" value="�ݼ�"/>�ݼ�
 <input type="radio" name="major" value="����/��ǰ"/>����/��ǰ
 <input type="radio" name="major" value="����"/>����
 <input type="radio" name="major" value="����/����/����"/>����/����/����<br/>
 <input type="radio" name="major" value="���̿�/�Ƿ�/����/����"/>���̿�/�Ƿ�/����/����
 <input type="radio" name="major" value="�Ǽ���"/>�Ǽ���
 <input type="radio" name="major" value="������񽺾�"/>������񽺾�
 <input type="radio" name="major" value="����/���"/>����/���
 <input type="radio" name="major" value="�������ڿ�"/>�������ڿ�
 <input type="radio" name="major" value="���ļ���"/>���ļ���
 <input type="radio" name="major" value="��Ÿ"/>��Ÿ<br/> 
 </td>
 </tr>
 <tr>
 <td colspan ="2">�ֻ���ǰ</td>
 <td colspan ="7"><input type="text" name="mainproduction"></td>
 </tr>
 <tr>
  <td >���������Ȳ</td>
  <td>Ư�����</td>
  <td><input type="text" name="patent">��</td>
  <td>Ư����</td>
  <td><input type="text" name="patentregister">��</td>
  <td>�ǿ�ž�</td>
  <td><input type="text" name="utilitymodel">��</td>
  <td>��������</td>
  <td><input type="text" name="nonpatent">��</td>
 <tr>
 <tr>
  <td colspan ="2">���������üҼ۰���</td>
  <td colspan ="7">�ֱ�3�Ⱓ<input type="text" name="lawsuit">��</td>
 </tr>
</table>
<input type="button" value="�Է��ϱ�" onclick="insertCheck()">
<input type="button" value="�ٽ� ��ȸ" onClick="javascript:location.href='MainPage.jsp'">
</form>
</body>
</html>
