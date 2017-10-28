CREATE TABLE TESTE.DEPARTAMENTO (ID INT(19) AUTO_INCREMENT PRIMARY KEY, NOME VARCHAR(50));
CREATE TABLE TESTE.DEPARTAMENTO2 (ID INT AUTO_INCREMENT, NOME VARCHAR(50), PRIMARY KEY (ID));
CREATE TABLE TESTE.ALUNO (ID INT NOT NULL AUTO_INCREMENT,NOME VARCHAR(45) NOT NULL, DT_NASCIMENTO DATE NOT NULL,PRIMARY KEY (ID));
CREATE TABLE TESTE.ALUNO2 (NOME VARCHAR(45) NOT NULL, DT_NASCIMENTO DATE NOT NULL, NM_DPTO VARCHAR(50),PRIMARY KEY (NOME));

/*CREATE TABLE TESTE.DEPARTAMENTO (ID INT(19) PRIMARY KEY, NOME VARCHAR(50));*/

ALTER TABLE TESTE.DEPARTAMENTO MODIFY ID INT(10) UNSIGNED AUTO_INCREMENT;

INSERT INTO teste.DEPARTAMENTO(NOME) VALUES ('DAELN');
INSERT INTO teste.DEPARTAMENTO(NOME) VALUES ('DAINF');
INSERT INTO teste.DEPARTAMENTO(NOME) VALUES ('DAMEC');
INSERT INTO teste.DEPARTAMENTO(NOME) VALUES ('DAELT');

INSERT INTO TESTE.ALUNO(NOME,DT_NASCIMENTO) VALUES ('Leonardo',DATE('1990-11-05'));
INSERT INTO TESTE.ALUNO(NOME,DT_NASCIMENTO) VALUES ('Karina',DATE('1993-05-17'));

INSERT INTO TESTE.ALUNO2(NOME,DT_NASCIMENTO,NM_DPTO) VALUES ('Leonardo',DATE('1990-11-05'),'DAELN');
INSERT INTO TESTE.ALUNO2(NOME,DT_NASCIMENTO,NM_DPTO) VALUES ('Karina',DATE('1993-05-17'),'DAMEC');

UPDATE TESTE.ALUNO SET NOME = 'Teste';
UPDATE TESTE.ALUNO SET DT_NASCIMENTO = DATE('1992-05-17') WHERE NOME = 'Karina';

DELETE FROM TESTE.ALUNO;

DELETE FROM TESTE.DEPARTAMENTO WHERE NOME = 'DAMEC';


DROP TABLE TESTE.DEPARTAMENTO;


SELECT * FROM TESTE.ALUNO2;
SELECT * FROM TESTE.DEPARTAMENTO;

SELECT * FROM TESTE.ALUNO2 AL, TESTE.DEPARTAMENTO;

SELECT * FROM TESTE.ALUNO2 AL
JOIN TESTE.DEPARTAMENTO DP;


