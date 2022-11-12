using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    public string dd;

    protected void Page_Load(object sender, EventArgs e)
    {

        string dd = Request.QueryString["id"];
        Label1.Text = dd;


    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Alumni/aluninihome.aspx?id=" + dd);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Alumni/aluninihome1.aspx?id=" + dd);
    }


}