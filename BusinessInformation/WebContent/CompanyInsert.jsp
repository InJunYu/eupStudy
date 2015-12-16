<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>기업정보 입력</title>
<script type="text/javascript">
	function insertCheck() {
		if (document.cominsert.companyname.value == "") {
			alert("회사명을 입력해 주세요.");
			document.cominsert.companyname.focus();
			return;
		}
		if (document.cominsert.name.value == "") {
			alert("대표자명을 입력해 주세요.");
			document.cominsert.name.focus();
			return;
		}
		document.cominsert.submit();
	}
</script>
</head>
<body>
<form name="cominsert" method="post" action="InsertConfirm.jsp">
기업 정보 입력
<table border="1" cellpadding="20" cellspacing="0">
<tr>
 <td>회사명</td>
 <td colspan="3"><input type="text" name="companyname"></td>
 <td>대표자명</td>
 <td colspan="4" ><input type="text" name="name"></td> 
</tr>
<tr>
 <td>주소</td>
 <td colspan="5"><input type="text" name="adress"></td>
 <td>전화</td>
 <td colspan="2"><input type="text" name="phone"></td> 
</tr>
<tr >
 <td rowspan="2" colspan="2">담당자</td>
 <td>부서명</td>
 <td><input type="text" name="department"></td>
 <td>담당업무</td>
 <td><input type="text" name="takecharge"></td>
 <td>팩스</td>
 <td colspan="2"><input type="text" name="fax"></td>
</tr>
<tr>
 <td>직위</td>
 <td><input type="text" name="position"></td>
 <td>작성자명</td>
 <td><input type="text" name="writer"></td>
 <td>e-mail</td>
 <td colspan="2"><input type="text" name="email"></td>
</tr>
<tr> 
 <td colspan="9">일반현황</td>
</tr> 
 <tr>
  <td colspan ="2">설립연도</td>
  <td><input type="text" name="establishyear">년</td>
  <td>상시종업원수</td>
  <td colspan ="2"><input type="text" name="workernum">명</td>
  <td>연구개발인력수</td>
  <td colspan ="2"><input type="text" name="researchernum">명</td>
 </tr>
 <tr>
  <td colspan ="2">기업규모</td>
  <td colspan ="8">
   <input type="radio" name="bigsmall" value="대기업"/>대기업
 <input type="radio" name="bigsmall" value="중소기업"/>중소기업
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
  <td ><input type="text" name="employeenum">명</td>
  <td colspan ="2"><input type="text" name="man">명</td>
  <td colspan ="2"><input type="text" name="woman">명</td>
  <td colspan ="2"><input type="text" name="overseas">명</td>
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
  <td><input type="text" name="management">명</td>
  <td colspan ="2"><input type="text" name="technology">명</td>
  <td><input type="text" name="production">명</td>
  <td colspan ="2"><input type="text" name="development">명</td>
  <td><input type="text" name="etc">명</td>
 </tr>
 <tr>
  <td colspan ="2">총매출액</td>
  <td colspan ="2">수출액</td>
  <td colspan ="2">영업이익</td>
  <td colspan ="3">연구개발투자액</td>
 </tr>
 <tr>
  <td colspan ="2"><input type="text" name="totalmoney">백만원</td>
  <td colspan ="2"><input type="text" name="exportmoney">백만원</td>
  <td colspan ="2"><input type="text" name="income">백만원</td>
  <td colspan ="3"><input type="text" name="developmentmoney">백만원</td>
 </tr>

 <tr><td colspan ="2">주력업종(매출 1위)</td><td colspan ="7">
 <input type="radio" name="major" value="기계/소재"/>기계/소재
 <input type="radio" name="major" value="전기/전자"/>전기/전자
 <input type="radio" name="major" value="제조"/>제조
 <input type="radio" name="major" value="화학"/>화학
 <input type="radio" name="major" value="금속"/>금속
 <input type="radio" name="major" value="음료/식품"/>음료/식품
 <input type="radio" name="major" value="섬유"/>섬유
 <input type="radio" name="major" value="가구/목재/출판"/>가구/목재/출판<br/>
 <input type="radio" name="major" value="바이오/의료/정밀/광학"/>바이오/의료/정밀/광학
 <input type="radio" name="major" value="건설업"/>건설업
 <input type="radio" name="major" value="사업서비스업"/>사업서비스업
 <input type="radio" name="major" value="정보/통신"/>정보/통신
 <input type="radio" name="major" value="에너지자원"/>에너지자원
 <input type="radio" name="major" value="지식서비스"/>지식서비스
 <input type="radio" name="major" value="기타"/>기타<br/> 
 </td>
 </tr>
 <tr>
 <td colspan ="2">주생산품</td>
 <td colspan ="7"><input type="text" name="mainproduction"></td>
 </tr>
 <tr>
  <td >보유기술현황</td>
  <td>특허출원</td>
  <td><input type="text" name="patent">건</td>
  <td>특허등록</td>
  <td><input type="text" name="patentregister">건</td>
  <td>실용신안</td>
  <td><input type="text" name="utilitymodel">건</td>
  <td>미출원기술</td>
  <td><input type="text" name="nonpatent">건</td>
 <tr>
 <tr>
  <td colspan ="2">기술유출관련소송경험</td>
  <td colspan ="7">최근3년간<input type="text" name="lawsuit">건</td>
 </tr>
</table>
<input type="button" value="입력하기" onclick="insertCheck()">
<input type="button" value="다시 조회" onClick="javascript:location.href='MainPage.jsp'">
</form>
</body>
</html>
