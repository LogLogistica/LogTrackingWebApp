﻿<%@ Page Title="Cadastro de Entregadores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Entregadores.aspx.cs" Inherits="PainelCliente_01.Entregadores" %>

<asp:content id="BodyContent" contentplaceholderid="MainContent" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="~/Content/bootstrap.min.css">
    <script src="~/Scripts/jquery.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>

    <h3>Cadastro de Entregadores</h3>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <!-- Busca e Paginação. modelo: datatables.net -->
	    <link rel="stylesheet" href="//cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">
	    <script src="//cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
	
	    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.10/css/dataTables.bootstrap.min.css">

	    <script>
	        $(document).ready(function () {
	            $('#tabelaEnt').DataTable({
	                "language": {
	                    "lengthMenu": "Mostrando _MENU_ registros por página",
	                    "zeroRecords": "Nada encontrado",
	                    "info": "Mostrando página _PAGE_ de _PAGES_",
	                    "infoEmpty": "Nenhum registro disponível",
	                    "infoFiltered": "(filtrado de _MAX_ registros no total)",
	                    "search": "Pesquisa:"
	                }
	            });
	        });
	    </script>

</asp:content>
