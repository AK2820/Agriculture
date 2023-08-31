<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridDemo.aspx.cs" Inherits="RegistrationForm.GridDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="C_No"
            ShowHeaderWhenEmpty="True"

            OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
            OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"
           
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="Vertical">

            <AlternatingRowStyle BackColor="#DCDCDC" />
             <Columns>
            <asp:TemplateField HeaderText="C_Name"> 
                <ItemTemplate>
                    <asp:Label text='<%#Eval("C_Name") %>' runat="server"> </asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtC_Name" text='<%#Eval("C_Name")%>' runat="server" ></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtC_NameFooter" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="C_Type"> 
                <ItemTemplate>
                    <asp:Label text='<%#Eval("C_Type") %>' runat="server"> </asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtC_Type" text='<%#Eval("C_Name")%>' runat="server" ></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                  <asp:TextBox ID="txtC_TypeFooter" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="C_Duration"> 
                <ItemTemplate>
                    <asp:Label text='<%#Eval("C_Duration") %>' runat="server"> </asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                     <asp:TextBox ID="txtC_Duration" text='<%#Eval("C_Name")%>' runat="server" ></asp:TextBox></EditItemTemplate>
                <FooterTemplate>
                     <asp:TextBox ID="txtC_DurationFooter" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="C_Description"> 
                <ItemTemplate>
                    <asp:Label text='<%#Eval("C_Description") %>' runat="server"> </asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="txtC_Description" text='<%#Eval("C_Name")%>' runat="server" ></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                     <asp:TextBox ID="txtC_DescriptionFooter" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton CommandName="Edit" ToolTip="Edit" runat="server" ImageUrl="/Edit.jpg" Width="15px" Height="15px" />
                    <asp:ImageButton CommandName="Delete" ToolTip="Delete" runat="server" ImageUrl="/Delete.png" Width="15px" Height="15px" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton CommandName="Update" ToolTip="Update" runat="server" ImageUrl="~/Save.jpg" Width="15px" Height="15px" />
                    <asp:ImageButton CommandName="Cancel" ToolTip="Cancel" runat="server" ImageUrl="~/Cancle.jpg" Width="15px" Height="15px" />
                    
                </EditItemTemplate>
                <FooterTemplate>
                   <asp:ImageButton CommandName="AddNew" ToolTip="Add New" runat="server" ImageUrl="~/Craete.png" Width="15px" Height="15px" />
                </FooterTemplate>
            </asp:TemplateField>
               
        </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <div>

            <asp:Label ID="SMsgs" runat="server" ForeColor="#009933"></asp:Label>
            <br />
            <asp:Label ID="EMsg" runat="server" ForeColor="Red"></asp:Label>

            <br />
            <br />

        </div>
    </form>
</body>
</html>
