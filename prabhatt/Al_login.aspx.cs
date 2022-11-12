using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string username = TextBox5 .Text ;
        pDataClassesDataContext us = new pDataClassesDataContext();
        var result = (from x in us.alumini_infos
                      where x.Email.Equals(TextBox5.Text) &
                      x.password.Equals(TextBox6.Text)
                      select x).FirstOrDefault();
        if (result != null)
            Response.Redirect("~/Alumni/aluninihome.aspx?id=" + username);
        else
        {
            Label1.Visible = true;
            Label1.Text = "Username Or password is Incorrect .";
        }
    }
}