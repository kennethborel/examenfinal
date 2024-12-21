using System;
using ExamenProd.Models;

namespace ExamenProd.Employees
{
    public partial class Employees_Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                using (var context = new ApplicationDbContext())
                {
                    var employee = new Employee
                    {
                        NumeroCarnet = txtNumeroCarnet.Text,
                        Nombre = txtNombre.Text,
                        FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text),
                        Categoria = ddlCategoria.SelectedValue,
                        Correo = txtCorreo.Text,
                        Telefono = txtTelefono.Text,
                        Salario = string.IsNullOrEmpty(txtSalario.Text) ? 250000 : decimal.Parse(txtSalario.Text),
                        Direccion = "San José"  
                    };

                    context.Employees.Add(employee);
                    context.SaveChanges();

                    Response.Write("<script>alert('Employee registered successfully!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
