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

	<div class="wrap">

		<header class="header">

			<h1>자유게시판</h1>


		</header>

		<section class="section">

			<table>
				<thead>
					<tr>
						<th style="width: 10%; text-align: center; font-size: 18px;">회원번호</th>
						<th style="width: 45% text-align:center; font-size: 18px;">제목</th>
						<th style="width: 45%; text-align: center; font-size: 18px;">내용</th>
					</tr>
				</thead>

				<tbody>
					<%
			BorderDAO borderDAO = new BorderDAO();
					
					ArrayList<Border> list = borderDAO.getList();
					for(int idx=0;idx<list.size();idx++){
			%>
					<tr>
						<td><%= list.get(idx).getUsernum() %></td>
						<td><a
							href="view.jsp?usernum=<%= list.get(idx).getUsernum() %>"
							style="color: #000; text-decoration: none"><%= list.get(idx).getTitle() %></a></td>
						<td><%= list.get(idx).getUsernum() %></td>

					</tr>
					<%
						}
						%>

				</tbody>
			</table>
			<button class="button">
				<a href="./write.jsp">글쓰기</a>
			</button>

		</section>

	</div>

</body>
</html>