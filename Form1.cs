using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace verifica
{
    public partial class Form1 : Form
    {
        string ConnectionString = "server=127.0.0.1;" +
                                    "database=verificainventario;" +
                                    "uid=verificainventario;" +
                                    "pwd=inventario";
        public Form1()
        {
            InitializeComponent();
            PopoLaTabella("");
        }

        private void PopoLaTabella(string v)
        {
            dataGridView1.Rows.Clear();
            MySqlConnection connessione = new MySqlConnection(ConnectionString);
            try
            {
                connessione.Open();
                string query = $"SELECT * FROM utenti WHERE codicefarnell like '%{v}%' OR codiceproduttore like '%{v}%'";
                MySqlCommand cmd = new MySqlCommand(query, connessione);
                MySqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    dataGridView1.Rows.Add(
                        dr.GetInt32("codicefarnell").ToString(),
                        dr.GetInt32("codiceproduttore").ToString(),
                        dr.GetInt32("quantita").ToString(),
                        dr.GetString("prezzounitario")
                    );
                }

                connessione.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            dataGridView1.AutoResizeColumns();
        }

        public void TestConnessione()
        {
            MySqlConnection connessione = new MySqlConnection(ConnectionString);
            try
            {
                connessione.Open();
                connessione.Close();
            }
            catch
            {
                MessageBox.Show("Impossibile stabilire una connessione al DB");
            }
        }


        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string id = dataGridView1.CurrentRow.Cells[0].Value.ToString();

            FormModifica formModifica = new FormModifica(id);

            formModifica.ShowDialog();

            // aggiorno la tabella, una volta chiusa la form di modifica
            PopoLaTabella("");
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            PopoLaTabella(textBox1.Text);
        }
    }
}