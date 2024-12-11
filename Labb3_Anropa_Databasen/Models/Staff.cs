using System;
using System.Collections.Generic;

namespace Labb3_Anropa_Databasen.Models;

public partial class Staff
{
    public int StaffId { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public int RoleId { get; set; }

    public virtual ICollection<Enrolment> Enrolments { get; set; } = new List<Enrolment>();

    public virtual Role Role { get; set; } = null!;
}
