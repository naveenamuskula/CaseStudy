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
    public partial class HouseholdInfo : System.Web.UI.Page
    {
        
        List<Population> L = new List<Population>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["S"] != null)
                L = (List<Population>)Session["S"];
                    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Population p = new Population();
            DBClass DB = new DBClass();
            p.ApplicationId = DB.getAppid();
            p.MemberId = L.Count + 1;
            p.Firstname = TextBox1.Text;
            p.Middlename = TextBox2.Text;
            p.Lastname = TextBox3.Text;
            p.Suffix = DropDownList1.SelectedValue;
            p.Dob = DateTime.Parse(TextBox4.Text);
            p.Gender = RadioButtonList1.SelectedValue;
            L.Add(p);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedValue = "-1";
            RadioButtonList1.SelectedValue = "";
            Session["S"] = L;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DBClass DB = new DBClass();
            string s=DB.SaveMembers(L);
            Session.Remove("S");
            Response.Redirect("Confirmation.aspx?s=" + s);


        }
    }
}