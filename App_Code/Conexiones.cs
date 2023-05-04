using System;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web;

namespace mis_conexiones
{
    public class Conexiones
    {
        public String crear_string_conexion_access()
        {
            String obj_stringDeConexion = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" +
                                   HttpContext.Current.Server.MapPath(@"App_Data\CentroMedicoApp.mdb") + ";";
            return obj_stringDeConexion;
        }
    }

    public class Datos : Conexiones
    {

        public string getArea()
        {
            string conn = this.crear_string_conexion_access();
            string strQuery = "select descripcion from area";

            OleDbConnection conexion = new OleDbConnection(conn);
            OleDbDataAdapter da = new OleDbDataAdapter(strQuery, conexion);
            DataTable dt = new DataTable();
            try
            {
                conexion.Open();
                da.Fill(dt);
                
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                conexion.Close();
            }
            return (string)dt.Rows[0][0];
        }

        public DataTable getPersona(string id)
        {
            string conn = this.crear_string_conexion_access();
            string strQuery = "SELECT * FROM PERSONA WHERE ID_PER = $ID_PER";

            OleDbConnection conexion = new OleDbConnection(conn);
            strQuery = strQuery.Replace("$ID_PER", id);
            OleDbDataAdapter da = new OleDbDataAdapter(strQuery, conexion);
            DataTable dt = new DataTable();
            try
            {
                conexion.Open();
                da.Fill(dt);

            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                conexion.Close();
            }
            return dt;
        }
    }
}