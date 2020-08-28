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
					<li ><a href="about.do">Review</a><br></li>
					<li class="active"><a href="suggestion.do">Suggestion</a></li>
				</ul>
			</div>


	<div class="col-md-10" style =margin-left:150px >
				<h1>Suggestion</h1>
				
					<button type="button" class="btn btn-warning" style="float: right" ><a href="writer.do">write</button>
					
				<table class="table table-striped" style="margin-left: auto margin-right: auto">
					<thead>
						<tr>
							<th>번 호</th>
							<th>제 목</th>
							<th>글쓴이</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><a href="read.do">최고야 </a></td>
							<td>고희선</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="main/read.jsp">좋았어요</td>
							<td>정수미</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="Review.html">감사합니다</td>
							<td>이동우</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href="Review.html">Quo mollitia id ea ab in! Nam eligendi distinctio, vitae.</td>
							
							<td>성춘향</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>5</td>
							<td><a href="Review.html">Quo mollitia id ea ab in! Nam eligendi distinctio, vitae.</td>
							<td>성춘향</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>6</td>
							<td><a href="Review.html">Quo mollitia id ea ab in! Nam eligendi distinctio, vitae.</td>
							<td>성춘향</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>7</td>
							<td><a href="Review.html">Quo mollitia id ea ab in! Nam eligendi distinctio, vitae</td>
							<td>성춘향</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>8</td>
							<td><a href="Review.html">Quo mollitia id ea ab in! Nam eligendi distinctio, vitae</td>
							<td>성춘향</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>9</td>
							<td><a href="Review.html">Quo mollitia id ea ab in! Nam eligendi distinctio, vitae</td>
							<td>성춘향</td>
							<td>2020-07-31</td>
						</tr>
						<tr>
							<td>10</td>
							<td><a href="Review.html">Quo mollitia id ea ab in! Nam eligendi distinctio, vitae</td>
							<td>성춘향</td>
							<td>2020-07-31</td>
						</tr>
					</tbody>
				</table>

				<ul class="pagination" style="margin-left: 800px">
					<li class="disabled"><a href="#">« Prev</a></li>
					<li class="active"><a href="#">&nbsp1&nbsp</a></li>
					<li><a href="#">&nbsp2&nbsp</a></li>
					<li><a href="#">&nbsp3&nbsp</a></li>
					<li><a href="#">&nbsp4&nbsp</a></li>
					<li><a href="#">&nbsp5&nbsp</a></li>
					<li><a href="#">Next »</a></li>
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
    
    
    
<%@ include file="../include/footer.jsp" %>