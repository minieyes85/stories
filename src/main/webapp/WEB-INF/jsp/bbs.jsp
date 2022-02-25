<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<link rel="stylesheet" href="/static/css/main.css" type="text/css">
<link rel="stylesheet" href="/static/css/bbs.css" type="text/css">

<meta charset="UTF-8">
<title>Stories</title>
</head>
<body>
	
	<c:import url="/WEB-INF/jsp/include/header.jsp"></c:import>

	<section class="d-flex justify-content-center">
		<div id="mainForm" class="bg-danger container">
			<div class="bg-warning mt-3 mb-2">
			${bbs.title}			
			</div>
			
			<div class="bg-secondary mb-2">
				<c:forEach var="category" items="${categories }">
					${category.title }
				</c:forEach>
			</div>
			
			<div class="bg-success mb-2 d-flex justify-content-between">
				<i class="bi bi-search"></i>
				<i class="bi bi-pencil-square"></i>
			</div>
			
			<div class="bg-info">
				<table class="table table-sm">
					<thead class="text-center">
						<tr>
							<td id="theadTitle">제목</td>
							<td id="theadUserName">작성자</td>
							<td id="theadRecommend">추천 수</td>
							<td id="theadDate">날짜</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="article" items="${articles }">
						<tr>
							<td>
								${article.categoryName }
								${article.title }
							</td>
							<td class="text-center">
								${article.userName }
							</td>
							<td>
							</td>
							<td class="text-center">
								<fmt:formatDate value="${article.createdAt }" pattern="yy-MM-dd HH:mm"/>
							</td>
						</tr>
				</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	
	
	
	</section>
	
	<c:import url="/WEB-INF/jsp/include/footer.jsp"></c:import>

	

</body>
</html>