<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="admin-page.aspx.cs" Inherits="admin_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
    Text="Edit Reviews" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Flagged Reviews" Width="109px" />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/game-xml.aspx">Game XML</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/platform-xml.aspx">Platform XML</asp:HyperLink>
    <br />
    <br />
</asp:Content>

