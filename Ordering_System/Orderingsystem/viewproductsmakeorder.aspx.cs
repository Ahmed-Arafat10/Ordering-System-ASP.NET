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
    public partial class viewproductsmakeorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(DropDownList1.Text);
             OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("select [price] from [products] where [ID]=" + id, f);
            f.Open();
            string price = cmd.ExecuteScalar().ToString();
            OleDbCommand cmd1 = new OleDbCommand("insert into [orders] ([useremail],[productid],[price]) values('" + email.Text + "','" + DropDownList1.Text + "'," +price + ")" , f);
            cmd1.ExecuteNonQuery();
            Response.Write("Order is completed");
            f.Close();
           
        }
    }
}