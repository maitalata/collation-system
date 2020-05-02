using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CollationSystem
{
    public partial class insertParties : Form
    {
        int p;
        int pu;
        string ward;
        TextBox[] boxes;
        public insertParties(int parties, int pu, string w)
        {
            ward = w;
            p = parties;
            this.pu = pu;
            InitializeComponent();
        }

        private void insertParties_Load(object sender, EventArgs e)
        {
            boxes = new TextBox[p];

            int k = 10;
            for (int i = 0; i < p; i++)
            {
                boxes[i] = new TextBox();
                
                boxes[i].Name = "box"+1;
                boxes[i].Location = new System.Drawing.Point(10, k);
                boxes[i].Size = new System.Drawing.Size(400, 36); ;
                boxes[i].Multiline = false;
                boxes[i].Visible = true;
                //this.Controls.Add(boxes[i]);
                //panel1.Controls.Add(boxes[i]);
                panelContainer.Controls.Add(boxes[i]);
                k += 40;
            }
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            string[] str = new string[p];
            for (int i = 0; i < p; i++)
            {
                str[i] = boxes[i].Text;
            }
            Form4 form4 = new Form4(str, pu, p, ward);
            form4.Show();
            this.Hide();
        }
    }
}
