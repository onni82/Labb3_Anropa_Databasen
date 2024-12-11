using Labb3_Anropa_Databasen.Models;
using Labb3_Anropa_Databasen.Data;

namespace Labb3_Anropa_Databasen
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // A simple navigation in the program that allows the user to choose between the following functions.
            while (true)
            {
                Console.WriteLine("Want do you want to do?");
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("1. Display staff");
                Console.ForegroundColor = ConsoleColor.DarkRed;
                Console.WriteLine("2. Display all students");
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("3. Display all students in a class");
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("4. Display all grades this month");
                Console.ForegroundColor = ConsoleColor.Blue;
                Console.WriteLine("5. Display all grades for a course");
                Console.ForegroundColor = ConsoleColor.DarkBlue;
                Console.WriteLine("6. Add a new student");
                Console.ForegroundColor = ConsoleColor.Magenta;
                Console.WriteLine("7. Add new staff");
                Console.ResetColor();
                Console.WriteLine("8. Exit application");

                string choice = Console.ReadLine();
                Console.WriteLine("");

                // A switch case that handles the user's choice
                switch (choice)
                {
                    case "1":
                        Console.WriteLine("");
                        // Get staff (can be solved with ADO.NET and SQL, otherwise EntityFramework)
                        // The user can choose whether he wants to see all employees, or only within one of the categories, such as teachers
                        using (var context = new SchoolContext())
                        {
                            // Prints a list of all Roless in the database
                            var roles = context.Roles.ToList();

                            Console.WriteLine("All roles:");
                            foreach (var role in roles)
                            {
                                Console.WriteLine(role.RoleId + ". " + role.RoleName);
                            }

                            Console.WriteLine("Which role do you want to see? Type a corresponding number, or 0 to view all staff.");
                            string roleChoice = Console.ReadLine();
                            Console.WriteLine("");

                            if (roleChoice == "0")
                            {
                                var staff = context.Staff.OrderBy(s => s.Role.RoleName).ToList();
                                
                                foreach (var s in staff)
                                {
                                    Console.WriteLine($"{s.Role.RoleName}: {s.FirstName} {s.LastName}");
                                }
                            }
                            // Checks the user's choice is an existing role
                            else if (roles.Any(r => r.RoleId == int.Parse(roleChoice)))
                            {
                                var staff = context.Staff.Where(s => s.RoleId == int.Parse(roleChoice)).ToList();
                                foreach (var s in staff)
                                {
                                    Console.WriteLine($"{s.FirstName} {s.LastName}");
                                }
                            }
                            else
                            {
                                Console.WriteLine("Invalid choice");
                            }
                            
                        }
                        Console.WriteLine("");
                        break;
                    case "2":
                        Console.WriteLine("");
                        // Get all students (to be solved with EntityFramework)
                        // The user can choose whether they want to see the students sorted by first or last name and whether it should be sorted in ascending or descending order.
                        
                        Console.WriteLine("");
                        break;
                    case "3":
                        Console.WriteLine("");
                        // Get all students in a certain class (to be solved with EntityFramework)
                        // The user must first see a list of all the classes that exist, then the user can choose one of the classes and then all the students in that class will be printed.
                        
                        Console.WriteLine("");
                        break;
                    case "4":
                        Console.WriteLine("");
                        // Get all grades set in the last month (can be solved with ADO.NET and SQL, otherwise EntityFramework)
                        // Here, the user immediately gets a list of all the grades set in the last month, where the student's name, the name of the course and the grade appear.
                        
                        Console.WriteLine("");
                        break;
                    case "5":
                        Console.WriteLine("");
                        // Get a list of all courses and the average grade that the students got in that course as well as the highest and lowest grade that someone got in the course (can be solved with ADO.NET and SQL, otherwise Entity framework)
                        // Here, the user immediately gets a list of all courses in the database, the average grade and the highest and lowest grade for each course.
                        
                        Console.WriteLine("");
                        break;
                    case "6":
                        Console.WriteLine("");
                        // Add new students (can be solved with ADO.NET and SQL, otherwise EntityFramework)
                        // The user gets the opportunity to enter information about a new student and that data is then saved in the database.

                        break;
                    case "7":
                        Console.WriteLine("");
                        // Add new staff (to be solved through the Entity framework)
                        // The user gets the opportunity to enter information about a new employee and that data is then saved in the database.

                        Console.WriteLine("");
                        break;
                    case "8":
                        // Exits the application
                        return;
                    default:
                        Console.WriteLine("");
                        Console.WriteLine("Invalid choice");
                        break;
                }
            }
        }
    }
}
// Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False
// Scaffold-DbContext "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -ContextDir Data -Context SchoolContext