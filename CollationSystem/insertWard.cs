using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace CollationSystem
{
    public partial class Form3 : Form
    {
        public MySqlConnection conn; //connection
        string n;
        public Form3(string name)
        {
            n = name;
            InitializeComponent();
            conn = new MySqlConnection("Server=localhost;Database=collation;Uid=root;Pwd=123"); //connection
            //this.Opacity = 0; //sets form opacity to 0
        }

        private void button5_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                if (Form2.role == "Collation Officer")
                {
                    MySqlCommand com = new MySqlCommand("INSERT INTO wards2(ward, numberOfPU) VALUES ('" + txtWard.Text + "','" + txtPU.Text + "')", conn);
                    com.ExecuteNonQuery();
                }
                else
                {
                    MySqlCommand com = new MySqlCommand("INSERT INTO wards(ward, numberOfPU) VALUES ('" + txtWard.Text + "','" + txtPU.Text + "')", conn);
                    com.ExecuteNonQuery();
                }
                 
                

                int parties = Int32.Parse(txtParties.Text);
                int pu = Int32.Parse(txtPU.Text);

                insertParties inParties = new insertParties(parties, pu, txtWard.Text);
                inParties.Show();
                this.Hide();
            }
            catch(Exception x)
            {
                MessageBox.Show("Error: " + x.ToString()); //shows the error if there is one
                conn.Close(); //closes the connection
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void Form3_Load(object sender, EventArgs e)
        {
            
        }
    }
}
