using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_CRUD
{
    public partial class Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			carregar_carros();
        }

		private void carregar_carros()
		{
			string query = @"select * from carro_web";
			DataTable dt = new DataTable();

			try
			{
				MySqlDataAdapter da = new MySqlDataAdapter(query, Conexao.Connection);
				da.Fill(dt);

				rptCarro.DataSource = dt;
				rptCarro.DataBind();
			}
			catch (Exception ex)
			{
				lblMsg.Text = "Falha: " + ex.Message;
			}
			finally
			{
				Conexao.Desconectar();
			}

		}

		protected void rptCarro_ItemDataBound(object sender, RepeaterItemEventArgs e)
		{
			string funcao = Session["Perfil"].ToString();
			var lnkEditar = (LinkButton)e.Item.FindControl("lnkEditar");
			var lnkRemover = (LinkButton)e.Item.FindControl("lnkRemover");

			if (lnkEditar != null && lnkRemover != null && funcao == "O")
			{
				lnkEditar.Visible = false;
				lnkRemover.Visible = false;
			}
		}
	}
}