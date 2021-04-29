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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("insert into [users] ([name],[email],[password],[confirmpassword],[address]) values('" + name.Text + "', '" + email.Text + "', '" + pass.Text + "', '" + conpass.Text + "', '" + address.Text + "')", f);
            f.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("signin.aspx");
            f.Close();
        }
    }
}