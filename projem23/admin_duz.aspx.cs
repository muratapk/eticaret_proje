using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
namespace projem23
{
    public partial class admin_duz : System.Web.UI.Page
    {
        ticaretEntities db = new ticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int gelen = int.Parse(Request.QueryString["Id"].ToString());
            var sorgu = (from x in db.admin where x.Id == gelen select x).FirstOrDefault();
            users.Text = sorgu.users;
            pass.Text = sorgu.pass;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int gelen = int.Parse(Request.QueryString["Id"].ToString());
            var sorgu = (from x in db.admin where x.Id == gelen select x).FirstOrDefault();
            sorgu.users = users.Text;
            sorgu.pass = pass.Text;
            db.SaveChanges();
            Label1.Text = "Kaydınız Düzetilmiştir.";
        }
    }
}