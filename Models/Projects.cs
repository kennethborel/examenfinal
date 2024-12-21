using System.Collections.Generic;
using System;

namespace ExamenProd.Models
{
    public class Project
    {
        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }

        public virtual ICollection<Assignment> Assignments { get; set; }
    }
}
