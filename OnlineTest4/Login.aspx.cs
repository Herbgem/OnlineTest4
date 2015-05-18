using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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
                Models.UserInfo.UserName = ds.Tables[ds.UserProfiles.TableName].Rows[0][ds.UserProfiles.UserNameColumn.ColumnName].ToString();
                Response.RedirectPermanent("AdminHome.aspx");
                Session["UserName"] = "admin";
            }
            else
            {
                lblWarning.Text = "The combination of User name and password does not exist.";
            }
        }
    }
}