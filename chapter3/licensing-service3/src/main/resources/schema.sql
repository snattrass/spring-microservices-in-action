DROP TABLE IF EXISTS licenses;

CREATE TABLE licenses (
  license_id        VARCHAR(100) PRIMARY KEY NOT NULL,
  organization_id   TEXT NOT NULL,
  license_type      TEXT NOT NULL,
  product_name      TEXT NOT NULL,
  license_max       INT   NOT NULL,
  license_allocated INT,
  comment           VARCHAR(100));


INSERT INTO licenses (license_id,  organization_id, license_type, product_name, license_max, license_allocated)
VALUES ('f3831f8c-c338-4ebe-a82a-e2fc1d1ff78a', 'avaloq', 'user','customer-crm-co', 100,5);
INSERT INTO licenses (license_id,  organization_id, license_type, product_name, license_max, license_allocated)
VALUES ('t9876f8c-c338-4abc-zf6a-ttt1', 'avaloq', 'user','suitability-plus', 200,189);
INSERT INTO licenses (license_id,  organization_id, license_type, product_name, license_max, license_allocated)
VALUES ('38777179-7094-4200-9d61-edb101c6ea84', 'microsoft', 'user','HR-PowerSuite', 100,4);
INSERT INTO licenses (license_id,  organization_id, license_type, product_name, license_max, license_allocated)
VALUES ('08dbe05-606e-4dad-9d33-90ef10e334f9', 'microsoft', 'core-prod','WildCat Application Gateway', 16,16);