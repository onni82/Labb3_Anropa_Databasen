using System;
using System.Collections.Generic;

namespace Labb3_Anropa_Databasen.Models;

public partial class Student
{
    public int StudentId { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public long PersonalNumber { get; set; }

    public virtual ICollection<Enrolment> Enrolments { get; set; } = new List<Enrolment>();
}
