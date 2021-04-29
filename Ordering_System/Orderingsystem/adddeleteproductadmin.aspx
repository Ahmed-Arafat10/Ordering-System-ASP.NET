<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adddeleteproductadmin.aspx.cs" Inherits="Orderingsystem.addproductadmin" %>

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
            height: 26px;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            height: 62px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <h1 class="auto-style1">Add Products</h1>
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="pname" runat="server" Width="200px" Height="25px" ValidationGroup ="ADD"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pname" ErrorMessage="Please Enter Product Name" ForeColor="Red" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="description" runat="server" TextMode="MultiLine" Width="200px" Height="25px" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="description" ErrorMessage="Please Enter Description For Product" ForeColor="Red" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Section"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="section" runat="server" Width="200px" Height="25px" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="section" ErrorMessage="Please Enter Product's Section" ForeColor="Red" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="price" runat="server" Width="200px" Height="25px" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="price" ErrorMessage="Please Enter Product's Price" ForeColor="Red" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" ForeColor="Blue" OnClick="Button1_Click" Text="Add Product" Width="150px" Height="26px" ValidationGroup="ADD" />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Product ID You Want To Delete"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="deletep" runat="server" Width="200px" Height="25px" ValidationGroup="DELETE"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="deletep" ErrorMessage="Please Enter Product ID" ForeColor="Red" ValidationGroup="DELETE"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style4" ForeColor="Red" OnClick="Button2_Click" Text="Delete Product" Width="150px" ValidationGroup="DELETE" />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
