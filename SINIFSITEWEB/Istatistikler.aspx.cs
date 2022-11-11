using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SINIFSITEWEB
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
            TextBox1.Text = "Toplam Futbolcu Sayısı: " + dt.Istatistik1().ToString();
            TextBox2.Text = "Toplam Antrenör Sayısı: " + dt.Istatistik2().ToString();
            TextBox3.Text = "Toplam Ders Sayısı: " + dt.Istatistik3().ToString();
            TextBox4.Text = "Şut Sınav1'de En Başarılı Futbolcu: " + dt.Istatistik4().ToString();
            TextBox5.Text = "Pas Sınav1'de En Başarılı Futbolcu: " + dt.Istatistik5().ToString();
            TextBox6.Text = "Şut Dersi Sınav1 Ortalama: " + dt.Istatistik6().ToString();
            TextBox7.Text = "Pas Dersi Sınav1 Ortalama: " + dt.Istatistik7().ToString();
            TextBox8.Text = "Şut Dersinden Geçen Futbolcu Sayısı: " + dt.Istatistik8().ToString();
            TextBox9.Text = "Şut Dersinden Kalan Futbolcu Sayısı: " + dt.Istatistik9().ToString();

        }
    }
}