using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SINIFSITEWEB
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=KarnetGuvenlik;Initial Catalog=BootsrapSinifSiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI Where NUMARA=@P1 and OGRSIFRE=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@P2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("NUMARA", TxtNumara.Text);
                Response.Redirect("OgrenciAnaSayfa.aspx");

            }
            else
            {
                TxtSifre.Text = "HATALI ŞİFRE";
            }
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRETMEN Where OGRTNUMARA=@P1 and OGRTSIFRE=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@P2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OGRTNUMARA", TxtNumara.Text);
                Response.Redirect("Default.aspx");

            }
            else
            {
                TxtSifre.Text = "HATALI ŞİFRE";
            }
            baglanti.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

            }
            Response.Redirect("https://www.galatasaray.org/sl/galatasaray-haberleri/4");
        }
    }
}