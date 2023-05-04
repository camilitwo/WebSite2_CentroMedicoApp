<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sist.aspx.cs" Inherits="Sist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

    <style type="text/css">
        .auto-style1 {
            width: 155px;
        }
        .auto-style2 {
            width: 305px;
        }
        .auto-style3 {
            width: 78px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarNav" >
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="~/Home.aspx" runat="server" >
                            Inicio
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="~/Login.aspx" runat="server" >
                            Ingreso Sistema
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="~/Examenes.aspx" runat="server" >
                            Examenes
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="~/Consultas.aspx" runat="server" >
                            Consultas
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div style="width:20%; position:fixed; margin-top:50px">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link" href="#">Emitir Receta</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Emitir Licencia Médica</a>
          </li>
        </ul>
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server" style="text-align: center; "  >
            <h2>
                <asp:Label ID="lbl_title_medi" runat="server" style="text-align: center" Text="Medicina"></asp:Label>
            </h2>
            <p>
                &nbsp;</p>
            <p>
                <asp:TextBox ID="txt_filtro_1" runat="server"></asp:TextBox>
                <asp:Button ID="btn_buscar_paciente" runat="server" OnClick="btn_buscar_paciente_Click" Text="Buscar" />
            </p>
            <p>
                &nbsp;</p>
        </asp:Panel>
    </div>
        <table style="width:60%;margin-left: 150px" id="tabla_pacinte">
            <tr>
                <td id="tabla_paciente" class="auto-style1"><strong>Nombre paciente:</strong></td>
                <td id="tabla_paciente" class="auto-style2">
                    <asp:Label ID="lbl_paciente_nombre" runat="server"></asp:Label>
                </td>
                <td id="tabla_paciente" class="auto-style3"><strong>ID:</strong></td>
                <td id="tabla_paciente">
                    <asp:Label ID="lbl_id" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>Email:</strong></td>
                <td class="auto-style2">
                    <asp:Label ID="lbl_mail" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
