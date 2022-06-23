using System;
using System.Collections.Generic;
using System.Text;

namespace MODEL
{
   public class Cliente
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private int id_plano;

        public int Id_Plano
        {
            get { return id_plano; }
            set { id_plano = value; }
        }
        private string iniciodocontrato;

        public string InicioDoContrato
        {
            get { return iniciodocontrato; }
            set { iniciodocontrato = value; }
        }

        private string fimdocontrato;

        public string FimDoContrato
        {
            get { return fimdocontrato; }
            set { fimdocontrato = value; }
        }

    }
}
