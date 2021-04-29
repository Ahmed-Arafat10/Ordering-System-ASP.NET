using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
namespace Orderingsystem
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("select count(*) from [users] where [name]='" + name.Text + "'", f);
            f.Open();
            int user = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (user == 1)
            {
                OleDbCommand cmd1 = new OleDbCommand("select [password] from [users] where [name]='" + name.Text + "'", f);
                string pass1 = cmd1.ExecuteScalar().ToString();
                if (pass.Text == pass1) {
                    Response.Redirect("viewproductsmakeorder.aspx");
                }
                else
                {
                    Response.Write("Wrong Password");

                }

            }
            else
                Response.Write("Username is incorrect");
           
          
            f.Close();
        }
    }
}