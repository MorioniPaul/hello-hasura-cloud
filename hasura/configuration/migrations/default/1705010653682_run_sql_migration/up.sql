-- We will create a separate user to grant permissions on hasura-specific
-- schemas and information_schema and pg_catalog.
-- These permissions/grants are required for Hasura to work properly.

-- create a separate user for to manage metadata database
CREATE USER hasurauser WITH PASSWORD 'hasurauser';

-- -- create the schemas required by the hasura system
-- -- NOTE: If you are starting from scratch: drop the below schemas first, if they exist.
-- CREATE SCHEMA IF NOT EXISTS hdb_catalog;

-- -- make the user an owner of the schema
-- ALTER SCHEMA hdb_catalog OWNER TO hasurauser;

-- -- See section below on pgcrypto in PG search path
-- CREATE EXTENSION IF NOT EXISTS pgcrypto;


-- GRANT SELECT ON ALL TABLES IN SCHEMA information_schema TO hasurauser;
-- GRANT SELECT ON ALL TABLES IN SCHEMA pg_catalog TO hasurauser;


-- GRANT USAGE ON SCHEMA public TO hasurauser;
-- GRANT ALL ON ALL TABLES IN SCHEMA public TO hasurauser;
-- GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO hasurauser;
-- GRANT ALL ON ALL FUNCTIONS IN SCHEMA public TO hasurauser;


-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES;
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES;
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS;
