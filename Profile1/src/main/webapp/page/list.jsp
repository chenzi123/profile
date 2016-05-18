<%@ page contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>档案列表</title>
</head>
<body>
	<table border="1">
		<tr style="background-color:yellow">
			<td>编号</td>
			<td>姓名</td>
			<td>生日</td>
			<td>性别</td>
			<td>职业</td>
			<td>住所</td>
			<td>电话</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${sessionScope.profile }" var="pro">
			<tr>
				<td>${pro.id }</td>
				<td>${pro.name }</td>
				<td>${pro.birthday }</td>
				<td>${pro.gender }</td>
				<td>${pro.career }</td>
				<td>${pro.address }</td>
				<td>${pro.mobile }</td>
				<td>
					<a href="profile_detail?id=${pro.id }"><input type="button" value="明细"></a>
					<a href="profile_update?id=${pro.id }"><input type="button" value="修改"></a>
				</td>
			</tr>
		</c:forEach>	
	</table>

</body>
</html>