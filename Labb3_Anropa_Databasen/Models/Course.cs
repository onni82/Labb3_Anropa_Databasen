using System;
using System.Collections.Generic;

namespace Labb3_Anropa_Databasen.Models;

public partial class Course
{
    public int CourseId { get; set; }

    public string CourseName { get; set; } = null!;

    public virtual ICollection<Enrolment> Enrolments { get; set; } = new List<Enrolment>();
}
