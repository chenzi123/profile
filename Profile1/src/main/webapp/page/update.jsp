<%@ page  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta content="charset=utf-8">
<title>档案修改</title>
</head>
<body>
	<form action="profile_updates.action" style="margin:80px auto;width:360px; ">
		<table border="1">
			<tbody align="left">
			<tr>
				<td>编号</td>
				<td><input name="id" type="text" value="${sessionScope.profiles.id }" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input name="name" type="text" value="${sessionScope.profiles.name }" /></td>
			</tr>
			<tr>
				<td>生日</td>
				<td><input name="birthday" type="text" value="${sessionScope.profiles.birthday }" /></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><select name="gender" value="${sessionScope.profiles.gender }">
					<option>男</option>
					<option>女</option>
				</select>
			</tr>
			<tr>
				<td>职业</td>
				<td><input name="career" type="text" value="${sessionScope.profiles.career }" /></td>
			</tr>
			<tr>
				<td>住所</td>
				<td><input name="address" type="text" value="${sessionScope.profiles.address }" /></td>
			</tr>
			<tr>
				<td>电话</td>
				<td><input name="mobile" type="text" value="${sessionScope.profiles.mobile }" /></td>
			</tr>
			
			</tbody>
		</table><br/>
		<input type="submit" value="修改" />&nbsp;<a href="profile_list"><input type="button" value="返回"/></a>
	</form>
</body>
</html>