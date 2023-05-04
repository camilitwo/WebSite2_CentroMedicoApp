using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using mis_conexiones;

public partial class Sist : System.Web.UI.Page
{
    Datos datos = new Datos();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_buscar_paciente_Click(object sender, EventArgs e)
    {
        
        DataTable table = datos.getPersona(txt_filtro_1.Text);
        lbl_paciente_nombre.Text = table.Rows[0].Field<string>("NOMBRE")+ " "
            +table.Rows[0].Field<string>("APELLIDO");

        lbl_mail.Text = table.Rows[0].Field<string>("EMAIL");
        lbl_id.Text = table.Rows[0].Field<int>("ID_PER").ToString();
    }
}