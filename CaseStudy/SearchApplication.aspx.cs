using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy
{
    public partial class SearchApplication : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
           {
                Bind();
           }
            
            
        }
        private void Bind()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
            con.Open();
            string str = "select * from PopulationCensus";
            if (TextBox1.Text.Length != 0)
                str = str + "where Firstname like'" + TextBox1.Text + "'";
            else if (TextBox2.Text.Length != 0)
                str = str + "where Lastname like'" + TextBox1.Text + "'";
            else if (TextBox3.Text.Length != 0)
                str = str + "where Dob=" + DateTime.Parse(TextBox3.Text);
            else if (TextBox4.Text.Length != 0)
                str = str + "where ApplicationId=" + int.Parse(TextBox4.Text);
            cmd = new SqlCommand(str, con);
            SqlDataReader R = cmd.ExecuteReader();
            DataSet Ds = new DataSet();
            Ds.Tables.Add("P");
            Ds.Tables["P"].Load(R);
            GridView1.DataSource = Ds.Tables["P"];
            GridView1.DataBind();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Bind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind();

        }

    }
}