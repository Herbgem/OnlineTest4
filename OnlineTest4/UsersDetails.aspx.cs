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
    public partial class WebForm6 : System.Web.UI.Page
    {
        Models.UsersDb ds;
        SqlDataAdapter da;
        SqlCommandBuilder sc;

        public WebForm6()
        {
            ds = new Models.UsersDb();
            da = new SqlDataAdapter(
                    string.Format("select * from {0}", ds.UserProfiles.TableName),
                    System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);
            da.Fill(ds, ds.UserProfiles.TableName);
            sc = new SqlCommandBuilder(da);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvUsers.DataSource = ds.Tables[ds.UserProfiles.TableName];
                gvUsers.DataBind();
            }
        }

        protected void gvUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUsers.PageIndex = e.NewPageIndex;

            gvUsers.DataSource = ds.Tables[ds.UserProfiles.TableName];
            gvUsers.DataBind();
        }
    }
}