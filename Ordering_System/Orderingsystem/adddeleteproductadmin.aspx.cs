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
    public partial class addproductadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("insert into [products] ([productname],[description],[category],[price]) values('" + pname.Text + "', '" + description.Text + "', '" + section.Text + "', '" + price.Text + "' )", f);
            f.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Adding Product is completed");
            f.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(deletep.Text);
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("delete from [products] where [ID] = " + id, f); ;
            f.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Deleting Product is completed");
            f.Close();
        }
    }
}