<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>askReply</title>
</head>
<body>
<div class="div3">
<div align="center">
	<form name="askReplyEdit" method="post" action="askReplyEdit.admin">
		<input type="hidden" name="qna_num" value="${getBoard.qna_num}">
		<input type="hidden" name="user_num" value="${getBoard.user_num}">
		<input type="hidden" name="qna_step" value="${getBoard.qna_step}">
		<input type="hidden" name="qna_cate" value="${getBoard.qna_cate}">
		<input type="hidden" name="qna_subCate" value="${getBoard.qna_subCate}">
		<input type="hidden" name="report_num" value="${getBoard.report_num}">
		<input type="hidden" name="reg_date" value="${getBoard.reg_date}">
		<table class = "table" style = "width:70%;">
		<thead>
		<tr align = "center">
		<td><h3>${getBoard.qna_subject} 게시글 답변</h3>
		</td>
		</tr>
		</thead>
			<tr align = "center">
				<th>제목</th>
				<td><input type="text" class = "form-control" style = "width:40%;"  name="qna_subject" value="${getBoard.qna_subject}"></td>
			</tr>
			<tr align = "center">
				<th>답변내용</th>
				<td><textarea name="qna_contents" cols="30" class = "form-control" rows="10">${getBoard.qna_contents}</textarea></td>
			</tr>
			<tr align = "center">
				<th>진행상황</th>
				<td>
				<select name="qna_process" class = "form-select" style = "width:40%;display:inline;">
					<option value="대기중">대기중</option>
					<option value="처리완료">처리완료</option>
				</select>
				</td>
			</tr>
			<tr align = "center">
				<td colspan="2" align="center">
				<input type="submit" value="확인">
				<i onclick = "location.href='QnABoardList.admin'" class="bi bi-x-circle-fill" style = "cursor:pointer;">취소</i>
				</td>
			</tr>
		</table>
	</form>
</div>
</div>
</div>
</body>
</html>
<%@include file="../../bottom.jsp" %>