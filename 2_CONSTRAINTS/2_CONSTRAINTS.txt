ALTER TABLE REGIONS ADD (
    CONSTRAINT reg_id_pk PRIMARY KEY (region_id)
);

ALTER TABLE COUNTRIES ADD (
    CONSTRAINT country_reg_fk FOREIGN KEY (region_id) REFERENCES REGIONS (region_id)
);

ALTER TABLE COUNTRIES ADD (
    CONSTRAINT country_id_pk PRIMARY KEY (country_id)
);

ALTER TABLE LOCATIONS ADD (
    CONSTRAINT loc_id_pk PRIMARY KEY (location_id),
    CONSTRAINT loc_c_id_fk FOREIGN KEY (country_id) REFERENCES COUNTRIES (country_id)
);

ALTER TABLE DEPARTMENTS ADD (
    CONSTRAINT dept_id_pk PRIMARY KEY (department_id),
    CONSTRAINT dept_loc_fk FOREIGN KEY (location_id) REFERENCES LOCATIONS (location_id)
);

ALTER TABLE JOBS ADD (
    CONSTRAINT job_id_pk PRIMARY KEY (JOB_ID)
);

ALTER TABLE EMPLOYEES ADD (
    CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id),
    CONSTRAINT emp_dept_fk FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS (department_id),
    CONSTRAINT emp_job_fk FOREIGN KEY (job_id) REFERENCES JOBS (job_id),
    CONSTRAINT emp_manager_fk FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEES (employee_id)
);

ALTER TABLE DEPARTMENTS ADD (
    CONSTRAINT dept_manager_id FOREIGN KEY (manager_id) REFERENCES EMPLOYEES (employee_id)
);

ALTER TABLE JOB_HISTORY ADD (
    CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date),
    CONSTRAINT jhist_job_id_fk FOREIGN KEY (JOB_ID) REFERENCES JOBS (job_id),
    CONSTRAINT jhist_emp_id_fk FOREIGN KEY (employee_id) REFERENCES EMPLOYEES (employee_id),
    CONSTRAINT jhist_dept_fk FOREIGN KEY (department_id) REFERENCES DEPARTMENTS (department_id)
);

----------

ALTER TABLE DEPARTMENTS DROP CONSTRAINT dept_mgr_id;

DROP TABLE REGIONS CASCADE CONSTRAINTS;

DROP TABLE COUNTRIES CASCADE CONSTRAINTS;
