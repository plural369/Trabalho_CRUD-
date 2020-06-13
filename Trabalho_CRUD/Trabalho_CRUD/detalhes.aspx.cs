using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_CRUD
{
    public partial class detalhes : System.Web.UI.Page
    {
        #region Page_Load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CapturaID())
            {
                DadosConsulta();
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
    }
}