<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/style/common_style.css">
<link rel="stylesheet" href="/resources/style/style_BBS.css">
</head>
<body>

	<div id="wrap_bbs">
		<h1>고객문의</h1>
		<hr>

		<form method="post">

			<!-- 안녕하세요 -->

			<main id="main">

				<div class="bbsWrite">
					<table>

						<tbody>
							<tr>
<td>아이디<input type="text" name="uid" id="uid"
									value="${user.uId}" readonly="readonly">

								</td>
								<td>이름<input type="text" name="uName" id="uName"
									value="${user.uName}" readonly="readonly">

								</td>
								<td>Q&A종류
								<select name="qnaType" id="qnaType">
								<option>배송</option>
								<option>상품</option>
								</select>

								</td>
							</tr>
							<tr>
								<td>제목 <input type="text" name="subject" id="subject" required="required">
								</td>
								<td>글 비밀번호 <input type="text" name="bbsPw" id="bbsPw">
								</td>
							</tr>



							<tr>
								<td>사진첨부<input type="file" name="upFileName"></td>

							</tr>

						</tbody>

					</table>

				</div>

				<textarea name="content" id="content" rows="10" placeholder="내용을 입력해주세요" required="required"></textarea>
				<input type="text" name="pos" id="pos">
				<input type="text" name="ref" id="ref">
				<input type="text" name="depth" id="depth">
				<input type="text" name="ip" id="ip">
				<input type="text" name="readCnt" id="readCnt">
				
				
				
				<hr>
			</main>
			<aside id="aside" class="dFlex">

				<div id="submitBtn">
					<script>
					$(function() {
						$("button#InquireBtn").click(function(){
							location.href="/BBS/Inqlist.jsp";
						})
						
					});
					</script>
					<button type="submit" id="InquireBtn">작성완료</button>
					<button type="reset" id="reset">원상복귀</button>
				</div>
			</aside>

		</form>
	</div>
	<!-- div#wrap -->
</body>
</html>