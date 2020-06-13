using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_CRUD
{
    public partial class Inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string funcao = Session["Perfil"].ToString();
            if (funcao == "O")
            {
                btnCadastrar.Visible = false;
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection;

                cmd.CommandText = @"insert into carro_web
                                    (loj_nome, loj_marca, loj_ano, loj_cor, loj_valor, loj_km, loj_combustivel, loj_cambio) 
                                    values
                                    (@loj_nome, @loj_marca, @loj_ano, @loj_cor, @loj_valor,
                                     @loj_km, @loj_combustivel, @loj_cambio)";


                cmd.Parameters.AddWithValue("loj_nome", txtNome.Text);
                cmd.Parameters.AddWithValue("loj_marca", txtMarca.Text);
                cmd.Parameters.AddWithValue("loj_ano", txtAno.Text);
                cmd.Parameters.AddWithValue("loj_cor", txtCor.Text);
                cmd.Parameters.AddWithValue("loj_valor", txtValor.Text);
                cmd.Parameters.AddWithValue("loj_km", txtKm.Text);
                cmd.Parameters.AddWithValue("loj_combustivel", txtCombustivel.Text);
                cmd.Parameters.AddWithValue("loj_cambio", txtCambio.Text);

                Conexao.Conectar();
                cmd.ExecuteNonQuery();
                Response.Redirect("Listar.aspx");
            }
            catch (Exception ex)
            {
                lblResultado.Text = "Falha: " + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }


    }
}