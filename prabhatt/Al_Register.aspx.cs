using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button46_Click(object sender, EventArgs e)
    {
        pDataClassesDataContext db1 = new pDataClassesDataContext();
        var result = (from x in db1.alumini_infos 
                      where x.Email .Equals(emails .Text )
                      select x).FirstOrDefault();
        if (result != null)
        {

            string strConnect = "Data Source=ACER-PC;Initial Catalog=prabhatdatabase;User ID=sa;Password=sa;Pooling=False";
            SqlConnection Conn = new SqlConnection(strConnect);
            string Command = "Select * from alumini_info where Email ='" + emails.Text + "'";
            SqlCommand cmd = new SqlCommand(Command, Conn);
            Conn.Open();
            SqlDataReader Fr = cmd.ExecuteReader();
            while (Fr.Read())
            {
                String enrolid = Fr.GetString(0);
                String ffname = Fr.GetString(1);
                String passyear = Fr.GetString(2);
                String Brancc = Fr.GetString(3);
                enrli.Text = enrolid;
                fname.Text = ffname;
                pyear.Text = passyear;
                branch.Text = Brancc;
            }
            emails.ReadOnly = true;
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Incorrect email Or You are not Alumni of college";
        }
       
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        pDataClassesDataContext db1 = new pDataClassesDataContext();
        var result = (from x in db1.alumini_infos 
                      where x.contact_no  .Equals(null )&
                      x.Email .Equals(emails .Text )
                      select x).FirstOrDefault();
        if (result != null)
        {
            pDataClassesDataContext db = new pDataClassesDataContext();

            var query = from ord in db.alumini_infos
                        where ord.Email == emails.Text
                        select ord;

            // Execute the query, and change the column values 
            // you want to change. 
            foreach (alumini_info ord in query)
            {
                ord.contact_no = contact.Text;
                ord.Address = address.Text;
                ord.password = pass.Text;
                ord.mother_name = mtrname.Text;
                // Insert any additional changes to column values.
            }

            // Submit the changes to the database. 
            try
            {
                db.SubmitChanges();
                Response.Redirect("~/Al_login.aspx");
            }
            catch 
            { 
                Label1.Visible = true;
                Label1.Text = "fails to register";
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "You are already Register Alumini ";
            emails.ReadOnly = true; 
        }
    }

   
   
  
}
