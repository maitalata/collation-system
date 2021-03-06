﻿using System;
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
    public partial class Result : Form
    {
        public MySqlConnection conn; //connection
        public Result()
        {
            conn = new MySqlConnection("Server=localhost;Database=collation;Uid=root;Pwd=123"); //connection
            InitializeComponent();
        }

        private void Result_Load(object sender, EventArgs e)
        {
            conn.Open(); //opens the connection
            MySqlCommand query = new MySqlCommand("SELECT * FROM votespolled", conn); //query to select all entries in tbl_employee
            MySqlDataAdapter adp = new MySqlDataAdapter(query); //adapter for query
            DataTable dt = new DataTable(); //datatable for adapter
            adp.Fill(dt); //adapter fills the data with data table

            dataGridCollation.DataSource = dt; //sets datasource to datatable
            dataGridCollation.Columns["id"].Visible = false; //gets the employeeID and sets it's visibility to false
            dataGridCollation.Columns["pollingUnit"].HeaderText = "Polling Unit Name"; //gets the eName and sets it as a header
            dataGridCollation.Columns["ward"].HeaderText = "Ward"; //gets the username and sets it as a header
            dataGridCollation.Columns["party"].HeaderText = "Party"; //gets the eRemarks and sets it as a header
            dataGridCollation.Columns["votesWon"].HeaderText = "Votes Won";

            conn.Close(); //closes the connection
            

        }

        private void dataGridCollation_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
            System.Windows.Forms.Application.Exit();
        }
    }
}
