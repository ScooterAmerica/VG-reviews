<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
        <span class="style1" style="color: #000000">Welcome to our Game Review Site.&nbsp; On this site you will find games for all 
    platforms.&nbsp; You will also be able to find links to online sites that sell 
    most of the</p>
<p style="color: #000000">
    games you find here.&nbsp; If you wish to add your own review you can click 
    the Login Button at the top corner of the page.&nbsp; If you dont have a 
    username you can
</p>
<p style="color: #000000">
    spend the 2 seconds it will take to&nbsp;&nbsp;
    </span>
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/Account/Register.aspx" CssClass="style1">Register</asp:HyperLink>
    <span class="style1" dir="ltr" style="color: #000000">&nbsp;(really people...it doesnt take that 
    long).</span>&nbsp;</p>
</asp:Content>
