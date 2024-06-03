<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Cadastro de Membro</title>
		<spring:url var="css" value="/static/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="${css}" />
		<style>
			:root {
				--main-bg-color: #f8f9fa;
				--main-color: #333;
				--btn-bg-color: blue;
				--btn-hover-bg-color: green;
				--error-color: red;
			}

			.container {
				background-color: var(--main-bg-color);
				width: 100%;
				max-width: 420px;
				border-radius: 10px;
				padding: 20px;
				margin: 100px auto 0;
			}

			.mt-3 {
				margin-top: 3rem;
			}

			body {
				background-image: url('https://media.engenhariaradio.pt/2021/02/alfons-morales-ylswjsy7stw-unsplash.jpg');
				background-size: cover;
				background-position: center;
				background-repeat: no-repeat;
				color: var(--main-color);
			}

			.bg-pink {
				background-color: #F4A460 !important;
			}

			.custom-btn {
				background-color: var(--btn-bg-color);
				color: white;
				border: none;
				width: 100%;
				padding: 10px;
				font-size: 16px;
				border-radius: 5px;
				cursor: pointer;
			}

			.custom-btn:hover {
				background-color: var(--btn-hover-bg-color);
			}

			.form-control {
				margin-bottom: 1rem;
			}

			.error {
				color: var(--error-color);
				font-size: 0.875rem;
			}
		</style>
	</head>
	<body>
		<header>
			<nav class="navbar navbar-expand-sm navbar-dark bg-pink">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">
						<img src="https://img.freepik.com/fotos-premium/uma-imagem-encantada-de-um-livro-vintage-aberto-em-cima-de-uma-mesa-de-madeira-tem-brilhos_410516-16209.jpg" alt="Logo" style="width:60px;" class="rounded-pill">
						<span style="color: white; margin-left: 10px;">Clube de Leitura</span>
					</a>
				</div>
			</nav>
		</header>
		<div class="container mt-3">
			<form:form method="POST" modelAttribute="membro">
				<p>Nome: <form:input class="form-control" path="nome" required="required" aria-label="Nome"/>
				<form:errors path="nome" cssClass="error"/></p>
				
				<p>Data de Nascimento: <form:input type="date" class="form-control" path="dataNascimento" required="required" aria-label="Data de nascimento"/>
				<form:errors path="dataNascimento" cssClass="error"/></p>
				
				<p>Sexo: 
					<form:select class="form-control" path="sexo" required="required" aria-label="Sexo">
						<form:option value="" label="Selecione"/>
						<form:option value="Masculino" label="Masculino"/>
						<form:option value="Feminino" label="Feminino"/>
						<form:option value="Não declarar" label="Não declarar"/>
					</form:select>
					<form:errors path="sexo" cssClass="error"/>
				</p>
				
				<p>Endereço: <form:input class="form-control" path="endereco" required="required" aria-label="Endereço"/>
				<form:errors path="endereco" cssClass="error"/></p>
				
				<p>Gênero Literário Favorito: 
					<form:select class="form-control" path="generoFavorito" required="required" aria-label="Gênero literário favorito">
						<form:option value="" label="Selecione"/>
						<form:option value="Romance" label="Romance"/>
						<form:option value="Fantasia" label="Fantasia"/>
						<form:option value="Terror" label="Terror"/>
						<form:option value="Suspense" label="Suspense"/>
						<form:option value="Poemas" label="Poemas"/>
					</form:select>
					<form:errors path="generoFavorito" cssClass="error"/>
				</p>
				
				<p>Telefone Para Contato: <form:input class="form-control" path="contato" required="required" aria-label="Telefone para contato"/>
				<form:errors path="contato" cssClass="error"/></p>
				
				<p>E-mail: <form:input class="form-control" path="email" required="required" aria-label="E-mail"/>
				<form:errors path="email" cssClass="error"/></p>
				
				<p><form:button class="btn custom-btn">Enviar</form:button></p>
			</form:form>
		</div>
	</body>
</html>
