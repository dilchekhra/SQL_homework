--data bu odamlar, obyektlar, hodisalar haqidagi hom (qayta ishlanmagan)  faktlar, raqamlar, yoki belgilar bolib, ular alohida holatda hech qanday ma'no anglatmaydi
-- database yani ma'kumotlar ombori bu ma'lumotlarga oson kirish, ularni boshqarish va yangilash uchun saqlangan va tashkil etilgan malumotlar to'plamidir
--relational database esa o'zaro bog'liqlik mavjud bo'lgan va jadval ko'rinishida saqlanadigan ma'lumotlar to'plamidir
-- table esa jadval deb tarjima qilinadi va u ustun va qatorlardan tashkil topgan bo'ladi. unda ma'lum mavzuga aloqador strukturalanganmalumotlar saqlanadi

--serverning 5 ta asosiy xususiyatlari
--katta hajmdagi strukturalangan va strukturalanmagan malumotlarni boshqarishda yordam beradi
--BI sohasidagi asosiy 'tool' hisoblanadi
--malumotlarni xavfsiz  va ishonchli saqlash mumkin
--ACID (atomicity, consistency,isolation, durability) tamoyillariga asoslanlangan transaksiyalarni qollab-quvvatlaydi, bu esa ma'lumotlar yaxlitligini saqlab qolishga yordam beradi
--malumotlarni zaxiralash (backup) va tiklash (restore) imkonini beradi

-- windows authentication, sql server authentication

 create database schooldb
use schooldb
create table Students (Student_ID int, Name varchar(50), Age int) values

--SQL  bu dasturlash tili, sql server database ni ozida saqlaydi, ssms esa foydalanuvchi va database o'rtasidagi interfeys.

  /*SQL komandalarini 5 turga bo''lish mumkin: DQL, DML, DDL, DCL, TCL
  DQL data query language. malumotni bazadan olish vazufasini bajaradi. masalan select.
  DML  data manipulation language. malumot bn ishlashda qo''llaniladi. masalan insert, update, delete
  DDL data definition language. jadval,sxema, indeks kabi tuzilmalarni yaratishda foydalaniladi. masalan create, alter, drop, truncate
  DCL data control language foydalanuvchilarga huquqlar berish yoki olib tashlash fazifasini bajaradi. masalan grant, revoke
  TCL transaction control language, tranzaksiyalarni tasdiqlash yoki bekor qilishda qo''llaniladi. masalan, commit, rollback, savepoint
  */
  select * from students
  insert into Students (student_ID, Name, Age ) values
  (1,'Dilchehra', 23)
  ,(2,'Shaxbozbek', 28)
  ,(3,'Diyor', 20)
