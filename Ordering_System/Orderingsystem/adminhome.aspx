<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="Orderingsystem.adminhome" %>

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
            text-align: center;
            height: 66px;
        }
        .auto-style5 {
            text-align: center;
            height: 67px;
        }
        .auto-style6 {
            text-align: center;
            height: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Admin Home Page</h1>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add/Delete products" CssClass="auto-style3" ForeColor="Blue" Height="40px" Width="200px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View page" CssClass="auto-style3" ForeColor="Blue" Height="40px" Width="200px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx" Width="50px">Exit</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
