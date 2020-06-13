using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_CRUD
{
    public partial class editar : System.Web.UI.Page
    {
        #region Page_load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (CapturaID())
                {
                    DadosConsulta();
                }
            }
        }
        #endregion

        #region CapturaID
        private bool CapturaID()
        {
            return Request.QueryString.AllKeys.Contains("loj_id");
        }
        #endregion

        #region DadosConsulta
        private void DadosConsulta()
        {
            var idFunc = ObterIDCliente();

            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select * from carro_web
                                    where loj_id = @loj_id";

                cmd.Parameters.AddWithValue("@loj_id", idFunc);
                Conexao.Conectar();
                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtID.Text = reader["loj_id"].ToString();
                    txtNome.Text = reader["loj_nome"].ToString();
                    txtMarca.Text = reader["loj_marca"].ToString();
                    txtAno.Text = reader["loj_ano"].ToString();
                    txtCor.Text = reader["loj_cor"].ToString();
                    txtValor.Text = reader["loj_valor"].ToString();
                    txtKm.Text = reader["loj_km"].ToString();
                    txtCombustivel.Text = reader["loj_combustivel"].ToString();
                    txtCambio.Text = reader["loj_cambio"].ToString();
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
        #endregion

        #region ObterIDCliente
        public int ObterIDCliente()
        {
            var id = 0;
            var idURL = Request.QueryString["loj_id"];
            if (!int.TryParse(idURL, out id))
            {
                throw new Exception("ID inválido");
            }
            if (id <= 0)
            {
                throw new Exception("ID inválido");
            }
            return id;
        }
        #endregion

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"update carro_web
                                    set loj_nome = @loj_nome,
                                    loj_marca = @loj_marca,
                                    loj_ano = @loj_ano,
                                    loj_cor = @loj_cor,
                                    loj_valor = @loj_valor,
                                    loj_km = @loj_km,
                                    loj_combustivel = @loj_combustivel,
                                    loj_cambio = @loj_cambio
                                    where loj_id = @loj_id;";

                cmd.Parameters.AddWithValue("loj_id", txtID.Text);
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
                lblResultado.CssClass = "text-danger";
                lblResultado.Text = "Falha: " + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}


