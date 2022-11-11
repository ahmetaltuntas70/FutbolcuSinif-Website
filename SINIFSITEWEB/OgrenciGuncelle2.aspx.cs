using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SINIFSITEWEB
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Request.QueryString["NUMARA"];

            if(Page.IsPostBack==false)
            {

            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciSifreGuncelle(TxtSifre1.Text, TextBox1.Text);
            Response.Redirect("OgrenciAnaSayfa.aspx?NUMARA=" + TextBox1.Text);
        }

        
    }
}