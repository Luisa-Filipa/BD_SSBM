ALTER TABLE LINEORDER ADD CONSTRAINT pk_lineorder_orderkey_linenumber PRIMARY KEY(LO_ORDERKEY, LO_LINENUMBER);
ALTER TABLE PART ADD CONSTRAINT pk_part_partkey PRIMARY KEY(P_PARTKEY);
ALTER TABLE SUPPLIER ADD CONSTRAINT pk_supplier_suppkey PRIMARY KEY(S_SUPPKEY); 
ALTER TABLE CUSTOMER ADD CONSTRAINT pk_customer_custkey PRIMARY KEY(C_CUSTKEY);
ALTER TABLE DWDATE ADD CONSTRAINT pk_date_datekey PRIMARY KEY(D_DATEKey);


ALTER TABLE LINEORDER ADD CONSTRAINT fk_lineorder_custkey_customer_custkey FOREIGN KEY(LO_custkey) REFERENCES customer(C_custkey); -- numeric identifier foreign key reference to C_CUSTKEY
ALTER TABLE LINEORDER ADD CONSTRAINT fk_lineorder_partkey_part_partkey FOREIGN KEY(LO_partkey) REFERENCES part(P_partkey); --identifier foreign key reference to P_PARTKEY
ALTER TABLE LINEORDER ADD CONSTRAINT fk_lineorder_suppkey_supplier_suppkey FOREIGN KEY(LO_suppkey) REFERENCES supplier(S_suppkey); --numeric identifier foreign key reference to S_SUPPKEY
ALTER TABLE LINEORDER ADD CONSTRAINT fk_lineorder_orderdate_date_datekey FOREIGN KEY(LO_orderdate) REFERENCES DWDATE(D_datekey); --identifier foreign key reference to D_DATEKEY
ALTER TABLE LINEORDER ADD CONSTRAINT fk_lineorder_commitdate_date_datekey FOREIGN KEY(LO_commitdate) REFERENCES DWDATE(D_datekey); --Foreign Key reference to D_DATEKEY

