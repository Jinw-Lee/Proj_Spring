<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>글쓰기</title>
	<link rel="stylesheet" href="resources/style/common_style.css">
	<link rel="stylesheet" href="resources/style/review_style.css">
	<script src="resources/script/jquery-3.6.0.min.js"></script>
	<script src="resources/script/script_Review.js"></script>
</head>

<body>
	<header>
	    <!--  헤더템플릿 시작, iframe으로 변경 -->
			<iframe src="/header" scrolling="no" width="100%" frameborder=0 id="headerIfm"></iframe>
	    <!--  헤더템플릿 끝 -->   
  	</header>
    <div id="wrap" class="reviewPostWrap">
    	
		
	    	<form action="/reviewPost" method="post" enctype="multipart/form-data">
						  
			<main id="main">
				<div class="bbsWrite">
					<h2>후기 작성</h2>
					<table class="bbsWrite">
						<tbody>
							<tr>
								<td>이름</td>
								<td>
									${user.uName}
									<input type="hidden" name="regId" value="${user.uId}">
									<input type="hidden" name="regName" value="${user.uName}">			
								</td>
								
							</tr>
		
							<tr>
								<td class="req">제목</td>
								<td>
									<input type="text" name="subject" id="subject">
								</td>
							</tr>
								
							<tr>
								<td>사진첨부</td>
								<td>
									<span class="spanFile"><input type="file" name="imgFile"></span>
								</td>
							</tr>
							<tr>
								<td class="contentTD">내용</td>
								<td>
									<textarea name="content" id="content"></textarea>
								</td>
							</tr>
				
						</tbody>
	
					</table>
				</div>
			<hr>

			</main>
			<aside id="aside">
				<div id="submitBtn">
					<button type="submit" id="regBtn">작성완료</button>
					<button type="reset" id="reset">취소</button>
				</div>
			</aside>
			<input type="hidden" name ="prodNum" value="${param.prodNum}">
			<input type="hidden" name ="orderNum" value="${param.orderNum}">
		</form>
    		    	
    
        
    </div>
    <!-- div#wrap -->
	<iframe src="/footer" scrolling="no" width="100%" frameborder=0 id="footerIfm"></iframe>
</body>

</html>