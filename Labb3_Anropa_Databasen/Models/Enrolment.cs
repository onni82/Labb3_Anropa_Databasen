using System;
using System.Collections.Generic;

namespace Labb3_Anropa_Databasen.Models;

public partial class Enrolment
{
    public int EnrolmentId { get; set; }

    public int CourseId { get; set; }

    public int StudentId { get; set; }

    public int StaffId { get; set; }

    public string? Grade { get; set; }

    public DateTime? GradeDate { get; set; }

    public virtual Course Course { get; set; } = null!;

    public virtual Staff Staff { get; set; } = null!;

    public virtual Student Student { get; set; } = null!;
}
