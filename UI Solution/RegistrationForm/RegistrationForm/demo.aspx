<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="RegistrationForm.demo" %>


<!DOCTYPE html>
<html xmlns="https://www.w3.org/1999/xhtml">
<head runat="server">
   <title>ASP.NET CompareValidator Example</title>
</head>
<body>
<form id="Form" runat="server">
<div>
<asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="Medium" 
	Font-Underline="True" Text="CompareValidator Control Example"></asp:Label>
<br />
<asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="Small" 
	Text="User Name:"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
	ControlToValidate="TextBox1" ErrorMessage="This Field can not be blank."></asp:RequiredFieldValidator>
<br />
<asp:Label ID="lblPassword" runat="server" Font-Bold="True" Font-Size="Small" 
	Text="Password:"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="173px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
	ControlToValidate="TextBox2" ErrorMessage="This Field can not be blank."></asp:RequiredFieldValidator>
<br />
<asp:Label ID="lblRePassword" runat="server" Font-Bold="True" Font-Size="Small" 
Text="Re-type Password:"></asp:Label>
 <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="173px"></asp:TextBox>
<asp:CompareValidator ID="CompareValidator1" runat="server" 
	ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
	ErrorMessage="Password does not match."></asp:CompareValidator>
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
	ControlToValidate="TextBox3" ErrorMessage="This Field can not be blank."></asp:RequiredFieldValidator>
<br />
	<br />
	<asp:Label ID="Label2" runat="server" Text="Mobile No "></asp:Label>
	<asp:TextBox runat="server" ID="txtMobileNumber" />
<br />

<asp:RequiredFieldValidator ID="rfvMobNo" runat="server" ErrorMessage="Required"
    Display="Dynamic" ValidationGroup="Validate" ForeColor="Red" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Invalid Mobile Number."
    ValidationExpression="^([0-9]{10})$" ControlToValidate="txtMobileNumber" ValidationGroup="Validate"
    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
<br />
<br />


<asp:Button ID="btnSubmit" runat="server" Font-Bold="True" 
	Font-Size="Small" Text="Submit" />
<br />
</div>
</form>
</body>
</html>
