<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="reviews.aspx.cs" Inherits="reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" 
        
        
    Text="Looking for Something Specific? Search for your game or platform here" 
    ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="141px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="findbtn" runat="server" Text="Find Game" 
        onclick="Button1_Click1" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click2" 
        Text="Show All" />
    <br />
    <br />
<asp:HyperLink ID="HyperLink1" runat="server" 
    NavigateUrl="~/Account/Login.aspx">Login</asp:HyperLink>
&nbsp;<asp:Label ID="Label2" runat="server" Text="or" ForeColor="Black"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" 
    NavigateUrl="~/Account/Register.aspx">Sign Up</asp:HyperLink>
&nbsp;<asp:Label ID="Label1" runat="server" 
    Text="to add your own review or game" ForeColor="Black"></asp:Label>
    <br />
    <br />
    <br />
    <asp:LoginView ID="LoginView1" runat="server">
    <RoleGroups>
        <asp:RoleGroup Roles="User,Admin">
            <ContentTemplate>
                <asp:Button ID="addreviewbtn" runat="server" onclick="Button1_Click" 
                    Text="Add Review" />
            </ContentTemplate>
        </asp:RoleGroup>
    </RoleGroups>
</asp:LoginView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LoginView ID="LoginView2" runat="server">
    <RoleGroups>
        <asp:RoleGroup Roles="User,Admin">
            <ContentTemplate>
                <asp:Button ID="addgamebtn" runat="server" onclick="addgamebtn_Click" 
                    Text="Add Game" />
            </ContentTemplate>
        </asp:RoleGroup>
    </RoleGroups>
</asp:LoginView>
            <br />
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="Red" 
        Text="Here you can View our list of reviews.  You can click on the buttons above to add your review or add your own game.  There is also a feature to flag reviews you feel are inappropriate for our site.  This will bring it to our attention and we will respon as quickly as possible.  Note: clicking the flag button only once will notify us of the problem.  You may however see the quote still on the page.  This is because we have yet to deal with it.  It does not mean you need to keep clicking the button and getting mad at your computer.  Trust me, your request has been duely noted."></asp:Label>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="unflagbtn" runat="server" Enabled="False" 
        onclick="Button2_Click" Text="UnFlag" Width="136px" />
<br />
<asp:GridView ID="GameView" runat="server" Height="785px" Width="851px" 
        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="Game_ID" 
        onrowcommand="RowCmd" 
        onselectedindexchanged="GameView_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#009933" ForeColor="Black" />
    <Columns>
        <asp:BoundField DataField="Game" HeaderText="Game" SortExpression="Game" />
        <asp:BoundField DataField="Review" HeaderText="Review" 
            SortExpression="Review" />
        <asp:BoundField DataField="Platform" 
            HeaderText="Platform" SortExpression="Platform" />
        <asp:BoundField DataField="Review_Date" HeaderText="Review_Date" 
            SortExpression="Review_Date" />
        <asp:ButtonField CommandName="Flag" Text="Flag as Inappropriate" />
    </Columns>
    <HeaderStyle BackColor="#009933" ForeColor="Black" />
    <RowStyle BackColor="Black" ForeColor="White" />
</asp:GridView>
<br />
<br />
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:vgreviewsConnectionString %>" 
     
        
        SelectCommand="SELECT Games.Game, Games.Review, Games.Review_Date, Games.Flagged, Platforms.Platform, Platforms.ID, Games.Game_ID, Games.Platform_ID FROM Games INNER JOIN Platforms ON Games.Platform_ID = Platforms.ID "></asp:SqlDataSource>
    <br />
    <br />
<br />
<br />
&nbsp;
</asp:Content>

