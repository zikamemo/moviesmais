using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MoviesMais.Models
{
    public class Filme
    {
        public string Nome { get; set; }
        public int AnoLancamento { get; set; }
        public string Imagem { get; set; }
        public int Visualizacoes { get; set; }
        public int Likes { get; set; }
        public int TempoDuracao { get; set; }
        public Categoria Categoria { get; set; }
    }
}