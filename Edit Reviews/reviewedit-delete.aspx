<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reviewedit-delete.aspx.cs" Inherits="Edit_Reviews_reviewedit_delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="Game_ID" DataSourceID="SqlDataSource1" Height="266px" 
            Width="516px">
            <EditItemTemplate>
                Game_ID:
                <asp:Label ID="Game_IDLabel1" runat="server" Text='<%# Eval("Game_ID") %>' />
                <br />
                Game:
                <asp:TextBox ID="GameTextBox" runat="server" Text='<%# Bind("Game") %>' />
                <br />
                Review:
                <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Platform_ID:
                <asp:TextBox ID="Platform_IDTextBox" runat="server" 
                    Text='<%# Bind("Platform_ID") %>' />
                <br />
                Review_Date:
                <asp:TextBox ID="Review_DateTextBox" runat="server" 
                    Text='<%# Bind("Review_Date") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
           
            <ItemTemplate>
                Game_ID:
                <asp:Label ID="Game_IDLabel" runat="server" Text='<%# Eval("Game_ID") %>' />
                <br />
                Game:
                <asp:Label ID="GameLabel" runat="server" Text='<%# Bind("Game") %>' />
                <br />
                Review:
                <asp:Label ID="ReviewLabel" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Platform_ID:
                <asp:Label ID="Platform_IDLabel" runat="server" 
                    Text='<%# Bind("Platform_ID") %>' />
                <br />
                Review_Date:
                <asp:Label ID="Review_DateLabel" runat="server" 
                    Text='<%# Bind("Review_Date") %>' />
                <br />
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID = "UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Delete" Text="Remove" 
                    />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:vgreviewsConnectionString %>" 
            
            SelectCommand="SELECT [Game_ID], [Game], [Review], [Platform_ID], [Review_Date] FROM [Games]" 
            OldValuesParameterFormatString="original_{0}" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Games] WHERE [Game_ID] = @original_Game_ID AND (([Game] = @original_Game) OR ([Game] IS NULL AND @original_Game IS NULL)) AND (([Review] = @original_Review) OR ([Review] IS NULL AND @original_Review IS NULL)) AND (([Platform_ID] = @original_Platform_ID) OR ([Platform_ID] IS NULL AND @original_Platform_ID IS NULL)) AND (([Review_Date] = @original_Review_Date) OR ([Review_Date] IS NULL AND @original_Review_Date IS NULL))" 
            InsertCommand="INSERT INTO [Games] ([Game], [Review], [Platform_ID], [Review_Date]) VALUES (@Game, @Review, @Platform_ID, @Review_Date)" 
            UpdateCommand="UPDATE [Games] SET [Game] = @Game, [Review] = @Review, [Platform_ID] = @Platform_ID, [Review_Date] = @Review_Date WHERE [Game_ID] = @original_Game_ID AND (([Game] = @original_Game) OR ([Game] IS NULL AND @original_Game IS NULL)) AND (([Review] = @original_Review) OR ([Review] IS NULL AND @original_Review IS NULL)) AND (([Platform_ID] = @original_Platform_ID) OR ([Platform_ID] IS NULL AND @original_Platform_ID IS NULL)) AND (([Review_Date] = @original_Review_Date) OR ([Review_Date] IS NULL AND @original_Review_Date IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Game_ID" Type="Int32" />
                <asp:Parameter Name="original_Game" Type="String" />
                <asp:Parameter Name="original_Review" Type="String" />
                <asp:Parameter Name="original_Platform_ID" Type="Int32" />
                <asp:Parameter Name="original_Review_Date" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Game" Type="String" />
                <asp:Parameter Name="Review" Type="String" />
                <asp:Parameter Name="Platform_ID" Type="Int32" />
                <asp:Parameter Name="Review_Date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Game" Type="String" />
                <asp:Parameter Name="Review" Type="String" />
                <asp:Parameter Name="Platform_ID" Type="Int32" />
                <asp:Parameter Name="Review_Date" Type="DateTime" />
                <asp:Parameter Name="original_Game_ID" Type="Int32" />
                <asp:Parameter Name="original_Game" Type="String" />
                <asp:Parameter Name="original_Review" Type="String" />
                <asp:Parameter Name="original_Platform_ID" Type="Int32" />
                <asp:Parameter Name="original_Review_Date" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Review Pages/reviews.aspx">Reviews</asp:HyperLink>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin-page.aspx">Back to Admin Panel</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
