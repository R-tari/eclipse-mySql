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
<%
		PrintWriter script=response.getWriter();
		

	int usernum= 0;
	if(request.getParameter("usernum") != null){
		usernum = Integer.parseInt(request.getParameter("usernum"));
	}
	
	Border border = new BorderDAO().getBorder(usernum);
%>

	<div class="wrap">

		<header class="header">

			<h1>자유게시판</h1>


		</header>

		<section class="section">

			<div class="jumbotron" style="margin-top:20px;padding-top:30px">
						<h2 style="text-align:center">게시판 글 보기</h2>		
						<div>
						
							<span>작성자</span>
							<span><%= border.getUsernum() %></span>
							<br>
							<span>제목</span>
							<span><%= border.getTitle() %></span>
							<br>
							<span>내용</span>
							<span><%= border.getTxt() %></span>
							<br>
							

						</div>
					</div>
			<button class="button">
				<a href="./Border.jsp">메인</a>
			</button>

		</section>

	</div>

</body>
</html>