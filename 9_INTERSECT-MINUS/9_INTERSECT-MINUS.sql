-- INTERSECT & MINUS

SELECT * FROM DEPT1
INTERSECT
SELECT * FROM DEPT2;

SELECT * FROM DEPT2
INTERSECT
SELECT * FROM DEPT1;

--KESISIM KUMESI
-- DEPT1 n DEPT2
-- KOLON SAYILARI AYNI OLMALI

SELECT * FROM DEPT1
MINUS
SELECT * FROM DEPT2;

-- TABLOLAR ARASI FARKLARI VERIR
-- DEPT1 / DEPT2