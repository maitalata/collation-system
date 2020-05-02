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
    public partial class Form4 : Form
    {
        int flag = 0;
        public MySqlConnection conn; //connection
        String[] str;
        int pollingUnits;
        int PUparties;
        string ward;
        TextBox[] COboxes;
        public Form4(string[] arg, int pu, int p, string w)
        {
            pollingUnits = pu;
            str = arg;
            PUparties = 4;
            ward = w;
            //xtBox[] COboxes = new TextBox[PUparties];
            conn = new MySqlConnection("Server=localhost;Database=collation;Uid=root;Pwd=123"); //connection
            
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            
            COboxes = new TextBox[PUparties];
            Label[] labels = new Label[str.Length];

            int k = 10;
            for (int i = 0; i < str.Length; i++)
            {
                COboxes[i] = new TextBox();
                labels[i] = new Label();

                labels[i].Name = "label" + 1;
                labels[i].Location = new System.Drawing.Point(10, k);
                labels[i].Size = new System.Drawing.Size(400, 36); ;
                labels[i].Text = "Votes scored by "+str[i];
                labels[i].Visible = true;

                k += 40;

                COboxes[i].Name = "box" + 1;
                COboxes[i].Location = new System.Drawing.Point(10, k);
                COboxes[i].Size = new System.Drawing.Size(400, 36); ;
                COboxes[i].Multiline = false;
                COboxes[i].Visible = true;
                //this.Controls.Add(boxes[i]);
                //panel1.Controls.Add(boxes[i]);
                panelContainer.Controls.Add(labels[i]);
                panelContainer.Controls.Add(COboxes[i]);
                k += 50;
            }
        }

        private void button5_Click(object sender, EventArgs e)   
        {
            
            string PU = txtPU.Text;
            int registered = Int32.Parse(textBox1.Text);
            int accredited = Int32.Parse(textBox2.Text);
            int casted = Int32.Parse(textBox3.Text);

            Int32[] str3 = new Int32[str.Length];

            for (int i = 0; i < str.Length; i++)
            {

                str3[i] = Int32.Parse(COboxes[i].Text);
            }

            int totalWon = str3.Sum();
            int rejected = casted - totalWon;


            if(accredited > registered || casted > accredited || totalWon > casted)
            {
                MessageBox.Show("Error: Inconsistent entries, check the numbers ");
            }
            else
            {
                try
                {
                    conn.Open();

                    if (Form2.role == "Collation Officer")
                    {
                        MySqlCommand com = new MySqlCommand("INSERT INTO pollingunits2(puName, registeredVoters, accreditedVoters, votesCasted, rejectedVotes) VALUES ('" + PU + "','" + registered + "','" + accredited + "','" + casted + "','" + rejected + "')", conn); //query to set remark to Logged
                        com.ExecuteNonQuery();
                    }
                    else
                    {
                        MySqlCommand com = new MySqlCommand("INSERT INTO pollingunits(puName, registeredVoters, accreditedVoters, votesCasted, rejectedVotes) VALUES ('" + PU + "','" + registered + "','" + accredited + "','" + casted + "','" + rejected + "')", conn); //query to set remark to Logged
                        com.ExecuteNonQuery();
                    }
                    

                    Int32[] str2 = new Int32[str.Length];

                    for (int i = 0; i < str.Length; i++)
                    {

                        str2[i] = Int32.Parse(COboxes[i].Text);

                        //MessageBox.Show("hELL yeS");

                        if (Form2.role == "Collation Officer")
                        {
                            MySqlCommand com2 = new MySqlCommand("INSERT INTO votespolled2(ward, pollingUnit, party, votesWon) VALUES ('" + ward + "','" + PU + "','" + str[i] + "','" + str2[i] + "')", conn); //query to set remark to Logged
                            com2.ExecuteNonQuery();
                        }
                        else
                        {
                            MySqlCommand com2 = new MySqlCommand("INSERT INTO votespolled(ward, pollingUnit, party, votesWon) VALUES ('" + ward + "','" + PU + "','" + str[i] + "','" + str2[i] + "')", conn); //query to set remark to Logged
                            com2.ExecuteNonQuery();
                        }
                        
                    }

                    conn.Close(); //closes the connection
                    txtPU.Text = "";
                    textBox1.Text = "";
                    textBox2.Text = "";
                    textBox3.Text = "";

                    flag++;

                    if (pollingUnits == flag)
                    {
                        if(Form2.role == "Collation Officer")
                        {
                            Result2 result = new Result2();
                            result.Show();
                            this.Hide();
                        }
                        else
                        {
                            Result result = new Result();
                            result.Show();
                            this.Hide();
                        }
                    }



                    for (int i = 0; i < PUparties; i++)
                    {
                        COboxes[i].Text = "";
                    }

                }
                catch (Exception x)
                {
                    MessageBox.Show("Error: " + x.ToString()); //shows the error if there is one
                    conn.Close(); //closes the connection
                }
            }
        }
    }
}
