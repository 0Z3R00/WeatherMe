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
			<a class="navbar-brand text-white" href="index.html">Weather.Me</a>
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
					</a></span>

				</div>
			</div>
		</nav>
		<div class="row justify-content-center">
			<div class="col-6 ">
				<form action="ManterCliente.do" method="post">
					<div class="row">
						<div class="col-12">
							<div class="form-group">
								<label for="cidade">Nome</label> <input type="text"
									class="form-control" name="nome" id="nome"
									aria-describedby="emailHelp"> <small id="emailHelp"
									class="form-text text-muted">Digite seu nome</small>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="form-group">
								<label for="email">E-mail</label> <input type="email"
									class="form-control" name="email" id="email"
									aria-describedby="emailHelp"> <small id="emailHelp"
									class="form-text text-muted">Digite seu e-mail</small>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="form-group">
								<label for="senha">Senha</label> <input type="password"
									class="form-control" name="senha" id="senha"
									aria-describedby="emailHelp"> <small id="emailHelp"
									class="form-text text-muted">Digite sua senha</small>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">Cidade</div>
								</div>
								<input type="text" name="cidade" id="cidade" class="form-control"
									id="inlineFormInputGroup"
									placeholder="nome da cidade sem acentuação">
							</div>
						</div>
						<div class="col-4">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">UF</div>
								</div>
								<select class="custom-select mr-sm-2"
									id="inlineFormCustomSelect" aria-placeholder="Estado UF"
									name="UF">
									<option selected></option>
									<option value="ac">Acre</option>
									<option value="al">Alagoas</option>
									<option value="ap">Amapá</option>
									<option value="am">Amazonas</option>
									<option value="ba">Bahia</option>
									<option value="ce">Ceará</option>
									<option value="df">Distrito Federal</option>
									<option value="es">Espírito Santo</option>
									<option value="go">Goiás</option>
									<option value="ma">Maranhão</option>
									<option value="mt">Mato Grosso</option>
									<option value="ms">Mato Grosso do Sul</option>
									<option value="mg">Minas Gerais</option>
									<option value="pa">Pará</option>
									<option value="pb">Paraíba</option>
									<option value="pr">Paraná</option>
									<option value="pe">Pernambuco</option>
									<option value="pi">Piauí</option>
									<option value="rj">Rio de Janeiro</option>
									<option value="rn">Rio Grande do Norte</option>
									<option value="rs">Rio Grande do Sul</option>
									<option value="ro">Rondônia</option>
									<option value="rr">Roraima</option>
									<option value="sc">Santa Catarina</option>
									<option value="sp">São Paulo</option>
									<option value="se">Sergipe</option>
									<option value="to">Tocantins</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">Destino</div>
								</div>
								<input type="text" name="destino" id="destino" class="form-control"
									id="inlineFormInputGroup"
									placeholder="nome da cidade sem acentuação">
							</div>
						</div>
						<div class="col-4">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">UF</div>
								</div>
								<select class="custom-select mr-sm-2"
									id="inlineFormCustomSelect" aria-placeholder="Estado UF"
									name="uf">
									<option selected></option>
									<option value="ac">Acre</option>
									<option value="al">Alagoas</option>
									<option value="ap">Amapá</option>
									<option value="am">Amazonas</option>
									<option value="ba">Bahia</option>
									<option value="ce">Ceará</option>
									<option value="df">Distrito Federal</option>
									<option value="es">Espírito Santo</option>
									<option value="go">Goiás</option>
									<option value="ma">Maranhão</option>
									<option value="mt">Mato Grosso</option>
									<option value="ms">Mato Grosso do Sul</option>
									<option value="mg">Minas Gerais</option>
									<option value="pa">Pará</option>
									<option value="pb">Paraíba</option>
									<option value="pr">Paraná</option>
									<option value="pe">Pernambuco</option>
									<option value="pi">Piauí</option>
									<option value="rj">Rio de Janeiro</option>
									<option value="rn">Rio Grande do Norte</option>
									<option value="rs">Rio Grande do Sul</option>
									<option value="ro">Rondônia</option>
									<option value="rr">Roraima</option>
									<option value="sc">Santa Catarina</option>
									<option value="sp">São Paulo</option>
									<option value="se">Sergipe</option>
									<option value="to">Tocantins</option>
								</select>
							</div>
						</div>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="customCheck1" name="flag" value="OK" > <label class="custom-control-label"
							for="customCheck1">Receber notificação no e-mail</label>
					</div>
					<br/>

					<button type="submit" class="btn btn-primary" name="acao"
						value="Incluir">Criar</button>
					<button type="submit" class="btn btn-primary">
						<a class="text-white" href="index.jsp">Cancelar</a>
					</button>
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