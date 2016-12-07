﻿<%@ Page Title="Situação Atual" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Relatorio1.aspx.cs" Inherits="delivcli.Relatorio1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h1>Produtividade no Período 
    
        <br />
    
    <div class="btn-group">
        <a href="#" class="btn btn-default">HOJE</a>
        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#">ONTEM</a></li>
            <li><a href="#">ESTA SEMANA</a></li>
            <li><a href="#">SEMANA ANTERIOR</a></li>
            <li class="divider"></li>
            <li><a href="#">ESTE MÊS</a></li>
            <li><a href="#">MÊS ANTERIOR</a></li>
            <li class="divider"></li>
            <li><a href="#">ESPECIFICAR PERÍODO</a></li>
        </ul>
    </div>

    </h1>

    <table class="table table-striped table-hover ">
        <thead>
            <tr>
                <th>Entregador</th>
                <th>Total de Entregas</th>
                <th>Total em Km</th>
                <th>Total Tempo Gasto</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>xxx</td>
                <td>999</td>
                <td>999</td>
                <td>999</td>
            </tr>
        </tbody>
    </table>

</asp:Content>