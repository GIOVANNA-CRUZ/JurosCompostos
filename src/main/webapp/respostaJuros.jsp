<%@page import="dados.Juros"%>
<html>
	<head>
		<meta charset = "UTF-8">
		<title>Resposta Juros</title>
		<link rel = "stylesheet" href = "style.css">
	</head>
		<body id = "corpoResposta">
			<%
				String aporte = request.getParameter("aporte");
				String porcentagem = request.getParameter("porcentagem");
				
				double aporteD = Double.parseDouble(aporte);
				double porcentagemD = Double.parseDouble(porcentagem);
				
				Juros juros = new Juros();
				double[] retorno = juros.calcularJuros(aporteD, porcentagemD);
				int meses = (int)retorno[0];
				int anos = (int)retorno[1];
				double rendimento = retorno[2];
				double valorAportado = retorno[3];
				int mesesAnos = (int)retorno[4];
				//String.format("%.1f", anos);
				
				%> 
				
				<div id = "retornoJurosComposto">
					<ul>
						<li><strong>Meses:</strong>  <%= meses %></li>
						<li><strong>Anos:</strong> <%= anos%> Anos e <%=mesesAnos %> Meses</li>
						<li><strong>Rendimento:</strong> R$ <%=String.format("%.2f", rendimento) %></li>
						<li><strong>Aporte:</strong> R$ <%=String.format("%.1f", valorAportado) %></li>
					</ul>
				
				</div>
				<a id = "voltar" href = "index.jsp">Voltar</a>
		</body>

</html> 