--SORGU SONUCUNU SIRALAMAK (ORDEY BY)
--1) SELECT komutunun en yalın hali nasıl yazılır
SELECT * FROM EMPLOYEES ORDER BY DEPARTMENT_ID ASC, SALARY DESC; (ASC artan sira DESC azalan sira)
--2) Bir tablodaki belirli kolonların sorgulanması
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM EMPLOYEES;
--ORDER BY FIRST_NAME, LAST_NAME;
--ORDER BY 2,3;
--3) Sorgulanan kolonların başlıklarının değiştirilmesi (Label Alanı)(Tek kelimeden oluşan başlıklar)
SELECT FIRST_NAME AS MGR, LAST_NAME ADI, EMAIL POSTA FROM EMPLOYEES;
--4) Sorgulanan kolonların başlıklarının değiştirilmesi (Label Alanı)(Birden fazla kelimeden oluşan başlıklar)
SELECT FIRST_NAME "MUDUR NO", LAST_NAME "ILK ADI", EMAIL "E POSTA" FROM EMPLOYEES;
--5) Where Conditions (Örnek: 90 nolu bölümde çalışanların listesi)
SELECT * FROM EMPLOYEES WHERE DEPARTENT_ID = 90
ORDER BY SALARY;
--6) Where Conditions (Örnek: 100 nolu bölümde çalışanların listesi)
SELECT * FROM EMPLOYEES WHERE DEPARTENT_ID = 100;
--7) Where Conditions (Örnek:hem 90 hem 100 nolu bölümde çalışanların listesi)
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID IN (90,100);
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 90 OR DEPARTMENT_ID = 100; (Daha hızlıdır)
--8) Soyismi M harfi ile başlayan çalışanlar
SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE 'M%';
--9) Soyisminin içinde MA geçen çalışanlar
SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE 'MA%';
--10) Soyisminin ikinci karakteri A, dördüncü karakteri E olan çalışanlar
SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE '_A_E%';
--11) Maaşı 10.000 üzerinde olup komisyon oranı boş olmayanlar
SELECT * FROM EMPLOYEES WHERE SALARY > 10000 AND COMMISION_PCT IS NOT NULL;
