﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="~/vendors/bootstrap/dist/css/bootstrap.min.css">
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <script src="~/vendors/jquery/dist/jquery.min.js"></script>
    <script src="~/vendors/bootstrap/dist/js/bootstrap.min.js"></script>


</head>

<body>

    <h3>Cadastro de Clientes</h3>

    <div class="row">

        <div class="col-md-3">
            <div class="well">
                <h5 class="text-primary">
                    <p>Total de Clientes Cadastrados</p>
                </h5>
                <h3 class="text-primary"><i class="fa fa-suitcase"></i>
                    <b><asp:Literal ID="Literal_Quant" runat="server"></asp:Literal></b> 
                </h3>
                <a href="ClienteNovo.aspx" class="btn btn-block btn-success"><i class="fa fa-plus-square"></i> NOVO CLIENTE</a>
            </div>
        </div>

        <div class="col-md-3">
            <div class="well">
                <h5 class="text-primary">
                    <p>Listagem de Clientes</p>
                </h5>
                <h3 class="text-primary"><i class="fa fa-users"></i>
                </h3>
                <a href="Clientes_Pesquisa.aspx" class="btn btn-block btn-success"><i class="fa fa-search"></i> PESQUISAR</a>
            </div>
        </div>

    </div>

</body>
</html>