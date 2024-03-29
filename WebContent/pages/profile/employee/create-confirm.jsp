<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="utf-8">
<meta name="author" content="Sidney Miranda"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/globals.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/profileAdm.css" />
<title>Confirma��o de dados</title>
</head>
<body>
	<c:url value="crud" var="servlet" />
	<c:url value="create" var="action" />
	
	<h1 class="title-confirm">Verifique os dados antes de confirmar</h1>

	<form class="form" method="post" action="${pageContext.request.contextPath}/${servlet}?action=${action}">
		<label for="title">T�tulo</label>
		<input 
			type="text" 
			class="input"
			id="title"
			name="title"
			value="${param.title}"
			readonly
		>
		<label for="author">Nome do autor</label>
		<input 
			type="text" 
			name="author" 
			class="input"
			id="author"
			value="${param.author}"
			readonly
		>
		
		<div class="content-div">
			<div class="content-div-label">
				<label class="grow" for="year">Ano da Publica��o</label>
				<label class="grow" for="isbn">ISBN</label>
				<label class="grow"	for="edition">Edi��o</label>
			</div>
			<div class="content-div-input">
				<input 
					class="input grow" 
					type="text" 
					id="year"
					name="year" 
					value="${param.year}" 
					readonly
				>
				<input 
					class="input grow" 
					type="text" 
					id="isbn"
					name="isbn"
					value="${param.isbn}" 
					readonly
				>
				<input 
					class="input grow" 
					type="number" 
					id="edition"
					name="edition"
					value="${param.edition}" 
					readonly
				>
			</div>
		</div>
		<div class="content-div">
			<div class="content-div-label">
				<label class="grow" for="idioma">Idioma</label>
				<label class="grow"	for="publishingCompany">Editora</label>
			</div>
			<div class="content-div-label">
				<input 
					class="input grow" 
					type="text" 
					id="idioma"
					name="idioma"
					value="${param.idioma == ''? 'N�O INFORMADO' : param.idioma}" 
					readonly
				>
				<input 
					class="input grow" 
					type="text" 
					id="publishingCompany"
					name="publishingCompany"
					value="${param.publishingCompany == ''? 'N�O INFORMADO' : param.publishingCompany}" 
					readonly
				>
			</div>
		</div>
		<label 
			for="sinopse">Sinopse</label>
		<textarea 
			id="sinopse"
			name="sinopse" 
			readonly
		>${param.sinopse == ''? 'N�O INFORMADO' : param.sinopse}</textarea>
		
		<div class="buttons">
			<input
				class="btn button-submit" 
				type="submit" 
				value="CONFIRMAR"
			>			
		<a href="home.jsp" class="btn button-cancel">CANCELAR</a>
		</div>
	</form>

</body>
</html>