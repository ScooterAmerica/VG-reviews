<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add-review.aspx.cs" Inherits="Review_Pages_add_review" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #FFFFFF">
    
        <asp:Label ID="Label2" runat="server" Text="Please Select your game to review"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Game" DataValueField="Game">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Select Platform"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="Platform" 
            DataValueField="ID">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Review Pages/add-game.aspx">Add a Platform</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" 
            Text="Enter your review in the box below and click to submit"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="132px"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Click" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Go to Reviews" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:vgreviewsConnectionString %>" 
            SelectCommand="SELECT [Game] FROM [Games]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:vgreviewsConnectionString %>" 
            SelectCommand="SELECT * FROM [Platforms]"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
