--
-- PostgreSQL database dump
--

\restrict DU9eKKclnDwfNgCqOtVhkd5tmeWEH2dzN3mn6Nfmi9dpAXdS9OczjfWlhqkg0H4

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_id integer NOT NULL,
    dept_name character varying(100) NOT NULL,
    manager_name character varying(100),
    budget numeric(10,2)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: departments_dept_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_dept_id_seq OWNER TO postgres;

--
-- Name: departments_dept_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_dept_id_seq OWNED BY public.departments.dept_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    "position" character varying(100),
    salary numeric(10,2),
    hire_date date DEFAULT CURRENT_DATE,
    dept_id integer NOT NULL,
    email character varying(50),
    age integer
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_emp_id_seq OWNER TO postgres;

--
-- Name: employees_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_emp_id_seq OWNED BY public.employees.emp_id;


--
-- Name: departments dept_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN dept_id SET DEFAULT nextval('public.departments_dept_id_seq'::regclass);


--
-- Name: employees emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN emp_id SET DEFAULT nextval('public.employees_emp_id_seq'::regclass);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (dept_id, dept_name, manager_name, budget) FROM stdin;
1	SFW	Alice Wonder	500000.00
2	HR	Bob Dob	300000.00
3	System Administration	Lalisa Manoban	400000.00
4	Development	Rose Pack	600000.00
5	DevOps	Jennie Solo	700000.00
6	Cybersecurity	Jichu Rabbit	800000.00
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (emp_id, first_name, last_name, "position", salary, hire_date, dept_id, email, age) FROM stdin;
3	Mike	Tayson	DevOps	85050.00	2026-10-29	1	\N	18
5	Chop	Zero	Architect	50000.00	2025-09-04	3	sc4@gmail.com	21
6	Appa	Air	Developer	70000.00	2025-02-05	3	aa5@gmail.com	22
7	Aang	Avatar	Director	80000.00	2025-06-21	4	aa4@gmail.com	22
8	Toph	Beiphong	Lead	75000.00	2025-09-25	5	tb@gmail.com	23
9	Katara	Onelove	Engineer	75000.00	2025-09-25	6	ko@gmail.com	25
4	Sara	Phan	Marketing Specialist	39050.00	2026-10-29	2	\N	20
2	Muller	Doe	Senior	92000.00	2026-10-29	1	\N	18
1	John	Smith	Senior Developer	99000.00	2026-10-29	1	john.updated@gmail.com	18
\.


--
-- Name: departments_dept_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_dept_id_seq', 6, true);


--
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_emp_id_seq', 9, true);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


--
-- Name: employees employees_dept_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES public.departments(dept_id) ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

\unrestrict DU9eKKclnDwfNgCqOtVhkd5tmeWEH2dzN3mn6Nfmi9dpAXdS9OczjfWlhqkg0H4

