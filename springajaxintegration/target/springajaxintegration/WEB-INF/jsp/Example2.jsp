<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- Spring security taglibs--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html>
<head>
	<title>Spring MVC + AJAX Integration</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
<h2 style="text-align: justify;">Auto-loading of cities when state is selected from drop-down box.</h2>
<br><br>
				<select name="state" id="state"onblur="getCitiesForSelectedState()">
					<option value="Select State">Select State</option>
					<c:forEach items="${stateList}" var="stateList">
						<option value="${stateList.stateName}">${stateList.stateName}</option>
					</c:forEach>
				</select>
<div class="springajax" style="width:450px; height:150px;">
	<table>
		<tr>
			<td>Fields</td>
			<td>Details</td>
		</tr>
		<tr>
			<td>Select State</td>
			<td>
				
			</td>
		</tr>
		<tr>
			<td>Select City</td>
			<td>
				<select id="city" name="city">
					<option value="Select City">Select City</option>
				</select>
				<div id="loading"></div>
			</td>
		</tr>
	</table><br>
	<div align="center">
		<input type="reset">&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</div><br><br><br><br><br><br>
<div align="center">
	<a href="${pageContext.request.contextPath}/">Go Back to Main Menu</a>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/example1.js"></script>
</body>
</html>
