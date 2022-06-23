using System;
using System.Collections.Generic;
using System.Text;

namespace MODEL
{
   public class GestaoDeOs
    {
        private string protocolo;

        public string Protocolo
        {
            get { return protocolo; }
            set { protocolo = value; }
        }
        private string tipochamado;

        public string TipoChamado
        {
            get { return tipochamado; }
            set { tipochamado = value; }
        }
        private string descricao;

        public string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }
        private string dataabertura;

        public string DataAbertura
        {
            get { return dataabertura; }
            set { dataabertura = value; }
        }
        private string datadefechamento;

        public string DataFechamento
        {
            get { return datadefechamento; }
            set { datadefechamento = value; }
        }
        private string tecnicoresponsavel;

        public string TecnicoResponsavel
        {
            get { return tecnicoresponsavel; }
            set { tecnicoresponsavel = value; }
        }
        private int id_funcionario;

        public int Id_Funcionario
        {
            get { return id_funcionario; }
            set { id_funcionario = value; }
        }
        private int id_cliente;

        public int Id_Cliente
        {
            get { return id_cliente; }
            set { id_cliente = value; }
        }
        private int id_plano;

        public int Id_Plano
        {
            get { return id_plano; }
            set { id_plano = value; }
        }
        private int id_status;

        public int Id_Status
        {
            get { return id_status; }
            set { id_status = value; }
        }



    }
}
