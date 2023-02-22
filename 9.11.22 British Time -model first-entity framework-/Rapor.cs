using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _9._11._22_British_Time__model_first_entity_framework_
{
    public partial class Rapor : Form
    {
        Model1Container con = new Model1Container();
        public Rapor()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Form1 go = new Form1();
            go.Show();
            this.Hide();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            HomePage go = new HomePage();
            go.Show();
            this.Hide();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = con.Teacher1Student();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = con.StudentLessons();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = con.TeacherLessons();
        }

        private void Rapor_Load(object sender, EventArgs e)
        {

        }
    }
}
