using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace OnlineTest4
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Models.UsersDb ds = new Models.UsersDb();
            string query = string.Format("select * from {0} where {1} = '{2}'",
                ds.UserProfiles.TableName,
                ds.UserProfiles.UserNameColumn.ColumnName,
                txtUserName.Text);

            SqlDataAdapter da =
                new SqlDataAdapter(
                    query,
                    System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);

            da.Fill(ds, ds.UserProfiles.TableName);

            if (ds.Tables[ds.UserProfiles.TableName].Rows.Count != 0)
            {

                if (txtUserName.Text == "admin")
                {
                    Session["UserName"] = "admin";
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, txtUserName.Text, DateTime.Now, DateTime.Now.AddMinutes(30), false, FormsAuthentication.FormsCookiePath);
                    string hash = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);

                    Response.Write(cookie.Path);

                    if (ticket.IsPersistent)
                    {
                        cookie.Expires = ticket.Expiration;
                    }
                    Response.Cookies.Add(cookie);
                    string returnUrl = Request.QueryString["ReturnUrl"];

                    if (returnUrl == null)
                    {
                        returnUrl = "~/Admin/AdminHome.aspx";
                    }

                    Response.RedirectPermanent(returnUrl);
                }
            }
            else
            {
                lblWarning.Text = "The combination of User name and password does not exist.";
            }
        }
    }
}