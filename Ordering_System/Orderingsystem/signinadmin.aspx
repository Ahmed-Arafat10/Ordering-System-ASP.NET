<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signinadmin.aspx.cs" Inherits="Orderingsystem.loginadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #0066FF;
            background-color: #99CCFF;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            height: 44px;
        }
        .auto-style5 {
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div>
            <h1 class="auto-style1">Signin As Admin</h1>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="name" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="pass" runat="server" Height="20px" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" ForeColor="Blue" OnClick="Button1_Click" Text="Login" Width="150px" />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
