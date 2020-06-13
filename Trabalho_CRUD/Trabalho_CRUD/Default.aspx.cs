using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_CRUD
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();

            try
            {
                string usuario = txtUsuario.Text;
                string senha = txtSenha.Text;

                cmd.Connection = Conexao.Connection;

                // Recuperar senha encriptada
                cmd.CommandText = @"select senha 
                                    from cliente_web 
                                    where login=@login";

                cmd.Parameters.AddWithValue("login", usuario);
                Conexao.Conectar();

                string senhaEncriptada = Convert.ToString(cmd.ExecuteScalar());

                if (string.IsNullOrEmpty(senhaEncriptada))
                {
                    throw new Exception("Usuario ou Senha Inválida");
                }

                // Comparar a senhaEncriptada com a senha digitada
                if (BCrypt.Net.BCrypt.Verify(senha, senhaEncriptada))
                {
                    cmd.CommandText = @"select funcao
                                      from cliente_web
                                      where login = @usuario";
                    cmd.Parameters.AddWithValue("usuario", usuario);

                    string funcao = Convert.ToString(cmd.ExecuteScalar());
                    cmd.CommandText = @"select nome 
                                        from cliente_web
                                        where login = @usuario";
                    string nome = Convert.ToString(cmd.ExecuteScalar());

                    // Gravar Session
                    Session["Perfil"] = funcao;
                    Session["Nome"] = nome;

                    // Fazer redirecionamento
                    FormsAuthentication.RedirectFromLoginPage(funcao, false);
                }
                else
                {
                    throw new Exception("Usuario ou Senha Inválida");
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}