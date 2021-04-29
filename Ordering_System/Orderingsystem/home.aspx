<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Orderingsystem.home" %>

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
            height: 49px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            height: 53px;
        }
        .auto-style6 {
            text-align: center;
            height: 54px;
        }
        .auto-style7 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Home Page</h1>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup" CssClass="auto-style7" ForeColor="Blue" Height="40px" Width="200px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <strong>
                    <asp:Button ID="Button2" runat="server" Text="Signin" CssClass="auto-style7" ForeColor="Blue" Height="40px" OnClick="Button2_Click" Width="200px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <strong>
                    <asp:Button ID="Button3" runat="server" Text="Signin admin" CssClass="auto-style7" ForeColor="Blue" Height="40px" OnClick="Button3_Click" Width="200px" />
                    </strong>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
