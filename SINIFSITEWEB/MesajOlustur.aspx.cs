using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SINIFSITEWEB
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtGonderen.Text = Session["OGRTNUMARA"].ToString();

        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajGonder(TxtGonderen.Text, TxtAlici.Text, TxtBaslik.Text, Txticerik.Value);
            Response.Redirect("GidenMesajlar.aspx");
        }
    }
}