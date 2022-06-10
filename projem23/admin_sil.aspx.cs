using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
namespace projem23
{
    public partial class admin_sil : System.Web.UI.Page
    {
        ticaretEntities db = new ticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int gelen =int.Parse( Request.QueryString["Id"].ToString());
            var sorgu = (from x in db.admin where x.Id == gelen select x).FirstOrDefault();
            db.admin.Remove(sorgu);
            db.SaveChanges();
            Label1.Text = "<h1>Kaydınız Silinmiştir.</h1>";
            HyperLink1.NavigateUrl = "admin_ekle.aspx";
                
        }
    }
}