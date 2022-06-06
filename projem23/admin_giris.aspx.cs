using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
namespace projem23
{
    public partial class admin_giris : System.Web.UI.Page
    {
        ticaretEntities db = new ticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string users = TextBox1.Text;
            string pass = TextBox2.Text;

            var sorgu = (from x in db.admin where x.users == users && x.pass == pass select x).FirstOrDefault();
            //Response.Write("<script>alert('Giriş Onaylandı')</script>");
            //Response.Redirect("main.aspx");
        }
    }
}