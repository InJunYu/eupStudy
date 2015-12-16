<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>메인 페이지</title>
<script type="text/javascript">
	function selectCheck() {
		if (document.select.companyname.value == "") {
			alert("회사명을 입력해 주세요.");
			document.select.companyname.focus();
			return;
		}
		if (document.select.name.value == "") {
			alert("대표자명을 입력해 주세요.");
			document.select.name.focus();
			return;
		}
		document.select.submit();
	}
</script>
</head>
<body>
기업 정보 조회 test
<form name="select" method="post" action="SelectPage.jsp">
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>회사명</td>
 <td ><input type="text" name="companyname"></td>
</tr>
<tr>
 <td>대표자명</td>
 <td ><input type="text" name="name"></td> 
</tr>
<tr>
 <td ><input type="button" value="기업 등록" onClick="javascript:location.href='CompanyInsert.jsp'"></td>
 <td ><input type="button" value="기업 조회" onclick="selectCheck()"></td>
</tr>
</table>
</form>
</body>
</html>