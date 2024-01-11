SET check_function_bodies = false;
CREATE TABLE public.accounts (
    id integer NOT NULL,
    account_number text,
    balance real,
    type text
);
CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name text,
    last_name text,
    email text,
    phone_number text,
    address text,
    account_id integer
);
CREATE TABLE public.transactions (
    id integer NOT NULL,
    account_id integer,
    amount real,
    type text,
    date text
);
ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.accounts(id);
ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.accounts(id);
