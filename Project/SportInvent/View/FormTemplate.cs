using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SportInvent
{
        public partial class FormTemplate : Form
        {
                public FormTemplate()
                {
                        InitializeComponent();
                }

                private void FormTemplate_Load(object sender, EventArgs e)
                {
                        this.Icon = Properties.Resources.icon;
                }
        }
}
