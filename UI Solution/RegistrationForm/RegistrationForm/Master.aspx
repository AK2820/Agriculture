<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Master.aspx.cs" Inherits="RegistrationForm.Master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <h1> Master Page</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="E_mail_Id" HeaderText="E_mail_Id" SortExpression="E_mail_Id" />
                <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" SortExpression="User_ID" />
                <asp:BoundField DataField="SignUpTime" HeaderText="SignUpTime" SortExpression="SignUpTime" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Update" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" Text="save" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT [id], [First_Name], [Last_Name], [E_mail_Id], [Contact_No], [User_ID], [SignUpTime], [Role] FROM [Users]" DeleteCommand="DELETE FROM [Users] WHERE [id] = @id" InsertCommand="INSERT INTO [Users] ([First_Name], [Last_Name], [E_mail_Id], [Contact_No], [User_ID], [SignUpTime], [Role]) VALUES (@First_Name, @Last_Name, @E_mail_Id, @Contact_No, @User_ID, @SignUpTime, @Role)" UpdateCommand="UPDATE [Users] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [E_mail_Id] = @E_mail_Id, [Contact_No] = @Contact_No, [User_ID] = @User_ID, [SignUpTime] = @SignUpTime, [Role] = @Role WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="E_mail_Id" Type="String" />
                <asp:Parameter Name="Contact_No" Type="String" />
                <asp:Parameter Name="User_ID" Type="String" />
                <asp:Parameter Name="SignUpTime" Type="DateTime" />
                <asp:Parameter Name="Role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="E_mail_Id" Type="String" />
                <asp:Parameter Name="Contact_No" Type="String" />
                <asp:Parameter Name="User_ID" Type="String" />
                <asp:Parameter Name="SignUpTime" Type="DateTime" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
