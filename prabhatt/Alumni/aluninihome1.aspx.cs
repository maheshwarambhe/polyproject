using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;



public partial class Default3 : System.Web.UI.Page
{
    public string dd;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"];
        string dd = Label1.Text;
        string strConnect = "Data Source=ACER-PC;Initial Catalog=prabhatdatabase;User ID=sa;Password=sa;Pooling=False";
        SqlConnection Conn = new SqlConnection(strConnect);
        string Command = "Select * from alumini_info where Email ='" + Label1.Text + "'";
        SqlCommand cmd = new SqlCommand(Command, Conn);
        Conn.Open();
        SqlDataReader Fr = cmd.ExecuteReader();
        while (Fr.Read())
        {
            String cont = Fr.GetString(6);
            String addrssss = Fr.GetString(7);
            String statuss = Fr.GetString(5);
            TextBox1 .Text  = cont;
            TextBox2 .Text  = addrssss;
           TextBox3 .Text = statuss;
          
        }





    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        string emailss = Request.QueryString["id"];
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("~/imagedata/" + filename));
        SqlConnection con = new SqlConnection("Data Source=ACER-PC;Initial Catalog=prabhatdatabase;User ID=sa;Password=sa;Pooling=False");//Getting dbconnection from web.config connectionstring

        con.Open();

        SqlCommand cmd = new SqlCommand("UPDATE alumini_info SET image_name = @ImageName, image_path=@ImagePath WHERE Email = '" + Label1.Text + "'", con);

        cmd.Parameters.AddWithValue("@ImageName", filename);
        cmd.Parameters.AddWithValue("@ImagePath", "imagedata/" + filename);
        cmd.ExecuteNonQuery();
        Image2.Visible = true;
        Image2.ImageUrl = "~/imagedata/" + filename;
        //Close dbconnection
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        pDataClassesDataContext db = new pDataClassesDataContext();

        var query = from ord in db.alumini_infos
                    where ord.Email == Label1.Text
                    select ord;

        // Execute the query, and change the column values 
        // you want to change. 
        foreach (alumini_info ord in query)
        {
            ord.contact_no = TextBox1.Text;
            ord.Address = TextBox2.Text;
            ord.status = TextBox3.Text;
            // Insert any additional changes to column values.
        }

        // Submit the changes to the database. 
        try
        {
            db.SubmitChanges();
            Label2.Visible = true;
            Label2.Text = "Succesfully Updated..";
        }
        catch
        {
        }
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