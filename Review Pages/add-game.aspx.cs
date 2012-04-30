using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Review_Pages_add_game : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlDataSource1.InsertCommand = "INSERT INTO [Games] (Game, Platform_ID) VALUES ('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "')";
        SqlDataSource1.Insert();
        Response.Redirect("add-review.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("reviews.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertCommand = "INSERT INTO [Platforms] (Platform) VALUES ('" + TextBox2.Text + "')";
        SqlDataSource1.Insert();
        Response.Redirect("add-game.aspx");

    
    }
}