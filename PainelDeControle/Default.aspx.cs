﻿using System;

public partial class _Default : System.Web.UI.Page
{
    string vUSerID;

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidaAcesso();
    }

    private void ValidaAcesso()
    {
        string vSec;
        string vValida1, vValida2;

        vSec = Request.QueryString["p1"];

        vValida1 = DateTime.Now.ToString("dd");
        vValida2 = DateTime.Now.ToString("MM");

        int vValida4 = Convert.ToInt16(vValida1) * Convert.ToInt16(vValida2);
        string vValida5 = vValida4.ToString();

        if (vSec != vValida5)
        {
            Response.Redirect("http://logmaster.azurewebsites.net/SorryConect.aspx");
        }

        vUSerID = Request.QueryString["p2"];


    }

}