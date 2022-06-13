using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace projem23
{
    public partial class kategori_duz : System.Web.UI.Page
    {
        ticaretEntities db = new ticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                int gelen = int.Parse(Request.QueryString["Id"]);
                var sorgu = db.kategoriler.Where(x => x.Id == gelen).FirstOrDefault();
                adi.Text = sorgu.kategori_Adi;
            }
          

        }

        protected void kayit_Click(object sender, EventArgs e)
        {
            int gelen = int.Parse(Request.QueryString["Id"]);
            var sorgu = db.kategoriler.Where(x => x.Id == gelen).FirstOrDefault();
            sorgu.kategori_Adi = adi.Text;
            db.SaveChanges();
            Response.Redirect("kategori_ekle.aspx");
        }
    }
}