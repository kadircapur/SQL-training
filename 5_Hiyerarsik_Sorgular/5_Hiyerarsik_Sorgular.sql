-- Hierarchical Queries
--1) CONNECT BY PRIOR ornegi (calisanlar ile yoneticiler arasindaki hiyerarsi iliskisi)
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID
FROM EMPLOYEES --(SORGUMUZ)
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID; (PRIOR, primary key ne taraftaysa oraya yazilir)

--2) LEVEL Ornegi (Calisanlar ile Yoneticiler arasindaki hiyerarsi iliskisi - seviye No)
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID, LEVEL
FROM EMPLOYEES
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID;

--3) SRART WITH Ornegi (Hiyerarsiyi belirli bir noktadan baslatabiliriz.
    --Ayrica SIBLINGS anahtar kelimesini kullanarak hiyerarsik siralama yapabiliriz
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID, LEVEL
FROM EMPLOYEES 
START WITH EMPLOYEE_ID = 100
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID;
ORDER SIBLINGS BY LAST_NAME; -- SIBLINGS: Hiyerarsik seviyeyi koruyarak siralar

--4) CONNECT BY ROOT -SYS_CONNECT BY PATH Ornegi
    --Her calisanin hiyerarside bagli oldugu ust birim ve seviyesi
    -- Level1 --> Level2 --> Level3
    -- Dede --> Baba --> Torun
    
SELECT LAST_NAME CALISAN,CONNECT_BY_ROOT LAST_NAME YONETICI, --Bagli oldugu kisi de gozukur (level1, dede)
LEVEL -1 SEVIYE, SYS_CONNECT_BY_PATH (LAST_NAME,'-->') PATH --Normal siralama 1 ile baslar LEVEL -1 dersek 0 ile baslar
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 110 AND LEVEL > 1
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID;