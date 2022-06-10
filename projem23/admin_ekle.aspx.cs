using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
namespace projem23
{
    public partial class admin_ekle : System.Web.UI.Page
    {
        ticaretEntities db = new ticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            doldur();
        }
        void doldur()
        {
            var sorgu = db.admin.ToList();
            GridView1.DataSource = sorgu;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            admin bos = new admin();
            bos.users = users.Text;
            bos.pass = pass.Text;
            db.admin.Add(bos);
            db.SaveChanges();
            Response.Write("<script>alert('Kaydınız Yapılmıştır')</script>");
            doldur();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var sorgu = (from x in db.admin where x.users == users.Text select x).FirstOrDefault();
            users.Text = sorgu.users;
            pass.Text = sorgu.pass;

            //GridView1.DataSource = sorgu;
            //GridView1.DataBind();
        }
    }
}