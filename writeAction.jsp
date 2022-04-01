<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="border.BorderDAO"%><!-- 사용자 라이브러리 -->
<%@ page import="border.Border"%>
<%@ page import="java.io.PrintWriter"%>
<!-- 자바에서 자바스크립트 사용 -->



<!-- class를 자바빈즈 사용함, 이름 id설정한 이름 -->
<jsp:useBean id="Border" class="border.Border" scope="page" />
<!-- write 페이지에서 받아온 bbsContent Bbs.bbsContent에 저장 -->
<jsp:setProperty name="Border" property="usernum" />
<!-- write 페이지에서 받아온 bbsTitle Bbs.bbsTitle에 저장 -->
<jsp:setProperty name="Border" property="title" />
<!-- write 페이지에서 받아온 bbsContent Bbs.bbsContent에 저장 -->
<jsp:setProperty name="Border" property="txt" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<script>
		console.log(<%
		%>
		Border.getTitle();
		<%
		%>);
	</script>
	<%
	PrintWriter script = response.getWriter();
	
				
	
		
		//입력자료 확인
		 if(Border.getTitle() == null || Border.getTxt() == null){
			script.println("<script>");
			script.println("alert('문서 내용을 확인하세요')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			
			BorderDAO borderDAO = new BorderDAO();
			
			int result = borderDAO.write(Border.getUsernum(), Border.getTitle(),Border.getTxt());
			script.println("<script>");
			
			if(result == -1){
				script.println("alert('기록실패')");
				script.println("location.href='./wirte.jsp'");
			}else{				
				script.println("alert('기록성공')");
				script.println("location.href='./Border.jsp'");
			}
			
			script.println("</script>");
		}
	%>
</body>
</html>
