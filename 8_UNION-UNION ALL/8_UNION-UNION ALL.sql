SELECT * FROM DEPARTMENTS ORDER BY DEPARTMENT_ID;

CREATE TABLE DEPT1
AS SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID <= 160;

CREATE TABLE DEPT2
AS SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID >= 100;

SELECT * FROM DEPT1 ORDER BY 1;

SELECT * FROM DEPT1
UNION
SELECT * FROM DEPT2;
ORDER BY 1; --SIRALAMAYA KOYAR
--KESISIM KUMESINI OLUSTURUR, TEKRAR EDEN KAYITLARI 1 KEZ YAZAR

SELECT * FROM DEPT1
UNION ALL
SELECT * FROM DEPT2;
ORDER BY 1;
--KESISIM KUMESINI OLUSTURUR, TEKRAR EDEN KAYITLARIN HEPSINI YAZAR

