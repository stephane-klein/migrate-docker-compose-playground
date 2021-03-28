CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;

DROP TABLE IF EXISTS public.contacts CASCADE;

CREATE TABLE public.contacts (
    id             UUID PRIMARY KEY DEFAULT uuid_generate_v4() NOT NULL,
    email          VARCHAR(255) NOT NULL,
    firstname      VARCHAR(255),
    lastname       VARCHAR(255)
);
