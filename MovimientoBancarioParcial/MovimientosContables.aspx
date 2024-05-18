<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovimientosContables.aspx.cs" Inherits="MovimientoBancarioParcial.MovimientosContables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MENU.aspx">VOLVER AL MENU</asp:HyperLink>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="CREAR NUEVO MOVIMIENTO"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="FECHA:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="ELEGIR CUENTA:"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id" Height="18px" Width="242px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="MONTO:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#3366FF" OnClick="Button1_Click" Text="CREAR MOVIMIENTO" />
            <br />
            <br />
            FILTRAR<br />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id" Height="16px" Width="239px">
            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="FILTRAR" />
            <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click" Text="LIMPIAR FILTROS" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="NO HAY DATOS PARA MOSTRAR" ForeColor="#333333" GridLines="None" Width="508px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="fecha" HeaderText="FECHA" SortExpression="fecha" />
                    <asp:BoundField DataField="nombre" HeaderText="NOMBRE" SortExpression="nombre" />
                    <asp:BoundField DataField="monto" HeaderText="MONTO" SortExpression="monto" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [MovimientosContables] WHERE [id] = @id" InsertCommand="INSERT INTO [MovimientosContables] ([idCuentaContable], [fecha], [monto]) VALUES (@idCuentaContable, @fecha, @monto)" SelectCommand="SELECT * FROM [MovimientosContables]" UpdateCommand="UPDATE [MovimientosContables] SET [idCuentaContable] = @idCuentaContable, [fecha] = @fecha, [monto] = @monto WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="idCuentaContable" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="fecha" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="monto" PropertyName="Text" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="idCuentaContable" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="fecha" />
                    <asp:Parameter Name="monto" Type="Decimal" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [CuentasContables] WHERE [id] = @id" InsertCommand="INSERT INTO [CuentasContables] ([nombre]) VALUES (@nombre)" SelectCommand="SELECT * FROM [CuentasContables]" UpdateCommand="UPDATE [CuentasContables] SET [nombre] = @nombre WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT MovimientosContables.id, MovimientosContables.fecha, CuentasContables.nombre, MovimientosContables.monto FROM MovimientosContables INNER JOIN CuentasContables ON MovimientosContables.idCuentaContable = CuentasContables.id"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
