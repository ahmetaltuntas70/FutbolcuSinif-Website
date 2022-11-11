using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SINIFSITEWEB
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
            Repeater1.DataSource = dt.OgretmenGelenMesaj(Session["OGRTNUMARA"].ToString());
            Repeater1.DataBind();
        }
    }
}