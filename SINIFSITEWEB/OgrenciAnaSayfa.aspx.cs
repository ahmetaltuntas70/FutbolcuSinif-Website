using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SINIFSITEWEB
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["NUMARA"].ToString();

            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            TextBox2.Text = "AD SOYAD: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRAD + " " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSOYAD;
            TextBox3.Text = "MAIL: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRMAIL;
            TextBox4.Text = "ŞİFRE: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSIFRE;
            TextBox5.Text = "TELEFON: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRTELEFON;
            TextBox6.Text = "FOTOĞRAF: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRFOTOGRAF;
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?NUMARA=" + TextBox1.Text);
        }
    }
}