using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_error.Visible = false;
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (txt_usuario.Text == null || txt_usuario.Text.Equals(""))
        {
            lbl_error.Text = "Debe ingresar su usuario";
            lbl_error.Visible = true;
        }
        if (txt_clave.Text == null || txt_clave.Text.Equals(""))
        {
            lbl_error.Text = "Debe ingresar una contraseña.";
            lbl_error.Visible = true;
        }
        else
        {
            Response.Redirect("Sist.aspx");
        }


    }
}