using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class game_xml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["vgreviewsConnectionString"].ConnectionString);

        SqlDataAdapter adapter = new SqlDataAdapter("SELECT Game, Review, Platform_ID, Review_Date FROM [Games]", connection);
        DataSet ds = new DataSet("Games");
        adapter.Fill(ds, "Games");
        Response.Clear();

        Response.ContentType = "application/xml";
        ds.WriteXml(Response.Output);
        Response.End();

    }
}