using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace OnlineTest4
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (Session["UserName"].ToString() == "admin")
                {
                    this.TestOPS.Visible = true;
                    this.UserOPS.Visible = true;
                }
                this.lnkLogOut1.Visible = true;
                this.hlLogin.Visible = false;
                this.hlRegister.Visible = false;
            }
        }

        protected void lnkLogOut1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
        
    }
}