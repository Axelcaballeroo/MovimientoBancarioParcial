<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CuentasContables.aspx.cs" Inherits="MovimientoBancarioParcial.CuentasContables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MENU.aspx">VOLVER AL MENU</asp:HyperLink>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="CREAR NUEVA CUENTA"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="NOMBRE DE CUENTA:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="243px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#3366FF" OnClick="Button1_Click" Text="CREAR CUENTA" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="378px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="nombre" HeaderText="NOMBRE" SortExpression="nombre" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [CuentasContables] WHERE [id] = @id" InsertCommand="INSERT INTO [CuentasContables] ([nombre]) VALUES (@nombre)" SelectCommand="SELECT * FROM [CuentasContables]" UpdateCommand="UPDATE [CuentasContables] SET [nombre] = @nombre WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
