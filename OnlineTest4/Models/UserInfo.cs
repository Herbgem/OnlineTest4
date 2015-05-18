using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTest4.Models
{
    public static class UserInfo
    {
        private static HttpContext ht = HttpContext.Current;
        public static string UserName
        {
            get { ht = HttpContext.Current; return ht.Session["UserName"] == null ? null : ht.Session["UserName"].ToString(); }
            set { ht.Session["UserName"] = value; }
        }
        public static string password
        {
            get { ht = HttpContext.Current; return ht.Session["Password"] == null ? null : ht.Session["Password"].ToString(); }
            set { ht.Session["Password"] = value; }
        }
        public static string Email
        {
            get { ht = HttpContext.Current; return ht.Session["Email"] == null ? null : ht.Session["Email"].ToString(); }
            set { ht.Session["Email"] = value; }
        }
        public static int Mobile
        {
            get { ht = HttpContext.Current; return ht.Session["Mobile"] == null ? -1 : Convert.ToInt32(ht.Session["Mobile"]); }
            set { ht.Session["Mobile"] = value; }
        }
        public static string Gender
        {
            get { ht = HttpContext.Current; return ht.Session["Gender"] == null ? null : ht.Session["Gender"].ToString(); }
            set { ht.Session["Gender"] = value; }
        }
    }
}