<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculator</title>
    <style>
        body 
        {
            background-color: lightblue;
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Calculadora Web</h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Número 1:"></asp:Label>
        <asp:TextBox ID="Tnum1" runat="server"></asp:TextBox>
        <p>
        <asp:Label ID="Label2" runat="server" Text="Número 2:"></asp:Label>
        <asp:TextBox ID="Tnum2" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Resultado: "></asp:Label>
        <asp:Label ID="Lresultado" runat="server" Text="0"></asp:Label>
        <p>
            <asp:Button ID="Button1" runat="server" Height="79px" OnClick="Button1_Click" Text="=" Width="156px" BackColor="#BEE0EB" BorderColor="#338BA8" />
        </p>
        Opciones:<br />
        <br />
        <asp:RadioButton ID="rsuma" runat="server" GroupName="operacion" Text="Suma  " OnCheckedChanged="rsuma_CheckedChanged" />
        <asp:RadioButton ID="rresta" runat="server" GroupName="operacion" Text="Resta  " />
        <asp:RadioButton ID="rmulti" runat="server" GroupName="operacion" Text="Multiplicación  " />
        <asp:RadioButton ID="rdivision" runat="server" GroupName="operacion" Text="División  " />
        <asp:RadioButton ID="rexponente" runat="server" GroupName="operacion" Text="Exponente  " />
        <asp:RadioButton ID="rpotenciade2" runat="server" GroupName="operacion" Text="Potencia_2  " />
        <asp:RadioButton ID="r10_a_la_x" runat="server" GroupName="operacion" Text="10 a la x  " />

    </form>
</body>
</html>
