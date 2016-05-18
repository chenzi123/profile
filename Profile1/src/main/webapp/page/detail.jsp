<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>档案明细</title>
</head>
<body>
<form action="profile_detail.aciotn" style="margin:80px auto;width:360px; ">
<table border="1">
	<tr>
		<td>编号</td>
		<td>${sessionScope.detailProfile.id }</td>
	</tr>
	<tr>
		<td>姓名</td>
		<td>${sessionScope.detailProfile.name }</td>
	</tr>
	<tr>
		<td>生日</td>
		<td>${sessionScope.detailProfile.birthday }</td>
	</tr>
	<tr>
		<td>性别</td>
		<td>${sessionScope.detailProfile.gender }</td>
	</tr>
	<tr>
		<td>职业</td>
		<td>${sessionScope.detailProfile.career }</td>
	</tr>
	<tr>
		<td>住所</td>
		<td>${sessionScope.detailProfile.address }</td>
	</tr>
	<tr>
		<td>电话</td>
		<td>${sessionScope.detailProfile.mobile }</td>
	</tr>
</table>

<a href="profile_list.action"><input type="button" value="返回"></a>
</form>
</body>
</html>