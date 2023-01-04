using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class saved_jobs : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataReader dr = null;
    SqlCommand cmd = null;
    SqlDataAdapter adp = null;
    string strcon = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strcon);
        con.Open();

        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into job_applied";
        


    }
}
