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
            Panel3.Visible = false;
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
            Panel3.Visible = true;
            //var sorgu = (from x in db.admin where x.users == users.Text select x).FirstOrDefault();
            //users.Text = sorgu.users;
            //pass.Text = sorgu.pass;

            //GridView1.DataSource = sorgu;
            //GridView1.DataBind();
        }

        protected void arananbtn_Click(object sender, EventArgs e)
        {
            int ara = int.Parse(aranantxt.Text);
            var sorgu = (from x in db.admin where x.Id == ara select x).FirstOrDefault();
            users.Text = sorgu.users;
            pass.Text = sorgu.pass;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int ara = int.Parse(aranantxt.Text);
            var sorgu = (from x in db.admin where x.Id == ara select x).FirstOrDefault();
            sorgu.users = users.Text;
            sorgu.pass = pass.Text;
            db.SaveChanges();
            doldur();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int ara = int.Parse(aranantxt.Text);
            var sorgu = (from x in db.admin where x.Id == ara select x).FirstOrDefault();
            db.admin.Remove(sorgu);
            db.SaveChanges();
            doldur();
            users.Text="";
            pass.Text = "";

        }
    }
}