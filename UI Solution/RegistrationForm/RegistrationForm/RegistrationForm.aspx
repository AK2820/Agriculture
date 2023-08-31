<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="RegistrationForm.RegistrationForm" %>


<!DOCTYPE html>
<html>
<head>
    <title>SignUp Page</title>
    <link rel="icon" type="image/x-icon" href="Techvision_Logo.png">
    <style>
           

            form{
                fill: antiquewhite;
                margin-top: 15%;
                margin-left: 50%;
                font-size: 1.05em;
            }
            #uid{
                font:100;
            }
            #le{
                font-family: Arial, Helvetica, sans-serif;
                font-size: 20px;
                border: 4px;
            }
            body {
                background-image: url('Finger.jpeg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                color:white;
            }
            fieldset {
                width:48%;
                height: auto;
                display: block;
                margin-left: 2px;
                margin-right: 2px;
                padding-top: 1.35em;
                padding-bottom: 0.625em;
                padding-left: 0.75em;
                padding-right:0.625em;
                border: 2px groove ;
            }
             
            table{
                
                margin-right:0px;
            }
            legend{
                font-size: 2em;
            }
        
       
        #Role{
            width: 100%;
        }
        #Submit{
                margin-left: 40%;
            }
        .input{
            width:98%;
        }
        .auto-style1 {
            width: 158px;
        }
        #Reset{
            margin-left:15%;
        }
        #LinkButton1{
                background-color:cornflowerblue;
                border-radius:5px;
                padding:5px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset>
            <legend>SignUp Form</legend>
        <table>
            <tr>
                <td id="Roles"> <label for="role"> Role: </label></td>
                <td class="auto-style1">
                    <asp:DropDownList ID="Role" runat="server" required="" Width="105%">
                        <asp:ListItem>Select Role</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Config</asp:ListItem>
                        <asp:ListItem>Tester</asp:ListItem>
                    
                      
                    </asp:DropDownList>

                 </td>
            </tr>
            <tr>
                <td class="lab"><label for="Uid">First Name:</label></td>
                <td class="auto-style1">
                    <%--<input type="text" id="uid" name="UserId" placeholder="User Name">--%>
                    <asp:TextBox Class="input" ID="FN" runat="server" name="FirstName" placeholder="First Name" required="" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lab"><label for="Uid">Last Name:</label></td>
                <td class="auto-style1">
                    <%--<input type="text" id="uid" name="UserId" placeholder="User Name">--%>
                    <asp:TextBox Class="input" ID="LN" runat="server" name="LastName" placeholder="Last Name" required="" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lab"><label for="Uid">E-mail Id:</label></td>
                <td class="auto-style1">
                    <%--<input type="email" id="uid" name="E-Mai" placeholder="E-Mail Address">--%>
                    <asp:TextBox Class="input" TextMode="Email" ID="email" runat="server" placeholder="E-Mail Address" required="" Width="100%"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="lab"><label >Contact No:</label></td>
                <td class="auto-style1">
                    <%--<input type="text" name="country_code" title="Error Message" placeholder="Mobile Number" pattern="[1-9]{1}[0-9]{9}">--%>
                    <asp:TextBox ID="txtMobileNumber" runat="server" placeholder="Mobile Phone Number" required="" Width="100%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMobNo" runat="server" ErrorMessage="Required" Display="Dynamic" ValidationGroup="Validate" ForeColor="Red" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Invalid Mobile Number." ValidationExpression="^([0-9]{10})$" ControlToValidate="txtMobileNumber" ValidationGroup="Validate" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="lab"><label >User Id:</label></td>
                <td class="auto-style1">
                    <%--<input type="text" id="uid" name="UserId" placeholder="User Name">--%>
                    <asp:TextBox Class="input" ID="u_id" runat="server" placeholder="User ID" required="" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lab"><label for="Password">Password:</label></td>
                <td class="auto-style1">
                    <%--<input type="password" id="Password" placeholder="Password" required>--%>
                    <asp:TextBox Class="input"  ID="Password" TextMode="Password" runat="server" name="Password" placeholder="Password" required="" Width="100%"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="lab">
                    <asp:Label ID="Label1" runat="server" Text="Confirm Password:"></asp:Label>
                    <%--<label for="confirm_password">Confirm Password:</label>--%></td>
                <td class="auto-style1"> 
                    <%--<input type="password" id="confirm_password" placeholder="Confirm Password" required>--%>
                    <asp:TextBox Class="input"  ID="confirm_password" TextMode="Password" runat="server" name="Password" placeholder="Confirm Password" required="" Width="100%"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="confirm_password" ErrorMessage="password dose Not Match Enter Again !" Display="Dynamic" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
               <td><br><br>
                    <asp:Button ID="Submit" runat="server" Text="SignUp" Width="62px" OnClick="Submit_Click" OnClientClick="SubmitButton_Click" BackColor="#006600" Font-Bold="True" Font-Italic="False" Font-Overline="False" ForeColor="White" />
                   <%--<input type="submit" value="Submit" id="Submit">--%>
                    <br>
                   <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                   <br></td>
                <td class="auto-style1"><br>
                 <asp:Button ID="Reset" runat="server" Text="Clear" OnClientClick="this.form.reset();return false;" CausesValidation="false" BackColor="#CC0000" Font-Bold="True" ForeColor="#FFFFCC" />

             </tr>
        </table>
             <asp:Label ID="Label2" runat="server" Text="Already have an Account ? "></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">  LogIn  </asp:LinkButton>
            <br />
        
    </fieldset>
       
    </form>

</body>
</html>
