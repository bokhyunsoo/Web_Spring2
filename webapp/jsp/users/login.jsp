<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>

<%@ include file="../commons/_header.jspf" %>

</head>
<body>

	<%@ include file="../commons/_top.jspf" %>

	<div class="container" id="main">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-lg-10 col-lg-offset-1">
				<div class="panel panel-default qna-list">

					<section id="typography">
					<div class="page-header">

						<h1 align="center">로그인</h1>
					</div>
					
					<form:form modelAttribute="authenticate" cssClass="form-horizontal" action="/users/login" method="post" align="center">
					<div class="control-group">
							<label class="control-label" for="userId">사용자 아이디</label>
							<div class="controls">
								<form:input path="userId" />
								<br/>
								<form:errors path="userId" cssClass="error" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="password">비밀번호</label>
							<div class="controls">
								<form:password path="password" />
								<br/>
								<form:errors path="password" cssClass="error" />
							</div>
						</div>
						<c:if test="${not empty errorMessage}">
						<div class="control-group">
							<div class="controls">
								<div class="error">${errorMessage}</div>
							</div>
						</div>
						</c:if>
						<br />
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="btn btn-primary">로그인</button>
							</div>
						</div>
					</form:form>
					<br />
					<br />
				</div>
			</div>
		</div>


		<!-- script references -->
		<script src="/javascripts/jquery-2.2.0.min.js"></script>
		<script src="/javascripts/bootstrap.min.js"></script>
</body>
</html>