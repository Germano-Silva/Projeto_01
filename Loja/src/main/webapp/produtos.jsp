<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="model.JavaBeans"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.Controller"%>
<%@page import="model.DAO"%>

<%
@ SuppressWarnings("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("produto");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Produtos</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
	<nav id="navbar-example2" class="navbar bg-light px-3">
		<a href="create" class="navbar-brand"><img src="imagens/2-home-11.png"> LOJA</a>
		<ul class="nav nav-pills">
		  <li class="nav-item">
			<a class="nav-link" href="create"><img src="imagens/8-note.png"alt="lista"> Cadastrar</a>
		  </li>
		</ul>
	  </nav>
	<h1 class="text-center">Lista de Produtos Cadastrados.</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Nº</th>
				<th>Código</th>
				<th>Nome</th>
				<th>Categoria</th>
				<th>Estoque</th>
				<th>Preço</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<%for(int i=0; i < lista.size(); i++){%>
				<tr>
					<td><%=lista.get(i).getId() %></td>
					<td><%=lista.get(i).getCodigo() %></td>
					<td><%=lista.get(i).getNome() %></td>
					<td><%=lista.get(i).getCategoria() %></td>
					<td><%=lista.get(i).getQuantidade() %></td>
					<td><%=lista.get(i).getPreco() %></td>
					<td>
						<a href="javascript: confirmar(<%=lista.get(i).getId() %>)"><img src="imagens/61-trash.png"></a>
						<a href="select?id=<%=lista.get(i).getId()%>">Editar</a>
					</td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<p>
	<script src="scripts/confirmador.js"></script>
	<script src="scripts/bootstrap.bundle.min.js"></script>
</body>
</html>