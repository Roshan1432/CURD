using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Monday;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (name.Text == "" && Gen.Text == "" || age.Text == "" || add.Text == "" || contact.Text == "") 
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Enter the details')</script>");
            }
            
           else
            {

            Griddisplay();
                SqlCommand cmd = new SqlCommand("Insert into mon Values(@Name,@Gender,@Age,@Address,@Contact)",con);
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@Gender", Gen.Text);
                cmd.Parameters.AddWithValue("@Age", age.Text);
                cmd.Parameters.AddWithValue("@Address", add.Text);
                cmd.Parameters.AddWithValue("@Contact", contact.Text);



            con.Open();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Data Inserted Sucessfully!')</script>");
            cmd.ExecuteNonQuery();
            con.Close();
            //name.Text = "";
            //Gen.Text = "";
            //age.Text = "";
            //add.Text = "";
            //contact.Text = "";



            Griddisplay();
            }
        }
        void Griddisplay()
        {
            SqlCommand cmd = new SqlCommand("Select * from mon",con);
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Delete mon Where Name= @name",con);
            cmd.Parameters.AddWithValue("@Name",name.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Griddisplay();
            //name.Text = "";
            //Gen.Text = "";
            //age.Text = "";
            //add.Text = "";
            //contact.Text = "";
        }
        void clear()
        {
            name.Text = "";
            Gen.Text = "";
            age.Text = "";
            add.Text = "";
            contact.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update mon set  Gender= '" + Gen.Text + "',Age='"+age.Text+"',Address='"+add.Text + "',Contact='"+contact.Text + "' where  Name = '" + name.Text + "'", con);
            //cmd.Parameters.AddWithValue("@Name", name.Text);
            //cmd.Parameters.AddWithValue("@Gender", Gen.Text);
            //cmd.Parameters.AddWithValue("@Age", age.Text);
            //cmd.Parameters.AddWithValue("@Address", add.Text);
            //cmd.Parameters.AddWithValue("@Contact", contact.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Griddisplay();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}