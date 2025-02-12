using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class RecoverPassword : System.Web.UI.Page
{
    String GUIDvalue;
    
    int Uid;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            
            GUIDvalue = Request.QueryString["id"];
           
            if(GUIDvalue !=null)
            {
                SqlCommand cmd = new SqlCommand("Select * from ForgotPass where Id=@Id",con);
                con.Open();
                cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                
                sda.Fill(dt);
                if(dt.Rows.Count !=0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }
                
            } 
            else
            {
                Response.Redirect("~/Default.aspx");
            }

        }

        if(!IsPostBack )
        {
            if (dt.Rows.Count!=0)
            {
                txtConfirmPass.Visible = true;
                txtNewPass .Visible = true;
                lblNewPassword .Visible = true;
                lblConfirmPass .Visible = true;
                btnResetPass .Visible = true;
            }
            else
            {
                lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                lblmsg.ForeColor = System.Drawing.Color.Red;

            }

        }


    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        if (txtNewPass.Text != "" && txtConfirmPass.Text != "" && txtNewPass.Text == txtConfirmPass.Text)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Update tblUser set Password=@p where Uid=@Uid", con);
                cmd.Parameters.AddWithValue("@p", txtNewPass.Text);
                cmd.Parameters.AddWithValue("@Uid", Uid);
                Response.Write("<script> alert('Password Reset Successfully done');  </script>");
                cmd.ExecuteNonQuery();


                SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where Uid='" + Uid + "'", con);
                Response.Write("<script> alert('Password Reset Successfully done');  </script>");
                Response.Redirect("~/SignIn.aspx");
                cmd2.ExecuteNonQuery();
                
                
               

            }
        }
    }
}