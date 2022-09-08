<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	/*목록*/
	#board{overflow:auto;}
	#board li{
		float:left; line-height:40px; border-bottom:1px solid #ddd; width:10%;
	}
	#board li:nth-child(6n+1){ width:5%;}
	#board li:nth-child(6n+3){width:55%;}
	#board li:nth-child(6n+3)>div{float:left;}
	#board li:nth-child(6n+3)>div:first-child{
	 white-space:nowrap; overflow:hidden; text-overflow:ellipsis;
	}
	/*페이지*/
	#page li{
		float:left; padding:10px; 
	}
</style>
<script>

</script>
<div class="p_container">
	<h1>게시판 리스트</h1>
		<div>
			<a href="#">글쓰기</a>
		</div>
	<div>
		<input type="button" value="삭제" id="p_delete"/>
	</div>
	
	<form method="post" action="#" id="p_boardForrm">
		<ul id="board">
			<li><input type="checkbox" id="p_allChk"/></li>
			<li>번호</li>
			<li>제목</li>
			<li>작성자</li>
			<li>조회수</li>
			<li>등록일</li>						
		</ul>
	</form>
	<div>
		<form method="get" action="#" id="p_searchFrom">
			<select name="searchKey">
				<option value="subject">제목</option>
				<option value="userid">작성자</option>
				<option value="content">글내용</option>
			</select>
			<input type="text" name="searchWord" id="searchWord"/>
			<input type="submit" value="Search"/>
		</form>	
		<div id="p_boardwrite">
				<input type="button" class="p_boardwrite-btn" value="글쓰기" onclick=""/>
		</div>
	</div>
</div>
