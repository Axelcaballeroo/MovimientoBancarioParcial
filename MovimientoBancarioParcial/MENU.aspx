<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MENU.aspx.cs" Inherits="MovimientoBancarioParcial.MENU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial, Helvetica, sans-serif; font-size: larger; font-weight: bold; text-align: center;">
            CUENTAS - LOGISTICA EN VOLADURAS S.A<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CuentasContables.aspx">CUENTAS</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MovimientosContables.aspx">MOVIMIENTOS</asp:HyperLink>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
