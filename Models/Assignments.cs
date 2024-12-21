using System;

namespace ExamenProd.Models
{
    public class Assignment
    {
        public int Id { get; set; } 
        public int EmployeeId { get; set; }
        public virtual Employee Employee { get; set; } 
        public int ProjectId { get; set; } 
        public virtual Project Project { get; set; } 
        public DateTime StartDate { get; set; } 
        public DateTime EndDate { get; set; } 
        public string Status { get; set; } 
    }
}
