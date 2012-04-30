<%@ Page Language="C#" AutoEventWireup="true" CodeFile="flaggedreviews.aspx.cs" Inherits="flaggedreviews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="ID,Game_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Game:
                <asp:TextBox ID="GameTextBox" runat="server" Text='<%# Bind("Game") %>' />
                <br />
                Review:
                <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Review_Date:
                <asp:TextBox ID="Review_DateTextBox" runat="server" 
                    Text='<%# Bind("Review_Date") %>' />
                <br />
                Flagged:
                <asp:TextBox ID="FlaggedTextBox" runat="server" Text='<%# Bind("Flagged") %>' />
                <br />
                Platform:
                <asp:TextBox ID="PlatformTextBox" runat="server" 
                    Text='<%# Bind("Platform") %>' />
                <br />
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Game_ID:
                <asp:Label ID="Game_IDLabel1" runat="server" Text='<%# Eval("Game_ID") %>' />
                <br />
                Platform_ID:
                <asp:TextBox ID="Platform_IDTextBox" runat="server" 
                    Text='<%# Bind("Platform_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Game:
                <asp:TextBox ID="GameTextBox" runat="server" Text='<%# Bind("Game") %>' />
                <br />
                Review:
                <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Review_Date:
                <asp:TextBox ID="Review_DateTextBox" runat="server" 
                    Text='<%# Bind("Review_Date") %>' />
                <br />
                Flagged:
                <asp:TextBox ID="FlaggedTextBox" runat="server" Text='<%# Bind("Flagged") %>' />
                <br />
                Platform:
                <asp:TextBox ID="PlatformTextBox" runat="server" 
                    Text='<%# Bind("Platform") %>' />
                <br />


                Platform_ID:
                <asp:TextBox ID="Platform_IDTextBox" runat="server" 
                    Text='<%# Bind("Platform_ID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Game:
                <asp:Label ID="GameLabel" runat="server" Text='<%# Bind("Game") %>' />
                <br />
                Review:
                <asp:Label ID="ReviewLabel" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Review_Date:
                <asp:Label ID="Review_DateLabel" runat="server" 
                    Text='<%# Bind("Review_Date") %>' />
                <br />
                Flagged:
                <asp:Label ID="FlaggedLabel" runat="server" Text='<%# Bind("Flagged") %>' />
                <br />
                Platform:
                <asp:Label ID="PlatformLabel" runat="server" Text='<%# Bind("Platform") %>' />
                <br />
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Game_ID:
                <asp:Label ID="Game_IDLabel" runat="server" Text='<%# Eval("Game_ID") %>' />
                <br />
                Platform_ID:
                <asp:Label ID="Platform_IDLabel" runat="server" 
                    Text='<%# Bind("Platform_ID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Change" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete Review" />
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:vgreviewsConnectionString %>" 
        SelectCommand="SELECT Games.Game, Games.Review, Games.Review_Date, Games.Flagged, Platforms.Platform, Platforms.ID, Games.Game_ID, Games.Platform_ID FROM Games INNER JOIN Platforms ON Games.Platform_ID = Platforms.ID WHERE Games.Flagged = 'Y'"
        DeleteCommand="DELETE FROM [Games] WHERE [Game_ID] = @original_Game_ID AND (([Game] = @original_Game) OR ([Game] IS NULL AND @original_Game IS NULL)) AND (([Review] = @original_Review) OR ([Review] IS NULL AND @original_Review IS NULL)) AND (([Platform_ID] = @original_Platform_ID) OR ([Platform_ID] IS NULL AND @original_Platform_ID IS NULL)) AND (([Review_Date] = @original_Review_Date) OR ([Review_Date] IS NULL AND @original_Review_Date IS NULL))" 
        UpdateCommand="UPDATE [Games] SET [Game] = @Game, [Review] = @Review, [Platform_ID] = @Platform_ID, [Review_Date] = @Review_Date, [Flagged] = @Flagged WHERE [Game_ID] = @original_Game_ID AND (([Game] = @original_Game) OR ([Game] IS NULL AND @original_Game IS NULL)) AND (([Review] = @original_Review) OR ([Review] IS NULL AND @original_Review IS NULL)) AND (([Platform_ID] = @original_Platform_ID) OR ([Platform_ID] IS NULL AND @original_Platform_ID IS NULL)) AND (([Review_Date] = @original_Review_Date) OR ([Review_Date] IS NULL AND @original_Review_Date IS NULL)) AND (([Flagged] = @original_Flagged))">
           
           <DeleteParameters>
                <asp:Parameter Name="original_Game_ID" Type="Int32" />
                <asp:Parameter Name="original_Game" Type="String" />
                <asp:Parameter Name="original_Review" Type="String" />
                <asp:Parameter Name="original_Platform_ID" Type="Int32" />
                <asp:Parameter Name="original_Review_Date" Type="DateTime" />
            </DeleteParameters>
           <UpdateParameters>
                <asp:Parameter Name="Game" Type="String" />
                <asp:Parameter Name="Review" Type="String" />
                <asp:Parameter Name="Platform_ID" Type="Int32" />
                <asp:Parameter Name="Review_Date" Type="DateTime" />
                <asp:Parameter Name="Flagged" />
                <asp:Parameter Name="original_Game_ID" Type="Int32" />
                <asp:Parameter Name="original_Game" Type="String" />
                <asp:Parameter Name="original_Review" Type="String" />
                <asp:Parameter Name="original_Platform_ID" Type="Int32" />
                <asp:Parameter Name="original_Review_Date" Type="DateTime" />
                <asp:Parameter Name="original_Flagged" />
            </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin-page.aspx">Back to Admin Page</asp:HyperLink>
    </form>
</body>
</html>
