<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="author" content="Sidney Miranda"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/globals.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/profileAdm.css" />
<title>Dele��o de dados</title>
</head>
<body>

	<h1 class="title-confirm">Livro selecionado</h1>	
	
	<form class="form" method="" action="">
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
					type="text" 
					class="input grow"
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
					type="text" 
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
					class="grow input" 
					type="text" 
					id="idioma"
					name="idioma"
					value="${param.idioma}" 
					readonly
				>
				<input 
					class="grow input"
					type="text" 
					id="publishingCompany"
					name="publishingCompany"
					value="${param.publishingCompany}" 
					readonly
				>
			</div>
		</div>
		<label 
			for="sinopse">Sinopse</label>
		<textarea 
			id="sinopse"
			name="sinopse" 
			class="input"
			readonly
		>${param.sinopse}</textarea>
		
		<div class="buttons">
			<a 
				class="btn button-cancel"
				href="${pageContext.request.contextPath}/pages/profile/employee/home.jsp"
			>
				VOLTAR
			</a>			
		</div>
	</form>
</body>
</html>