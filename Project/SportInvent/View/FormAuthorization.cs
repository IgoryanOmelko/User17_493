using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SportInvent.Classes;
using Model = SportInvent.Classes.Models;
using Entity = SportInvent.Classes.Entities;

namespace SportInvent
{       
        public partial class FormAuthorization : Form
        {
                public FormAuthorization()
                {
                        InitializeComponent();
                }

                private void FormAuthorization_Load(object sender, EventArgs e)
                {
                        this.Icon = Properties.Resources.icon;
                }

                private void buttonLogin_Click(object sender, EventArgs e)
                {
                        string login = this.textBoxLogin.Text;
                        string password = this.textBoxPassword.Text;
                        Entity.User tempUser = EntityHelper.DataBase.User.Where(x => x.UserLogin == login && x.UserPassword == password).ToList().First();
                        if (!(tempUser is null))
                        {
                                Model.User.RoleName = tempUser.Role.RoleName;
                                Model.User.SecondName = tempUser.UserSurname;
                                Model.User.Name = tempUser.UserName;
                                Model.User.Patronymic = tempUser.UserPatronymic;
                                MessageBox.Show($"Вы зашли как {Model.User.RoleName}\r\n{Model.User.SecondName} {Model.User.Name} {Model.User.Patronymic}");
                        }
                        else
                        {
                                MessageBox.Show("Пользователь не найден");
                        }
                }
        }
}
