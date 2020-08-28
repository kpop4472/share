<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<body>

			<div class="panel panel-info"style = "padding: 100px 100px 100px 200px;">
				<div class="panel-heading">
					<h3 class="panel-title" align="center ">Review</h3>
				</div>
				<form action="write.do" method="post" enctype="multipart/form-data">
					<div class="panel-body">

						<fieldset>
							<!-- <legend>기본정보 </legend> -->
							<div class="form-group">
								<label class="col-xs-2 col-lg-2 control-label" >Title</label>
								<div class="col-xs-10 col-lg-10" >
									<input type="text" id="title" name="title" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-2 col-lg-2 control-label">Content</label>
								<div class="col-xs-10 col-lg-10">
									<textarea rows="5" id="content" name="content"
										class="form-control" cols=""></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-2 col-lg-2 control-label">Writer</label>
								<div class="col-xs-10 col-lg-10">
									<input  type="text" id="writer" name="writer" value="${session_id }"
										class="form-control">
								</div>
							</div>
							<!-- 	<div class="form-group">
						<label class="col-xs-2 col-lg-2 control-label">File</label>
						<div class="col-xs-10 col-lg-10">
							<input type="file" id="filename" name="filename"
								class="form-control">
						</div> -->

						</fieldset>
					</div>

					<div class="panel-footer">
						<button type="submit" class="btn btn-warning" id = "btnWrite">
							<a href="about.do">Write</a>
						</button>
						<button type="reset" class="btn btn-danger">
							<a href="about.do">Cancel</a>
						</button>
						<button type="button" class="btn btn-info">
							<a href="about.do">List</a>
						</button>
					</div>
				</form>
			</div>

		</body>
	</div>
	<div></div>
<script type="text/javascript">
$("#btnWrite").on('click',function(){
	var title=$("#title").val();
	if(title==""){
		alert("title을 입력하세요");
		$("#title").focus();
		return false;
	}
	return true;
});

$("#btnList").on('click',function(){
	location.href="about.do";
});
</script>


<%@ include file="../include/footer.jsp" %>