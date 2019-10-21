<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInput.aspx.cs" Inherits="BookStore.UserInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Database</title>
    </head>
<body>
    <h3>Book Store</h3>
    <form id="form1" runat="server">
        <br />
        Book Title<br />
        <asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBookTitle" ErrorMessage="Cannot be Empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        Author list<br />
        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
        <asp:Button ID="authorAdd" runat="server" OnClick="authorAdd_Click" Text="Add" />
        <asp:Label ID="lblAuthor" runat="server" Text=""></asp:Label><br />
        <br />
        ISBN Number<br />
        <asp:TextBox ID="txtIsbn" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIsbn" ErrorMessage="Cannot be Empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        Publishing date<br />
        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="Invalid Date" ForeColor="#CC0000" MaximumValue="2019-09-28" MinimumValue="1800-01-01" Type="Date"></asp:RangeValidator>
        <br />
        <br />
        Publiser<asp:CheckBoxList ID="chkPublisher" runat="server">
            <asp:ListItem>International</asp:ListItem>
            <asp:ListItem>Canadian</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        Categoery<br />
        <asp:DropDownList ID="dplCategory" runat="server">
            <asp:ListItem>Childrens</asp:ListItem>
            <asp:ListItem>Comics</asp:ListItem>
            <asp:ListItem>Drama</asp:ListItem>
            <asp:ListItem>Games</asp:ListItem>
            <asp:ListItem>Health</asp:ListItem>
            <asp:ListItem>Journals</asp:ListItem>
            <asp:ListItem>Poetry</asp:ListItem>
            <asp:ListItem>Sci-Fi</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Page count<br />
        <asp:TextBox ID="txtPage" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPage" ErrorMessage="Cannot be Empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        Price<br />
        <asp:TextBox ID="txtPrice" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" ErrorMessage="Cannot be Empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <p>
            <asp:Button ID="btnSave" runat="server" OnClick="BtnSave_Click" Text="Save" Width="42px" />
        </p>
        <br />
            <h3>Book Search</h3>
        <p>
            <asp:Label ID="lblBookSearch" runat="server" Text="Search Book Title"></asp:Label><br />
            <asp:TextBox ID="txtBookSeach" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblPriceSearch" runat="server" Text="Price"></asp:Label><br />
            <asp:TextBox ID="txtPriceSeach" runat="server" TextMode="Number"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblCateSearch" runat="server" Text="Categoery"></asp:Label><br />
            <asp:DropDownList ID="dplCateSearch" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Childrens</asp:ListItem>
                <asp:ListItem>Comics</asp:ListItem>
                <asp:ListItem>Drama</asp:ListItem>
                <asp:ListItem>Games</asp:ListItem>
                <asp:ListItem>Health</asp:ListItem>
                <asp:ListItem>Journals</asp:ListItem>
                <asp:ListItem>Poetry</asp:ListItem>
                <asp:ListItem>Sci-Fi</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnBookSearch" runat="server" OnClick="BtnSearch_Click" style="height: 26px" Text="Search" />
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [BookTitle] = @original_BookTitle AND [Author] = @original_Author AND [ISBN] = @original_ISBN AND [PublishingDate] = @original_PublishingDate AND [Category] = @original_Category AND [Page] = @original_Page AND [Price] = @original_Price AND [Publisher] = @original_Publisher" UpdateCommand="UPDATE [Books] SET [Author] = @Author, [ISBN] = @ISBN, [PublishingDate] = @PublishingDate, [Category] = @Category, [Page] = @Page, [Price] = @Price, [Publisher] = @Publisher WHERE [BookTitle] = @original_BookTitle AND [Author] = @original_Author AND [ISBN] = @original_ISBN AND [PublishingDate] = @original_PublishingDate AND [Category] = @original_Category AND [Page] = @original_Page AND [Price] = @original_Price AND [Publisher] = @original_Publisher" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books]" InsertCommand="INSERT INTO [Books] ([BookTitle], [Author], [ISBN], [PublishingDate], [Category], [Page], [Price], [Publisher]) VALUES (@BookTitle, @Author, @ISBN, @PublishingDate, @Category, @Page, @Price, @Publisher)">
            <DeleteParameters>
                <asp:Parameter Name="original_BookTitle" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_ISBN" Type="String" />
                <asp:Parameter DbType="Date" Name="original_PublishingDate" />
                <asp:Parameter Name="original_Category" Type="String" />
                <asp:Parameter Name="original_Page" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Publisher" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookTitle" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter DbType="Date" Name="PublishingDate" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Page" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Publisher" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter DbType="Date" Name="PublishingDate" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Page" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="original_BookTitle" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_ISBN" Type="String" />
                <asp:Parameter DbType="Date" Name="original_PublishingDate" />
                <asp:Parameter Name="original_Category" Type="String" />
                <asp:Parameter Name="original_Page" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Publisher" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="BookTitle">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" ReadOnly="True" SortExpression="BookTitle" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="PublishingDate" HeaderText="PublishingDate" SortExpression="PublishingDate" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Page" HeaderText="Page" SortExpression="Page" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
