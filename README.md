# Labb 3 – Anropa databasen (SQL & ORM)
## Om uppgiften

Denna labb bygger vidare på labb 2 och du ska alltså jobba vidare med samma databas som du skapade där.

**Du får, om du vill, ändra i databasens struktur och design när du gör denna uppgift!**

## Vad du ska göra

- [ ]  Fyll på din databas från labb 2 med lite mer exempeldata i alla tabeller.
- [ ]  Skapa ett nytt console-program i C#
- [ ]  Skapa en enkel navigation i programmet som gör att användaren kan välja mellan följande funktioner.
    - [ ]  Hämta personal (kan lösas med [ADO.NET](http://ADO.NET) och SQL, annars Entity framework)
        
        Användaren får välja om denna vill se alla anställda, eller bara inom en av kategorierna så som ex lärare.
        
    - [ ]  Hämta alla elever (ska lösas med Entity framework)
        
        Användaren får välja om de vill se eleverna sorterade på för- eller efternamn och om det ska vara stigande eller fallande sortering.
        
    - [ ]  Hämta alla elever i en viss klass (ska lösas med Entity framework)
        
        Användaren ska först få se en lista med alla klasser som finns, sedan får användaren välja en av klasserna och då skrivs alla elever i den klassen ut.
        
        🏆 Extra utmaning (Frivillig): låt användaren även få välja sortering på eleverna som i punkten ovan.
        
    - [ ]  Hämta alla betyg som satts den senaste månaden (kan lösas med [ADO.NET](http://ADO.NET) och SQL, annars Entity framework)
        
        Här får användaren direkt en lista med alla betyg som satts senaste månaden där elevens namn, kursens namn och betyget framgår.
        
    - [ ]  Hämta en lista med alla kurser och det snittbetyg som eleverna fått på den kursen samt det högsta och lägsta betyget som någon fått i kursen (kan lösas med [ADO.NET](http://ADO.NET) och SQL, annars Entity framework)
        
        Här får användaren direkt upp en lista med alla kurser i databasen, snittbetyget samt det högsta och lägsta betyget för varje kurs.
        
        💡 Tips: Det kan vara svårt att göra detta med betyg i form av bokstäver så du kan välja att lagra betygen som siffror istället.
        
    - [ ]  Lägga till nya elever (kan lösas med [ADO.NET](http://ADO.NET) och SQL, annars Entity framework)
        
        Användaren får möjlighet att mata in uppgifter om en ny elev och den datan sparas då ner i databasen.
        
    - [ ]  Lägga till ny personal (ska lösas genom Entity framework)
        
        Användaren får möjlighet att mata in uppgifter om en ny anställd och den data sparas då ner i databasen.
        

<aside>
👉 **Extrautmaningar**

- Kontrollera att personnumren är giltiga genom SQL.
- Bygg en view för att hämta betyg som satts den senaste månaden.
- Bygg ytterligare en funktion för användaren där det går att få fram snittbetyget baserat dels på kön och dels på åldersgrupp/årskull sett till snittet för alla kurser de läst.
</aside>

# Din inlämning

- Skicka in uppgiften i Canvas
- Skicka in en textfil som innehåller länk till Github + en SQL-fil med din exporterade databas