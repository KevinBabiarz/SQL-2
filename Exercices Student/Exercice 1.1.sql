CREATE TABLE T_office(
	office_id INTEGER,
	office_adress VARCHAR(30),
	CONSTRAINT PK_office PRIMARY KEY (office_id)
);

CREATE TABLE T_course(
	crs_code CHAR(8) NOT NULL PRIMARY KEY,
	crs_name VARCHAR(30),
	CONSTRAINT UK_crs UNIQUE (crs_name)
);

CREATE TABLE T_professor(
	prf_id INTEGER NOT NULL,
	prf_name VARCHAR(30),
	prf_course INTEGER,
	CONSTRAINT PK_profId PRIMARY KEY (prf_id),
	office_id INTEGER CONSTRAINT FK_Toffice_Tprofessor FOREIGN KEY REFERENCES T_office (office_id) ON DELETE SET NULL,
	CONSTRAINT UK_prf_name UNIQUE (prf_name)
);
