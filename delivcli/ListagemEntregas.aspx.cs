﻿using System;
using System.Text;
using System.Web.UI;

namespace delivcli
{
    public partial class ListagemEntregas : Page
    {

        StringBuilder str = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // tenta identificar se houve login. caso contrário vai para página de erro
                string v_id_cli = Session["Cli_ID"].ToString();

                montaCabecalho();
                dadosCorpo();
                montaRodape();

                Literal1.Text = str.ToString();
            }
        }

        private void montaCabecalho()
        {
            string stringcomaspas = "<table class=\"table table-striped table-hover \">" +
                "<thead>" +
                "<tr>" +
                "<th>DESTINATÁRIO</th>" +
                "<th>ENTREGADOR</th>" +
                "<th>STATUS</th>" +
                "</tr>" +
                "</thead>" +
                "<tbody>";
            str.Clear();
            str.Append(stringcomaspas);
        }

        private void dadosCorpo()
        {
            string datastatus = DateTime.Now.ToString("yyyy-MM-dd");
            string stringselect = @"select Tbl_Motoboys.Nome, Tbl_Entregas.Nome_Destinatario, Tbl_Entregas.Status_Entrega" +
                    " from Tbl_Entregas " +
                    " INNER JOIN Tbl_Motoboys ON Tbl_Entregas.ID_Motoboy = Tbl_Motoboys.ID_Motoboy " +
                    " where Tbl_Entregas.ID_Cliente = " + Session["Cli_ID"].ToString() +
                    " and format(Tbl_Entregas.Data_Encomenda,'yyyy-MM-dd') ='" + datastatus + "'" +
                    " order by Tbl_Entregas.Nome_Destinatario";

            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);

            while (dados.Read())
            {

                string colunaEntregador = Convert.ToString(dados[0]);
                string colunaDestinatario = Convert.ToString(dados[1]);
                string colunaStatus = Convert.ToString(dados[2]);
                string colunaStatusFormat = "";
                string colunaStatusFormat1 = "";

                switch (colunaStatus)
                {
                    case "ENTREGA REALIZADA":
                        colunaStatusFormat = "<p class=\"text-success\">";
                        break;
                    case "EM ANDAMENTO":
                        colunaStatusFormat = "<p class=\"text-info\">";
                        break;
                    case "EM ABERTO":
                        colunaStatusFormat = "<p class=\"text-primary\">";
                        break;
                    default:
                        colunaStatusFormat = "<p class=\"text-danger\">";
                        colunaStatusFormat1 = "</p>";
                        break;
                }            

                string stringcomaspas = "<tr>" +
                    "<td>" + colunaDestinatario + "</td>" +
                    "<td>" + colunaEntregador + "</td>" +
                    "<td>" + colunaStatusFormat + colunaStatus + colunaStatusFormat1 + "</td>" +
                    "</tr>";

                str.Append(stringcomaspas);
            }
            ConexaoBancoSQL.fecharConexao();
        }

        private void montaRodape()
        {
            string footer = "</tbody></table>";
            str.Append(footer);
        }

    }
}