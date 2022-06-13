using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
namespace projem23
{
    public partial class kategori_ekle : System.Web.UI.Page
    {
        ticaretEntities db = new ticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            doldur();
        }

      
        void doldur()
        {
            var sorgu = db.kategoriler.ToList();//lambda Expression
            GridView1.DataSource = sorgu;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            kategoriler bos = new kategoriler();
            bos.kategori_Adi = adi.Text;
            db.kategoriler.Add(bos);
            db.SaveChanges();
            doldur();
        }
    }
}