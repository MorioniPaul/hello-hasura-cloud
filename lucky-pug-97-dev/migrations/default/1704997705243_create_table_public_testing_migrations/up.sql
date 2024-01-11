CREATE TABLE "public"."testing_migrations" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "migration" integer NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
