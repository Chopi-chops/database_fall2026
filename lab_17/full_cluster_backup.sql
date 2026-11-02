--
-- PostgreSQL database cluster dump
--

\restrict 3Ebc8CO3CZblaabgbxmhsIfxgoLWpg5Zbvyr7ggeNh8yfcpcyeU9CjkhovSs2EU

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:w5xNLnoku0lZfGd1OvrGqA==$TwuWbewI19kX9hcyerHVkI2eaIbgY5PvisPcnCew8PE=:0IQvGKAcql0V7Z18L54EoIB70V8ekn5yY7NxA0pUOA4=';

--
-- User Configurations
--








\unrestrict 3Ebc8CO3CZblaabgbxmhsIfxgoLWpg5Zbvyr7ggeNh8yfcpcyeU9CjkhovSs2EU

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict d9ktkC7hRitqIqgnJFgrVNeDwVBMnywiMWw5Xl2DZ6sPJFkFQgESbzbshzuRsvt

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict d9ktkC7hRitqIqgnJFgrVNeDwVBMnywiMWw5Xl2DZ6sPJFkFQgESbzbshzuRsvt

--
-- Database "books" dump
--

