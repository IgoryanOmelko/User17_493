using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SportInvent.Classes.Models
{
        public static class User
        {
                static int role;
                static string sn;
                static string name;
                static string ptn;
                static string roleName;
                public static int Role
                {
                        get
                        {
                                return role;
                        }
                        set
                        {
                                role = value;
                        }
                }
                public static string SecondName
                {
                        get
                        {
                                return sn;
                        }
                        set
                        {
                                sn = value;
                        }
                }
                public static string Name
                {
                        get
                        {
                                return name;
                        }
                        set
                        {
                                name = value;
                        }
                }
                public static string Patronymic
                {
                        get
                        {
                                return ptn;
                        }
                        set
                        {
                                ptn = value;
                        }
                }
                public static string RoleName
                {
                        get
                        {
                                return roleName;
                        }
                        set
                        {
                                roleName = value;
                        }
                }
        }
}
