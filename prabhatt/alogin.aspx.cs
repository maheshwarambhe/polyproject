using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        pDataClassesDataContext us = new pDataClassesDataContext();
        var result = (from x in us.admins
                      where x.username.Equals(TextBox5.Text) &
                      x.password.Equals(TextBox6.Text)
                      select x).FirstOrDefault();
        if (result != null)
            Response.Redirect("~/admin/adminhome.aspx");
        else
        {
            Label1.Visible = true;
            Label1.Text = "Username Or password is Incorrect .";
        }
    }
}