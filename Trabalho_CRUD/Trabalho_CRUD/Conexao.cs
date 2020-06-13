using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trabalho_CRUD
{
    public class Conexao
    {
        #region Parametros da conexão
        private static string Server = "localhost";
        private static string Database = "loja";
        private static string User = "root";
        private static string Password = "gabriel29112016";

        private static string connectionString = $@"Server = {Server};Database = {Database};
                                                    User = {User}; Pwd = {Password};
                                                    SslMode = none; Charset = utf8;";
        #endregion

        public static MySqlConnection Connection = new MySqlConnection(connectionString);

        public static void Conectar()
        {
            if (Connection.State == System.Data.ConnectionState.Closed)
            {
                Connection.Open();
            }
        }
        public static void Desconectar()
        {
            if (Connection.State == System.Data.ConnectionState.Open)
            {
                Connection.Close();
            }
        }
    }
}