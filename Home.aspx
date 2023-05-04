<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
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
    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="https://www.redclinica.cl/Portals/_default/Skins/Skin_HCUCH_17_03/images/slider_interno_hcuch/slider_interno_medicina_interna.jpg"/>
    
    </form>
</body>
</html>
