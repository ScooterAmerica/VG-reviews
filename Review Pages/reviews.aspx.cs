using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("add-review.aspx");
    }
    protected void addgamebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("add-game.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT Games.[Game_ID], Games.Game, Games.Review, Games.Platform_ID, Games.Review_Date, Platforms.Platform FROM Games INNER JOIN Platforms ON Platform_ID = Platforms.ID WHERE Games.Platform_ID like '%" + TextBox1.Text + "%' OR Games.Game like '%" + TextBox1.Text + "%'";
    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("reviews.aspx");
    }
    protected void RowCmd(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Flag")
        {
            GridView gv = (GridView)sender;
            string s = gv.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString();

            HttpCookie cookie;


            if (Request.Cookies.Get("flagreview") == null)
            {
                cookie = new HttpCookie("flagreview");
                cookie.Value = s;
                Response.Cookies.Add(cookie);
            }

            else
            {
                cookie = Request.Cookies.Get("flagreview");
                cookie.Value = cookie.Value + "," + s;
                cookie.Expires = DateTime.Now.AddHours(+2);
                Response.Cookies.Add(cookie);

                SqlDataSource1.SelectCommand = "SELECT Games.Game, Games.Review, Games.Review_Date, Platforms.Platform, Platforms.ID, Games.Game_ID, Games.Platform_ID FROM Games INNER JOIN Platforms ON Games.Platform_ID = Platforms.ID WHERE Game_ID NOT IN (" + cookie.Value + ")";
            
            }

            unflagbtn.Enabled = true;
            
        }
    }

    protected void GameView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies.Get("flagreview");
        cookie.Expires = DateTime.Now.AddHours(-2);
        Response.Cookies.Add(cookie);

        unflagbtn.Enabled = false;
    }
}