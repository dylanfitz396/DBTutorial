using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DBTutorial
{
    public partial class DisplayDBCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings[
                "IS4411ConnectionString1"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand(
                "SELECT Student_ID, Student_Name, Student_Address From Students",
                conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                StudentsName.Text += reader["Student_Name"] + "<br />";

            }

            reader.Close();
            conn.Close();
        }
    }
}