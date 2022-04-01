<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="border.BorderDAO"%><!-- 사용자 라이브러리 -->
<%@ page import="border.Border"%><!-- 사용자 라이브러리 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바에서 자바스크립트 사용 -->
<%@ page import="java.util.ArrayList"%>
<!-- 자바에서 자바스크립트 사용 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자유게시판</title>
</head>
<body>



	<header class="header">

		<h1>자유게시판</h1>


	</header>

	<section>
		<!-- 로그인 양식 -->
		<div class="container">
			<div class="col-lg-12">
				<div class="jumbotron" style="margin-top: 20px; padding-top: 30px">
					<form method="post" action="./writeAction.jsp">
						<h2 style="text-align: center">글쓰기 양식</h2>
						<div class="form-group">
							<input type="text" placeholder="회원넘버" class="form-control"
								name="usernum">
						</div>
						<div class="form-group">
							<input type="text" placeholder="제목" class="form-control"
								name="title">
						</div>
						<div class="form-group">
							<input type="text" placeholder="글내용" class="form-control"
								name="txt">
						</div>
						<input type="submit" value="글저장"
							class="btn btn-primary form-control">
					</form>
				</div>
			</div>
		</div>
	</section>



	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"></script>
</body>
</html>