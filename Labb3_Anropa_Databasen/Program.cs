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
                Console.WriteLine("1. Get all teachers");
                Console.WriteLine("2. Get all students");
                Console.WriteLine("3. Get all students in a class");
                Console.WriteLine("4. Get all grades this month");
                Console.WriteLine("5. Get all grades for a course");
                Console.WriteLine("6. Add new student");
                Console.WriteLine("7. Add new teacher");

                string choice = Console.ReadLine();

                // A switch case that handles the user's choice
                switch (choice)
                {
                    case "1":
                        // Get staff (can be solved with ADO.NET and SQL, otherwise EntityFramework)
                        // The user can choose whether he wants to see all employees, or only within one of the categories, such as teachers

                        break;
                    case "2":
                        // Get all students (to be solved with EntityFramework)
                        // The user can choose whether they want to see the students sorted by first or last name and whether it should be sorted in ascending or descending order.

                        break;
                    case "3":
                        // Get all students in a certain class (to be solved with EntityFramework)
                        // The user must first see a list of all the classes that exist, then the user can choose one of the classes and then all the students in that class will be printed.

                        break;
                    case "4":
                        // Get all grades set in the last month (can be solved with ADO.NET and SQL, otherwise EntityFramework)
                        // Here, the user immediately gets a list of all the grades set in the last month, where the student's name, the name of the course and the grade appear.

                        break;
                    case "5":
                        // Get a list of all courses and the average grade that the students got in that course as well as the highest and lowest grade that someone got in the course (can be solved with ADO.NET and SQL, otherwise Entity framework)
                        // Here, the user immediately gets a list of all courses in the database, the average grade and the highest and lowest grade for each course.

                        break;
                    case "6":
                        // Add new students (can be solved with ADO.NET and SQL, otherwise EntityFramework)
                        // The user gets the opportunity to enter information about a new student and that data is then saved in the database.

                        break;
                    case "7":
                        // Add new staff (to be solved through the Entity framework)
                        // The user gets the opportunity to enter information about a new employee and that data is then saved in the database.

                        break;
                    default:
                        Console.WriteLine("Invalid choice");
                        break;
                }
            }
        }
    }
}
// Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False
// Scaffold-DbContext "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -ContextDir Data -Context SchoolContext