<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<%@ include file="../include/header.jsp" %>
	






<div class="owl-carousel-wrapper">

      

      <div class="box-92819 shadow-lg">
        

          <div>
            <h2 class=" mb-3 text-black">About The share house</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quam, ratione earum.</p>
          </div>
        
      </div>

        <div class="ftco-cover-1" style="background-image: url('images/hero_1.jpg')"></div>
    </div>
    
    

   <div class="col-md-2">
				<ul style="font-size: 30px">
					<li class="active"><a href="about.do">Review</a><br></li>
					<li><a href="suggestion.do">Suggestion</a></li>
				</ul>
			</div>


	<div class="col-md-10" style =margin-left:150px >
				<h1>Review</h1>
				
				<c:if test="${not empty session_id }">
		<button type="button" class="btn btn-warning" id="btnWriteForm" style="float: right" ><a href="writer.do">writer</a></button>
				</c:if>
				
	

				
				
				
				<table class="table table-striped" style="margin-left: auto margin-right: auto">
					<thead>
						<tr>
							<th>번 호</th>
							<th>제 목</th>
							<th>글쓴이</th>
							<th>조회수</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="board">
						<tr>
							<td>${board.bno }</td>
							<td><a href="read.do?bno=${board.bno}">${board.title }</a></td>
							<td>${board.writer }</td>
							<td>${board.readcount }</td>
							<td><fmt:formatDate value="${board.writedate}"/></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

				<ul class="pagination" style="margin-left: 800px">
					<li class='<c:out value="${pageM.prev==true?'':'disabled'}"></c:out>'>
						<a href="about.do?pageNum=${pageM.startPage-pageM.pageSize}">« 이전</a>
					</li>
					<c:forEach var="i" begin="${pageM.startPage}" end="${pageM.endPage}">
						<li class='<c:out value="${pageM.currentPage==i?'active':''}"></c:out>'>
							<a href="about.do?pageNum=${i}">${i}</a>
						</li>
					</c:forEach>
					<li class='<c:out value="${pageM.next==true?'':'disabled'}"></c:out>'>
						<a href="about.do?pageNum=${pageM.endPage+1}">다음 »</a>
					</li>
				</ul>
			</div>

    </div>
  <div class="site-section section-4">
      <div class="container">

        <div class="row justify-content-center text-center">
          <div class="col-md-7">
            <div class="slide-one-item owl-carousel">
              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>동해물과 백두산이</p>
                <cite><span class="text-black">고희선</span> &mdash; <span class="text-muted">no1</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>마르고 닳도록</p>
                <cite><span class="text-black">정수미</span> &mdash; <span class="text-muted">no2</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p> 하느님이 보우하사</p>
                <cite><span class="text-black">이동우</span> &mdash; <span class="text-muted">no3</span></cite>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
    </div>

<script type="text/javascript">
$("#btnWriteForm").on('click',function(){
	location.href="writer.do";
});

</script>
    
    
<%@ include file="../include/footer.jsp" %>