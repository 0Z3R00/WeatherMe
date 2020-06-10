<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>cerveja.biz - Alterar Pais</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<!-- Barra superior com os menus de navegacao -->
	<c:import url="Menu.jsp" />
	<!-- Container Principal -->

	<div id="main" class="container-fluid mx-auto p-3 ">
		<div class="jumbotron col-8 mx-auto text-white rounded bg-info">
			<h3 class="text-center">Atualize seu caastro!</h3>
			<hr>
			<form action="ManterCliente.do" method="post">
			<input type="hidden" name="id" value="${cliente.id }" />

				<div class="row form-group">
					<div class="col-12">
						<label for="exampleInputEmail1">Nome</label> <input type="text"
							class="form-control" name="nome" id="nome" required
							maxlength="100" placeholder="nome" aria-describedby="emailHelp">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-6">
						<label for="exampleInputEmail1">E-mail</label> <input type="text"
							class="form-control" name="email" id="email" required
							maxlength="100" placeholder="email" aria-describedby="emailHelp">
					</div>
					<div class="col-6">
						<label for="exampleInputEmail1">Senha</label> <input
							type="password" class="form-control" name="senha" id="senha"
							required maxlength="15" placeholder="senha"
							" aria-describedby="emailHelp">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-6">
						<label for="exampleInputEmail1">Cidade</label> <input type="text"
							class="form-control" name="cidade" id="cidade" required
							maxlength="15" placeholder="cidade" aria-describedby="emailHelp">
					</div>

					<div class="col-6">
						<label for="exampleInputEmail1">Destino</label> <input type="text"
							class="form-control" name="destino" id="destino"
							placeholder="Opcional" aria-describedby="emailHelp">
					</div>
				</div>

				<div id="actions" class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary" name="acao"
							value="Alterar">Salvar</button>
						<a href="index.html" class="btn btn-default">Cancelar</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>