CREATE TABLE T_MAINTENANCE_MTN(
	maint_id INTEGER,
	maint_jour VARCHAR(3) CHECK(maint_jour IS NOT NULL),
	maint_machine VARCHAR(20),
	maint_num INTEGER,
	maint_vit INTEGER,
	maint_temp INTEGER,
	maint_heur TIME,
	maint_event VARCHAR,
	CONSTRAINT Pkey PRIMARY KEY(maint_id),
	CONSTRAINT UK_maint_num UNIQUE(maint_num),
)