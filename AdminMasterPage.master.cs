using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            lblSuccess.Text = "Login Success, Welcom " + Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("~/AdminLogin.aspx");
        }
    }
    protected void btnAdminlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }
}
