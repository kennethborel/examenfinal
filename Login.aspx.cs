using System;
using System.Web.Security;

namespace ExamenProd.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (username == "admin" && password == "password")
            {
                FormsAuthentication.RedirectFromLoginPage(username, false);
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password.');</script>");
            }
        }
    }
}
