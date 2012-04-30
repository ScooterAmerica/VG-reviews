using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class platform_xml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["vgreviewsConnectionString"].ConnectionString);

        SqlDataAdapter adapter = new SqlDataAdapter("SELECT ID, Platform FROM [Platforms]", connection);
        DataSet ds = new DataSet("Platforms");
        adapter.Fill(ds, "Platforms");
        Response.Clear();

        Response.ContentType = "application/xml";
        ds.WriteXml(Response.Output);
        Response.End();
    }
}