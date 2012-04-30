using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Review_Pages_add_review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertCommand = "INSERT INTO [Games] (Game, Review, Platform_ID, Review_date) VALUES ('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + DropDownList2.SelectedValue + "', GetDate())";
        SqlDataSource1.Insert();
        Response.Redirect("reviews.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("reviews.aspx");
    }
}