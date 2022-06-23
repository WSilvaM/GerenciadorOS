using System;
using System.Collections.Generic;
using System.Text;

namespace MODEL
{
   public class Pessoa
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string nome;

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }
        private string telefone;

        public string Telefone
        {
            get { return telefone; }
            set { telefone = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string endereco;

        public string Endereco
        {
            get { return endereco; }
            set { endereco = value; }
        }
        private string datanascimento;

        public string DataNascimento
        {
            get { return datanascimento; }
            set { datanascimento = value; }
        }
        private string cpf;

        public string Cpf
        {
            get { return cpf; }
            set { cpf = value; }
        }
        private string rg;

        public string Rg
        {
            get { return rg; }
            set { rg = value; }
        }
        private string orgaoexpeditor;

        public string OrgaoExpeditor
        {
            get { return orgaoexpeditor; }
            set { orgaoexpeditor = value; }
        }

        private string nacionalidade;

        public string Nacionalidade
        {
            get { return nacionalidade; }
            set { nacionalidade = value; }
        }
        private string estadocivil;

        public string EstadoCivil
        {
            get { return estadocivil; }
            set { estadocivil = value; }
        }


    }
}
