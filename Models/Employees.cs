using System;
using System.Collections.Generic;

namespace ExamenProd.Models
{
    public class Employee
    {
        public int Id { get; set; } 
        public string NumeroCarnet { get; set; } 
        public string Nombre { get; set; } 
        public DateTime FechaNacimiento { get; set; } 
        public string Categoria { get; set; } 
        public decimal Salario { get; set; } 
        public string Direccion { get; set; } = "San José"; 
        public string Telefono { get; set; } 
        public string Correo { get; set; } 
        public virtual ICollection<Assignment> Assignments { get; set; } 
    }
}
