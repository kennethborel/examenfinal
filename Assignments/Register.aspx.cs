using System;
using ExamenProd.Models;

namespace ExamenProd.Assignments
{
    public partial class Assignments_Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                using (var context = new ApplicationDbContext())
                {
                    var assignment = new Assignment
                    {
                        EmployeeId = int.Parse(txtEmployeeID.Text),
                        ProjectId = int.Parse(txtProjectID.Text),
                        StartDate = DateTime.Parse(txtStartDate.Text),
                        EndDate = DateTime.Parse(txtEndDate.Text),
                        Status = ddlStatus.SelectedValue
                    };

                    context.Assignments.Add(assignment);
                    context.SaveChanges();

                    Response.Write("<script>alert('Assignment registered successfully!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
