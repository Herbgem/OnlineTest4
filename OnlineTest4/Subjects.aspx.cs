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
    public partial class WebForm8 : System.Web.UI.Page
    {
        Models.UsersDb ds;
        SqlDataAdapter da;
        SqlCommandBuilder sc;

        public WebForm8()
        {
            ds = new Models.UsersDb();
            da = new SqlDataAdapter(
                string.Format("select * from {0}", ds.Subjects.TableName),
                System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsersDbConnectionString"].ConnectionString);
            sc = new SqlCommandBuilder(da);
            da.Fill(ds, ds.Subjects.TableName);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                gvUsers.DataSource = ds.Tables[ds.Subjects.TableName];
                gvUsers.DataBind();
            }
        }

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                TextBox tb = gvUsers.FooterRow.FindControl("txtNewSubjectName") as TextBox;
                ds.Subjects.AddSubjectsRow((gvUsers.FooterRow.FindControl("txtNewSubjectName") as TextBox).Text);
                da.Update(ds, ds.Subjects.TableName);
                ds.Subjects.Clear();
                da.Fill(ds, ds.Subjects.TableName);
                gvUsers.DataSource = ds.Subjects;
                gvUsers.DataBind();
            }
        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;

            gvUsers.DataSource = ds.Subjects;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Models.UsersDb.SubjectsRow dr = ds.Subjects.FindBySubjectId(Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value));
            dr.Subject = (gvUsers.Rows[e.RowIndex].FindControl("txtSubjectname") as TextBox).Text;
            da.Update(ds, ds.Subjects.TableName);
            gvUsers.EditIndex = -1;

            gvUsers.DataSource = ds.Subjects;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ds.Subjects.Rows.Find(gvUsers.DataKeys[e.RowIndex].Value).Delete();
            da.Update(ds, ds.Subjects.TableName);
            gvUsers.DataSource = ds.Subjects;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;

            gvUsers.DataSource = ds.Subjects;
            gvUsers.DataBind();
        }

        protected void gvUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUsers.PageIndex = e.NewPageIndex;

            gvUsers.DataSource = ds.Subjects;
            gvUsers.DataBind();
        }
    }
}