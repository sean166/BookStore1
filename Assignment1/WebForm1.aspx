<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #0000FF;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <H1 class="auto-style1">Welcome to Sheridan CS Book Store
        </H1>
        <div class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Assignment No.: 1" CssClass="auto-style4"></asp:Label>
            <br class="auto-style4" />
        <br class="auto-style4" />
        <asp:Label ID="Label2" runat="server" Text="Member 1: Chen Tong, 991470967" CssClass="auto-style4"></asp:Label>
            <br class="auto-style4" />
        <br class="auto-style4" />
        <asp:Label ID="Label3" runat="server" Text="Member 1: Haiyang Jing, 991454202" CssClass="auto-style4"></asp:Label>
            <br class="auto-style4" />
        <br class="auto-style4" />
        <asp:Label ID="Label4" runat="server" Text="Your Section:" CssClass="auto-style4"></asp:Label>
        <br class="auto-style4" />
        <asp:Label ID="Label5" runat="server" Text="Enterprise Software Systems (PROG300000)" CssClass="auto-style4"></asp:Label>
            <br class="auto-style4" />
            <br class="auto-style4" />
            <asp:Label ID="Label6" runat="server" Text="Instrustor's name: Syed Tanbeer" CssClass="auto-style4"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnStart" runat="server" Text="Start" BackColor="#99CCFF" CssClass="auto-style4" ForeColor="#3333FF" Height="60px" OnClick="btnStart_Click" Width="132px" />
        </div>
    </form>
</body>
</html>
