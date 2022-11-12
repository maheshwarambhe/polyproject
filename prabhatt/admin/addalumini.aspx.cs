using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label1.Visible = false;
            string yea = year.SelectedItem.Text;

            if (yea == "Select_Year")
            {
                Label1.Visible = true;
                Label1.Text = "select year first...";
            }
            else
            {
                string BRAN = branch.SelectedItem.Text;

                if (BRAN == "Select_Branch")
                {
                    Label1.Visible = true;
                    Label1.Text = "select Branch first...";
                }
                else
                {
                    pDataClassesDataContext pdc = new pDataClassesDataContext();
                    alumini_info al = new alumini_info();
                    al.Enrolment_No = Convert.ToString(enrli.Text);
                    al.Full_name = Convert.ToString(fname.Text);
                    al.Passing_Year = Convert.ToString(year.SelectedItem.Text);
                    al.Branch = Convert.ToString(branch.SelectedItem.Text);
                    al.Email = Convert.ToString(emails.Text);
                    pdc.alumini_infos.InsertOnSubmit(al);
                    pdc.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Alumni Added Successfully";
                }
            }

        }

        catch
        {
            Label2.Visible = true;
            Label2.Text = "Alumni Already Added";
        }
    }
}

