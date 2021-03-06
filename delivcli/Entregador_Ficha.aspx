﻿<%@ Page Title="Ficha Entregador" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Entregador_Ficha.aspx.cs" EnableEventValidation="false" Inherits="delivcli.Entregador_Ficha" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        #results {
            float: left;
            margin: 5px;
            padding: 5px;
            border: 1px solid;
            background: #ccc;
        }
    </style>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="~/vendors/bootstrap/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="Scripts/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="Scripts/webcam.js"></script>

    <br />
    <form class="form-horizontal">
        <fieldset>
            <!-- Camera  -->
            <div id="results"></div>
            <div id="my_camera"></div>          
            <!-- Camera  -->
            <br />
            <legend>Ficha Entregador</legend>
          
            <div class="row">
                <label for="inputNome" class="col-md-1 control-label">Nome</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="inputNome">
                </div>
         
                <label for="selectVeiculo" class="col-md-1 control-label">Veiculo</label>
                <div class="col-md-2">
                    <select class="form-control" id="selectVeiculo">
                        <option>MOTO</option>
                        <option>CARRO</option>
                    </select>
                </div>
                <label for="inputModelo" class="col-md-1 control-label">Modelo</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="inputModelo">
                </div>
                <label for="inputPlaca" class="col-md-1 control-label">Placa</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="inputPlaca">
                </div>
            <br />
                <label for="inputIDCli" class="col-md-1 control-label">Cliente</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="inputIDCli">
                </div>
                <div class="col-md-7">
                    <input type="text" class="form-control" id="inputCli">
                </div>
            

            <input id="IDHidden" name="IDHidden" type="hidden" />
            <input id="Hidden1" name="fotouri" type="hidden" />

                <div class="col-md-4 col-md-offset-1">
                    <button type="button" class="btn btn-primary" onclick="cancelar()">Fechar</button>
                </div>
            </div>

        </fieldset>
    </form>

    <!-- preenche campos  -->
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <!-- preenche campos  -->

    <script type="text/javascript">
       function cancelar() {
            var linkurl = "Cad_Funcionario.aspx";
            window.location.href = linkurl;
        }
    </script>

</asp:Content>
