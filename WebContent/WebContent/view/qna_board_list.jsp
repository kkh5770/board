<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!-- Main content -->
<section class="content">
	<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">List Board</h3>
		</div>
		<div class="row">
			<div class="col-md-4">
				<button type="button" onclick="location.href='view/qna_board_write.jsp'" class="btn btn-success">글작성</button>
			</div><!--글쓰기 버튼-->
			<div class="col-md-4 offset-md-4"><!--검색 들어갈 부분-->
				<form action="">
					<select name="criteria" id="">
						<option value="n">---------</option>
						<option value="title">title</option>
						<option value="content">content</option>
						<option value="name">name</option>
					</select>
					<input type="text" name="keyword"/>
					<button type="button" class="btn btn-primary">검색</button>
				</form>
			</div>
		</div>
		<br>
		<table class="table table-bordered">
			<tr>
				<th class='text-center' style='width:100px'>번호</th>
				<th class='text-center'>제목</th>
				<th class='text-center'>작성자</th>
				<th class='text-center'>날짜</th>
				<th class='text-center' style='width:100px'>조회수</th>
			</tr>
			<c:forEach var="vo" items="${list}">
			<tr><!-- 리스트 목록 보여주기 -->
				<td class='text-center'>${vo.bno}</td><!--번호-->
				<td><a href="qHitUpdate.do?bno=${vo.bno}">${vo.title}</a></td><!--제목-->
				<td class='text-center'>${vo.name}</td><!--작성자-->
				<td class='text-center'>${vo.regdate}</td><!--날짜-->
				<td class='text-center'>${vo.readcount}<span class="badge badge-pill badge-primary"></span></td>
			</tr>		
			</c:forEach>
		</table>
		<div class="container">
			<div class="row  justify-content-md-center">
				<nav aria-label="Page navigation example">
				  <ul class="pagination"><!--하단의 페이지 나누기 부분-->

				  </ul>
				</nav>					
			</div>
		</div>
		<div style="height:20px"></div>
	</div>	
</section>
<%@include file="../include/footer.jsp"%>
