<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@ include file="compenents\bootstrapCSS.jsp"%>

<style type="text/css">
span{
            font-family: 'Times New Roman', Times, serif;
            color: orangered;
            font-weight: 800;
        }
  #n{
                    background: linear-gradient(to right, red,blue);
            color: transparent;
            background-clip: text;
            
        }

</style>
</head>
<body>

	<%@ include file="compenents\navbar.jsp"%>

	<div class="container col-xxl-8 px-4 py-5">
		<div class="row flex-lg-row-reverse align-items-center g-5 py-5">
			<div class="col-10 col-sm-8 col-lg-6">
				<img src="compenents\Notes.png" class="d-block mx-lg-auto img-fluid"
					alt="Bootstrap" width="700" height="500" loading="lazy">
			</div>
			<div class="col-lg-6">
				<h1 class="display-5 fw-bold lh-1 mb-3">Surya Notes | No-1 Note App Of <span>India</span></h1>
				<p class="lead">Best Note taking App - Organize your note with <br><span id=n>Surya Notes. </span> </p>
				<div class="d-grid gap-2 d-md-flex justify-content-md-start">
					 <!-- <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Primary</button>
					<button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button> -->
						<!-- <a href="Register.jsp" class="btn btn-primary text-decoration-none">Register</a>
						<a href="Login.jsp" class="btn btn-primary text-decoration-none">Login</a> -->
				</div>
			</div>
		</div>
	</div>


</body>
</html>