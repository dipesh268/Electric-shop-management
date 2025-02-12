using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtsignup_Click(object sender, EventArgs e)
    {

        if (isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tbluser(Username,Password,FirstName,LastName,Address,City,Pincode,Mobile,Email,Gender,EntryDate) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtFName.Text + "','" + txtLName.Text + "','" + txtAdd.Text + "','" + txtCity.Text + "','" + txtpin.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + DDLGender.Text + "',GETDATE())", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Registration Successfully done');  </script>");
                clr();
                con.Close();
               
                lblMsg.Text = "Registration Successfully done";
                lblMsg.ForeColor = System.Drawing.Color.Green;

            }
            Response.Redirect("~/SignIn.aspx");
        }
        else
        {
            Response.Write("<script> alert('Registration failed');  </script>");
            lblMsg.Text = "Registration Failed";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }

    }

    private bool isformvalid()
    {
        if (txtUname.Text == "")
        {
            Response.Write("<script> alert('username not valid');  </script>");
            txtUname.Focus();

            return false;
        }
        else if (txtPass.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtPass.Focus();
            return false;
        }
        else if (txtPass.Text != txtCPass.Text)
        {
            Response.Write("<script> alert('confirm Password not valid');  </script>");
            txtCPass.Focus();
            return false;
        }
        else if (txtFName.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtFName.Focus();
            return false;
        }
        else if (txtLName.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtLName.Focus();
            return false;
        }
        else if (txtAdd.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtAdd.Focus();
            return false;
        }
        else if (txtCity.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtCity.Focus();
            return false;
        }
        else if (txtpin.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtpin.Focus();
            return false;
        }
        else if (txtMobile.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtMobile.Focus();
            return false;
        }
        else if (txtEmail.Text == "")
        {
            Response.Write("<script> alert('Email not valid');  </script>");
            txtEmail.Focus();
            return false;
        }
        else if (DDLGender.Text == "")
        {
            Response.Write("<script> alert('Name not valid');  </script>");
            DDLGender.Focus();
            return false;
        }

        return true;
    }

    private void clr()
    {
        txtFName.Text = string.Empty;
        txtLName.Text = string.Empty;
        txtAdd.Text = string.Empty;
        txtCity.Text = string.Empty;
        txtpin.Text = string.Empty;
        txtPass.Text = string.Empty;
        txtUname.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtCPass.Text = string.Empty;
        DDLGender.SelectedIndex = -1;
        txtDate.Text = string.Empty;
    }


}