using Labb3_Anropa_Databasen.Models;
using Labb3_Anropa_Databasen.Data;
using Microsoft.EntityFrameworkCore;

namespace Labb3_Anropa_Databasen
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Menu.Run();
        }
    }
}
// Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False
// Scaffold-DbContext "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -ContextDir Data -Context SchoolContext