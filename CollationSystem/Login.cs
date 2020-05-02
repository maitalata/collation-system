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

    public partial class Form2 : Form
    {
        public MySqlConnection conn; //connection
        public static string role;

        public Form2()
        {
            InitializeComponent();
            conn = new MySqlConnection("Server=localhost;Database=collation;Uid=root;Pwd=123"); //connection
            //this.Opacity = 0; //sets form opacity to 0
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (txtPass.Text.Contains("'") || txtUser.Text.Contains("'") || txtUser.Text.Contains("\\") || txtPass.Text.Contains("\\"))
            {
                MessageBox.Show("Invalid Credentials!", "", MessageBoxButtons.OK);
            }
            else
            {
                try
                {
                    conn.Open(); //opens the connection to the database

                    role = comboBox1.Text;

                    MySqlCommand comm = new MySqlCommand("SELECT * FROM administrators WHERE username = '" + txtUser.Text + "' AND password = '" + txtPass.Text + "'", conn); //command to get the inputted username/password
                    MySqlDataAdapter adp = new MySqlDataAdapter(comm); //loads data to datatable
                    DataTable dt = new DataTable(); //datatable
                    adp.Fill(dt);

                    if (role == "Collation Officer" || role == "Presiding Officer")
                    {
                        role = comboBox1.Text;
                        if (dt.Rows.Count == 1)
                        {
                            //loginID = dt.Rows[0]["empID"].ToString();
                            //MySqlCommand com = new MySqlCommand("UPDATE tbl_employee SET empRemarks = 'logged' WHERE empUser = '" + txtUser.Text + "' AND empPass = '" + txtPass.Text + "'", conn); //query to set remark to Logged
                            //com.ExecuteNonQuery();
                            //formAfterLogin formAL = new formAfterLogin(); //variaxble reference to formAfterLogin
                            // formAL.ReferenceToLogin = this; //sets the reference to this form
                            //formAL.employeeName = dt.Rows[0]["empName"].ToString(); //gets the eName variable from the database and converts it to a string
                            //formAL.Show(); //shows the referenced form
                            // this.Hide(); //hides current form
                            Form3 frm3 = new Form3(txtUser.Text);
                            frm3.Show();
                            this.Hide();
                        }
                        else if (txtUser.Text == "" || txtPass.Text == "") //DATA VALIDATION
                        {
                            MessageBox.Show("Please supply all necessary fields.", "", MessageBoxButtons.OK, MessageBoxIcon.Warning); //shows a message box if textboxes are blank
                        }
                        else
                        {

                            MessageBox.Show(" Invalid Credentials!", "", MessageBoxButtons.OK, MessageBoxIcon.Warning); //shows a message box if either one of the textboxes have wrong inputs
                        }
                    }
                    else
                    {
                        MessageBox.Show(" Role Not Selected", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                   
                    conn.Close();
                }
                catch (Exception x)
                {
                    
                    MessageBox.Show("Error: " + x.ToString()); //shows the error if there is one
                    conn.Close(); //closes the connection
                }
            }
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            
        }
    }
}
