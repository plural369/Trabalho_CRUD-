using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_CRUD
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            var senhaEncriptada = BCrypt.Net.BCrypt.HashPassword(txtSenha.Text);

            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into cliente_web (nome,login,senha,funcao)
                                    values
                                  (@nome,@login,@senha,@funcao)";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("login", txtLogin.Text);
                cmd.Parameters.AddWithValue("senha", senhaEncriptada);
                cmd.Parameters.AddWithValue("funcao", ddlFuncao.Text);

                Conexao.Conectar();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                lblResultado.Text = "Falha " + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}