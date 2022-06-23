using System;
using System.Collections.Generic;
using System.Text;

namespace MODEL
{
   public class Plano
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string descricao;

        public string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }
          private double valor;

        public double Valor
        {
            get { return valor; }
            set { valor = value; }
        }


    }
}
