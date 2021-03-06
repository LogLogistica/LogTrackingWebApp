﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Funcionarios_Novo.aspx.cs" Inherits="Funcionarios_Novo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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

    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="~/vendors/bootstrap/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="custom/StyleTAB.css">

    <script type="text/javascript" src="Scripts/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="Scripts/webcam.js"></script>

</head>
<body>

    <h3>NOVO FUNCIONÁRIO</h3>
    <br />

    <input id="tab1" type="radio" name="tabs" checked>
    <label for="tab1">Funcionário</label>

    <input id="tab2" type="radio" name="tabs">
    <label for="tab2">Dados Pessoais</label>

    <input id="tab3" type="radio" name="tabs">
    <label for="tab3">Documentos</label>

    <input id="tab4" type="radio" name="tabs">
    <label for="tab4">Veículo</label>

    <input id="tab5" type="radio" name="tabs">
    <label for="tab5">OcorrÊncias</label>

    <!-- Funcionário  -->
    <section id="content1">
        <form class="form-horizontal">
            <fieldset>

                <div class="form-group">
                    <label for="inputNome" class="col-md-1 control-label">Nome</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="inputNome">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputIDCli" class="col-md-1 control-label">Cliente</label>
                    <div class="col-md-8">
                        <select class="form-control" id="selectCliente">
                            <asp:Literal ID="literal_clientes" runat="server"></asp:Literal>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputadmissao" class="col-md-1 control-label">Data Admissão</label>
                    <div class="col-md-2">
                        <input type="date" class="form-control" id="inputadmissao">
                    </div>

                    <label for="selectCargo" class="col-md-1 control-label">Cargo</label>
                    <div class="col-md-2">
                        <select class="form-control" id="selectCargo">
                            <option>Motoboy</option>
                            <option>Motorista</option>
                        </select>
                    </div>

                    <label for="inputSalario" class="col-md-1 control-label">Salário</label>
                    <div class="col-md-2">
                        <input type="number" class="form-control" id="inputSalario">
                    </div>

                </div>

            </fieldset>
        </form>
    </section>
    <!-- Funcionário  -->

    <!-- Dados Pessoais  -->
    <section id="content2">
        <form class="form-horizontal">
            <fieldset>
                <div class="form-group">
                    <label for="inputMae" class="col-md-1 control-label">Nome da Mãe</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="inputMae">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPai" class="col-md-1 control-label">Nome do Pai</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="inputPai">
                    </div>
                </div>

                <div class="form-group">
                    <label for="selectSexo" class="col-md-1 control-label">Sexo</label>
                    <div class="col-md-1">
                        <select class="form-control" id="selectSexo">
                            <option>M</option>
                            <option>F</option>
                        </select>
                    </div>

                    <label for="inputNasc" class="col-md-1 control-label">Nascimento</label>
                    <div class="col-md-3">
                        <input type="date" class="form-control" id="inputNasc">
                    </div>
                </div>

                <div class="form-group">
                    <!-- Camera  -->
                    <div id="results"></div>
                    <div id="my_camera"></div>

                    <br />
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="filePicker">Carregar Foto:</label><br>
                            <input type="file" id="filePicker">
                        </div>
                    </div>
                    <input id="Hidden1" name="fotouri" type="hidden" />
                    <br />
                    <!-- Camera  -->
                </div>

            </fieldset>
        </form>
    </section>
    <!-- Dados Pessoais  -->

    <!-- Documentos  -->
    <section id="content3">
    </section>
    <!-- Documentos  -->


    <!-- Veículo -->
    <section id="content4">
        <form class="form-horizontal">
            <fieldset>

                <div class="form-group">
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
                </div>

            </fieldset>
        </form>
    </section>
    <!-- Veículo  -->

    <!-- Ocorrências e Avalizações  -->
    <section id="content5">
    </section>
    <!-- Ocorrências e Avalizações  -->


    <div class="form-group">
        <div class="col-md-4 col-md-offset-1">
            <button type="reset" class="btn btn-primary" onclick="cancelar()"><i class="fa fa-undo"></i>VOLTAR</button>
            <button type="button" class="btn btn-success" onclick="SalvarRegistro()" id="btSalvar"><i class="fa fa-save"></i>SALVAR</button>
        </div>
    </div>


    <!-- Salvar Registro  -->
    <script type="text/javascript">

        function SalvarRegistro() {

            var v1 = document.getElementById("inputNome").value
            var v2 = document.getElementById("selectVeiculo").value
            var v3 = document.getElementById("inputModelo").value
            var v4 = document.getElementById("inputPlaca").value

            var e = document.getElementById("selectCliente")
            var v5 = e.options[e.selectedIndex].value
            var v6 = e.options[e.selectedIndex].text

            var v7 = document.getElementById("Hidden1").value

            if (v1 == "") {
                alert("ATENÇÃO! INFORME NOME DO FUNCIONÁRIO");
                document.getElementById("inputNome").focus();
                return;
            }

            if (v5 == "0") {
                alert("ATENÇÃO! SELECIONE UM CLIENTE DA LISTA");
                document.getElementById("selectCliente").focus();
                return;
            }

            document.getElementById("btSalvar").style.cursor = "progress";
            document.getElementById("btSalvar").disabled = true;

            $.ajax({
                type: "POST",
                url: "WebService.asmx/SalvarEntregador",
                data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5 + '", param6: "' + v6 + '", param7: "' + v7 + '"  }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var linkurl = response.d;
                    window.location.href = linkurl;
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function cancelar() {
            var linkurl = "Funcionarios.aspx";
            window.location.href = linkurl;
        }
    </script>
    <!-- Salvar Registro  -->

    <!-- Foto  -->
    <script language="JavaScript">

        var handleFileSelect = function (evt) {
            var files = evt.target.files;
            var file = files[0];

            if (files && file) {
                var reader = new FileReader();

                reader.onload = function (readerEvt) {
                    var binaryString = readerEvt.target.result;
                    var data_uri = "data:image/png;base64," + btoa(binaryString);

                    document.getElementById('results').innerHTML = '<img src="' + data_uri + '"/>';
                    document.getElementById("Hidden1").value = data_uri

                };

                reader.readAsBinaryString(file);
            }
        };

        if (window.File && window.FileReader && window.FileList && window.Blob) {
            document.getElementById('filePicker').addEventListener('change', handleFileSelect, false);
        } else {
            alert('The File APIs are not fully supported in this browser.');
        }
    </script>
    <!-- Foto  -->

    <!-- Foco  -->
    <script type="text/javascript">
        document.getElementById("inputNome").focus();
    </script>
</body>

</html>
