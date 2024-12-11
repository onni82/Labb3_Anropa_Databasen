namespace Labb3_Anropa_Databasen
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            // Skapa en enkel navigation i programmet som gör att användaren kan välja mellan följande funktioner.
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
                // Hämta personal (kan lösas med ADO.NET och SQL, annars EntityFramework)
                // Användaren får välja om denna vill se alla anställda, eller bara inom en av kategorierna så som ex lärare


                // Hämta alla elever (ska lösas med EntityFramework)
                // Användaren får välja om de vill se eleverna sorterade på för- eller efternamn och om det ska vara stigande eller fallande sortering.

                // Hämta alla elever i en viss klass (ska lösas med EntityFramework)
                // Användaren ska först få se en lista med alla klasser som finns, sedan får användaren välja en av klasserna och då skrivs alla elever i den klassen ut.

                // Hämta alla betyg som satts den senaste månaden (kan lösas med ADO.NET och SQL, annars EntityFramework)
                // Här får användaren direkt en lista med alla betyg som satts senaste månaden där elevens namn, kursens namn och betyget framgår.

                // Hämta en lista med alla kurser och det snittbetyg som eleverna fått på den kursen samt det högsta och lägsta betyget som någon fått i kursen (kan lösas med ADO.NET och SQL, annars Entity framework)
                // Här får användaren direkt upp en lista med alla kurser i databasen, snittbetyget samt det högsta och lägsta betyget för varje kurs.

                // Lägga till nya elever (kan lösas med ADO.NET och SQL, annars EntityFramework)
                // Användaren får möjlighet att mata in uppgifter om en ny elev och den datan sparas då ner i databasen.

                // Lägga till ny personal (ska lösas genom Entity framework)
                // Användaren får möjlighet att mata in uppgifter om en ny anställd och den data sparas då ner i databasen.
            }
        }
    }
}
// Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False
// Scaffold-DbContext "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=School;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -ContextDir Data -Context SchoolContext