using System;
using System.Collections.Generic;
using System.Text;

namespace MODEL
{
    public class Funcionario
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private int id_permissao;

        public int Id_Permissao
        {
            get { return id_permissao; }
            set { id_permissao = value; }
        }
        private string usuario;

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }
        private string senha;

        public string Senha
        {
            get { return senha; }
            set { senha = value; }
        }
        private string salario;

        public string Salario
        {
            get { return salario; }
            set { salario = value; }
        }
        private string cargo;

        public string Cargo
        {
            get { return cargo; }
            set { cargo = value; }
        }
        private string dataadmissao;

        public string DataAdnissao
        {
            get { return dataadmissao; }
            set { dataadmissao = value; }
        }
        private string datademissao;

        public string DataDemissao
        {
            get { return datademissao; }
            set { datademissao = value; }
        }


    }
}
