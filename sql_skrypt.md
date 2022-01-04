
#skrypt do stworzenia bazy

Create table Firma(
idFirmy int identity(1,1) primary key,
nazwa varchar(50) not null,
nip varchar(50) not null,
miasto varchar(50) not null,
ulica varchar(50) not null,
kod_pocztowy varchar(30) not null
)



Create table Typjachtu(
idTypJachtu int identity(1,1) primary key,
Rodzaj varchar(50) not null,
 )


 Create table Klienci(
idKlienta int identity(1,1) primary key,
idFirmy int foreign key references Firma(idFirmy),
imie varchar(50) not null,
nazwisko varchar(50) not null,
telefon int not null,
email varchar(30) not null,
miasto varchar(30) not null,
ulica varchar(50) not null,
kod_pocztowy int not null
)


Create table Jachty(
idJachtu int identity(1,1) primary key,
idTypjachtu int foreign key references Typjachtu(idtypJachtu) not null,
Nazwa varchar(50) not null,
Rok_produkcji varchar(10) not null,
Max_liczba_osob varchar(10) not null,
Silnik varchar(10) not null,
Cena_za_dzien int not null,
Opis varchar(800) not null
)


Create table Zamowienia(
idZamowienia int identity(1,1) primary key,
idJachtu int foreign key references Jachty(idJachtu) not null,
idKlienta int foreign key references Klienci(idKlienta) not null,
od_data date not null,
do_data date not null,
)



INSERT INTO Typjachtu(Rodzaj)
VALUES
    ('żaglowy'),
    ('motorowy')






INSERT INTO Jachty(idTypjachtu,Nazwa,Rok_produkcji,Max_liczba_osob,Silnik,Cena_za_dzien,Opis)
VALUES
    ('1','Maxus 34','2020','8','20 KM','500','Maxus 34 zaprojektowany z myślą o jak najlepszej żegludze z przyjaciółmi i rodziną. Przestrzenne wnętrze sprawia ,że każda minuta spędzona na jachcie będzie kwintesencją przyjemności. Jacht ten wykonany jest z zastosowaniem technologii i materiałów wykończeniowych znanych z modelu Northman 1200.'),
    ('2','Northman 1200','2019','8','do 80 KM','1000','Northman 1200 został zaprojektowany jako jacht gwarantujący ponadprzeciętną wygodę użytkowania, co zaowocowało stworzeniem niebywale komfortowej przestrzeni mieszkalnej oraz wygodnych miejsc zewnętrznego wypoczynku. Jest to flagowy jacht znanej i cenionej na całym świecie stoczni Northman.'),
    ('1','Maxus 28','2019','7','6-10 KM','300','Jacht stanowi połączenie doskonałych właściwości żeglugowych z komfortem mieszkalnym. Zastosowano w nim przesunięcie środka bocznego oporu w tył (przez pochylenie pilersu i cofnięcie miecza). Dzięki tym rozwiązaniom znacznie zyskał on na właściwościach nautycznych. Doskonałe osiągi w żegludze potwierdzają również liczne sukcesy regatowe oraz pozytywne opinie użytkowników. Jednostkę wyróżnia również duża mesa, funkcjonalny kambuz i wygodna kabina WC.'),
    ('2','Nexus Revo 870','2017','6','15-25 KM','700','Nexus Revo 870 jest jednostką mającą na celu zaspokojenie oczekiwań najbardziej wymagających armatorów w sektorze jachtów wypornościowych i półślizgowych.')

	
