using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class DBClass
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        
        public int getAppid()
        {
            int C = 0;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
                con.Open();
                cmd = new SqlCommand("select max(ApplicationId) from PopulationCensus", con);
                string s = cmd.ExecuteScalar().ToString();
                if (s == "")
                    C++;
                else
                    C = int.Parse(s) + 1;
                   
                   
            }
            catch (SqlException E)
            {
               
            }
            finally
            {
                con.Close();
            }
            return C;
        }
        public string SaveMembers(List<Population> L)
        {
            string str = null;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
                cmd = new SqlCommand("sp_popcensus", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable DT = new DataTable();
                DT.Columns.Add("AplicationId", typeof(Int32));
                DT.Columns.Add("ProductId", typeof(Int32));
                DT.Columns.Add("Firstname", typeof(string));
                DT.Columns.Add("Middlename", typeof(string));
                DT.Columns.Add("Lastname", typeof(string));
                DT.Columns.Add("Suffix", typeof(string));
                DT.Columns.Add("Dob", typeof(DateTime));
                DT.Columns.Add("Gender", typeof(string));
                for (int i = 0; i < L.Count; i++)
                {
                    DT.Rows.Add(L[i].ApplicationId, L[i].MemberId, L[i].Firstname, L[i].Middlename, L[i].Lastname, L[i].Suffix, L[i].Dob, L[i].Gender);
                   
                }
                SqlParameter P = new SqlParameter("@result", DT);//sending table to database
                P.SqlDbType = SqlDbType.Structured;//structured is used when we are sending TABLE
                cmd.Parameters.Add(P);
                cmd.ExecuteNonQuery();
                str= "Application is submitted with " + L.Count + " Members details.Your Application id " + L[0].ApplicationId;
            }
            catch (SqlException E)
            {

            }
            finally
            {
                con.Close();
            }
            return str;
        }
        
    }
}