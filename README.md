# Introduction and Explanation
This is an internal practice task i got on topic of Reporting in Microsoft Dynamics 365 Business Central. Bellow are the tasks requirements as recieved on my mentorship task on Jira from my mentor.
<br><br>

## Report 1
Opis:
1. Napraviti report koji ce izlistati sve kupce u tabelarnom obliku
2. Report treba da prikaze sledece kolone:
    - No.
    - Name
    - Balance
    - Balance LCY
    - Balance Percentage [Decimal] – Ovo je polje koje ce se izracunati u kodu. Predstavlja udeo polja “Balance LCY” u polju Balance.
    - Credit Amount
    - Profit LCY
    - Indicator [Boolean] – Polje izracunati u kodu. Vrednost je TRUE ako je polje „Profit LCY“ vece ili jednako polju „Sales LCY“
    
    <br>

3. Na kraju prikazat Total za sva decimalna polja (osim Balance Percentage)

## Report 2
Opis:
1. Napraviti report koji ce izlistati sve stavke artikla (Item Ledger Entry), grupisane prema artiklima
2. Report treba da prikaze sledece kolone iz tabele Item:
    - No.
    - Description
    - Base Unit of Measure
    - Unit Price
    
    <br>
    
3. Report treba da prikaze sledece kolone iz tabele „Item Ledger Entry“:
    - Entry No.
    - Description
    - Cost Amount (Actual)
    - Puchase Amount (Actual)

    <br>

4. Prikazati Totale na nivou artikla (ovo izracunati u kodu)
5. Prikazati Total za sve artikle
6. Na request page-u ostaviti opciju da se prikaze ili sakrije Total za sve artikle