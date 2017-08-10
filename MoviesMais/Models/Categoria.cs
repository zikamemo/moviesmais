using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace MoviesMais.Models
{
    public class Categoria
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }
        public int FaixaEtaria { get; set; }
        public string Descricao { get; set; }

        public List<Categoria> ConsultaCategorias()
        {
            List<Categoria> retornoConsulta = new List<Categoria>();

            string comandoSQL = "SELECT * FROM Categoria;";

            MySqlConnection conexao = new MySqlConnection("Server=localhost;Database=MoviesMais;Uid=root;Pwd=;"); //Ponte
            MySqlCommand comando = new MySqlCommand(comandoSQL, conexao);

            conexao.Open();

            MySqlDataReader dr = comando.ExecuteReader();

            while (dr.Read())
            {
                retornoConsulta.Add(new Categoria { 
                    Codigo = Convert.ToInt32(dr["Codigo"]),
                    Descricao = dr["Descricao"].ToString(),
                    FaixaEtaria = Convert.ToInt32(dr["FaixaEtaria"]),
                    Nome = dr["Nome"].ToString()
                });
            }

            return retornoConsulta;
        }

        public List<Categoria> ConsultaCategoriasMenu()
        {
            List<Categoria> retornoConsulta = new List<Categoria>();

            string comandoSQL = "select * from categoria where ApareceNoMenu = 1;";

            MySqlConnection conexao = new MySqlConnection("Server=localhost;Database=MoviesMais;Uid=root;Pwd=;"); //Ponte
            MySqlCommand comando = new MySqlCommand(comandoSQL, conexao);

            conexao.Open();

            MySqlDataReader dr = comando.ExecuteReader();

            while (dr.Read())
            {
                retornoConsulta.Add(new Categoria
                {
                    Codigo = Convert.ToInt32(dr["Codigo"]),
                    Descricao = dr["Descricao"].ToString(),
                    FaixaEtaria = Convert.ToInt32(dr["FaixaEtaria"]),
                    Nome = dr["Nome"].ToString()
                });
            }

            return retornoConsulta;
        }
    }
}