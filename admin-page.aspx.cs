using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Edit Reviews/reviewedit-delete.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("flaggedreviews.aspx");
    }
}