<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="compenents/bootstrapCSS.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@ include file="compenents/navbar2.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Add Notes Here</p>
						
					
						<form action="add_notes" method="post">
							<div class="mb-3">
								<label class="form-label">Title</label> <input
									name="title" type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Description</label>
								 <textarea rows="10" cols="46"	name="description" class="form-control"  placeholder="Write your description here"></textarea>
							</div>
							<button type="submit" class="btn bg-danger text-white col-md-12">Add-Notes</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>