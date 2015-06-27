<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>

<title>Adiciona Contato</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />

	<form action="adicionaContato" method="post">
		Nome: <input type="text" name="nome" /><br /> 
		E-mail:<input type ="text" name="email" /><br /> 
		Endereço: <input type="text" name="endereco" /><br /> 
		Data Nascimento: <caelum:campoData id="dataNascimento" /><br /> 
		
		<input type="submit" value="Gravar" />
	</form>

	<c:import url="rodape.jsp" />
</body>
</html>