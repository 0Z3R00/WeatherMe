<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Weather.Me</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>

<body>

	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg p-3 mb-2 bg-info rounded ">
			<a class="navbar-brand text-white" href="">Weather.Me</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end "
				id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<span class="border border-dark rounded-lg bg-dark"> <a
						class="nav-item nav-link active text-white" href="Login.jsp">Login
							<span class="sr-only">(current)</span>
					</a></span> <span class="border border-secondary rounded-lg bg-secondary">
						<a class="nav-item nav-link text-white" href="cadastro.jsp">cadastro</a>
					</span>
				</div>
			</div>
		</nav>

		<div class="row">
			<figure class="figure">
				<img src="logo.png" class="figure-img img-fluid rounded" alt="...">
			</figure>
		</div>

		<div class="row  justify-content-center">
			<div class="input-group col-8 p-2 text-center bg-secondary rounded-lg">
				<div class="col-sm-6 p-4 px-0 mx-auto text-light">
				<h1 class=" font-italic text-center">Bem vindo ao Weather.Me</h1>
				<p class="lead my-3 text-center">Realize uma consulta antes de
					sair de casa.</p>
			</div>
				<form class="mx-auto" action="ManterCidade.do" method="post">
					<div class="input-group-prepend ">
						<label class="input-group-text" id="basic-addon1">Insira o
							nome da cidade:</label>
							 <input type="text" class="form-control"
							name="nome" id="nome" placeholder="Ex: sao-paulo,sp"
							aria-label="Username" aria-describedby="basic-addon1"
							style="width: 500px;">
						<div id="actions" class="input-group-append">
							<button class="btn btn-primary" type="submit"
								id="button-addon2" name="acao" value="pesquisar">consultar</button>
						</div>
					</div>
				</form>
			</div>

		</div>


		<footer class="blog-footer mx-auto text-center bg-light"
			style="padding-top: 30px;">
			<p>
				Desenvolvido pelo grupo JERDAM. <a href="### ">ENG.</a> by <a
					href=###>0Z3R00</a>.
			</p>
		</footer>

	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>

</html>