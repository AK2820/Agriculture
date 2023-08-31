<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridV.aspx.cs" Inherits="RegistrationForm.GridV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-style: italic; font-variant: inherit; color: #000000; text-decoration: underline"> Crop Grid Table </h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="CropsData" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="C_No" HeaderText="C_No" />
                    <asp:BoundField DataField="C_Name" HeaderText="C_Name" />
                    <asp:BoundField DataField="C_Type" HeaderText="C_Type" />
                    <asp:BoundField DataField="C_Duration" HeaderText="C_Duration" />
                    <asp:BoundField DataField="C_Description" HeaderText="C_Description" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
    <asp:Label ID="ErrorMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
</body>
</html>
