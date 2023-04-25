delete from TilauksenRivit;
delete from Tilaus;
delete from Tuote;
delete from Asiakas;
delete from Tuoteryhma;
delete from Osoite;

drop table TilauksenRivit;
drop table Tilaus;
drop table Tuote;
drop table Asiakas;
drop table Tuoteryhma;
drop table Osoite;


create table Osoite (
    OsoiteID int not null primary key,
    Katuosoite varchar(50) not null,
    Postitoimipaikka varchar(25) not null,
    Postinumero varchar(10) not null,
    Maa varchar(25) not null
);

create table Tuoteryhma (
    TuoteryhmaID int not null primary key,
    Nimi varchar(20) not null,
    Kuvaus varchar(100) null,
    alv decimal(8,2) not null check (alv > 0)
);

create table Asiakas (
    AsiakasNumero int not null primary key,
    Sukunimi varchar(25) not null,
    Etunimi varchar(15) not null,
    OsoiteID int null,
    Puhelin char(15) not null,
    Sahkoposti varchar(50) null,
    foreign key (OsoiteID) references Osoite(OsoiteID)
);

create table Tilaus (
    TilausNumero int not null primary key,
    AsiakasNumero int not null,
    TilausPVM date not null,
    ToimitusPVM date null,
    TilausEhto varchar(50) not null,
    foreign key (AsiakasNumero) references Asiakas(AsiakasNumero)
);

create table Tuote (
    TuoteTunnus char(20) not null primary key,
    Nimi varchar (20) not null,
    Hinta decimal(8,2) not null check (Hinta >= 0),
    Paino decimal(8,2) null check (Paino >= 0),
    TuotteenMitat varchar(50) null,
    TuoteRyhmaID int,
    foreign key (TuoteRyhmaID) references TuoteRyhma(TuoteRyhmaID)
);

create table TilauksenRivit (
             TRID int not null primary key,
             TilausNumero int not null,
             TuoteTunnus char(20) not null,
			 Lukumaara int null,
             foreign key (TilausNumero) references Tilaus(TilausNumero),
             foreign key (TuoteTunnus) references Tuote(TuoteTunnus)
);

