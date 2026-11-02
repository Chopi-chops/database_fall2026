--
-- PostgreSQL database dump
--

\restrict a4pwr6cQZxFFzo5esRrQAplTy6zL7kCgwZ3SUfYeZJS8qMPAqjZKTyfkA8YiiDT

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
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors (author_id, first_name, last_name, birth_date) FROM stdin;
1	Duma	Alexandr	1802-07-24
2	Jack	London	1876-01-12
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (book_id, title, isbn, publication_year, available_copies) FROM stdin;
1	Martin Eden	9780486817125	1909	5
2	The Count of Monte Cristo	9785041135249	1846	6
\.


--
-- Data for Name: book_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_authors (book_id, author_id) FROM stdin;
1	1
2	2
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_code, course_name, credits, instructor) FROM stdin;
1	COM-122	Intro to Programming	6	Toksaitov
2	ART-111	Komuz	3	Satylganov
3	AMI-142	ODE	6	Imanaliev
\.


--
-- Data for Name: courses_2nf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_2nf (course_id, course_name, credits) FROM stdin;
424	Database	6
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, customer_name, email) FROM stdin;
1000	VIP Customer	vip@example.com
\.


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
-- Data for Name: departments_3nf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments_3nf (department_id, department_name, department_head) FROM stdin;
424	Database	Apple Jack
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
-- Data for Name: employees_contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees_contacts (first_name, last_name, email) FROM stdin;
Mike	Tayson	\N
Chop	Zero	sc4@gmail.com
Appa	Air	aa5@gmail.com
Aang	Avatar	aa4@gmail.com
Toph	Beiphong	tb@gmail.com
Katara	Onelove	ko@gmail.com
Sara	Phan	\N
Muller	Doe	\N
John	Smith	john.updated@gmail.com
\.


--
-- Data for Name: employees_copy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees_copy (emp_id, first_name, last_name, "position", salary, hire_date, dept_id, email, age) FROM stdin;
3	Mike	Tayson	DevOps	85050.00	2026-10-29	1	\N	18
5	Chop	Zero	Architect	50000.00	2025-09-04	3	sc4@gmail.com	21
6	Appa	Air	Developer	70000.00	2025-02-05	3	aa5@gmail.com	22
7	Aang	Avatar	Director	80000.00	2025-06-21	4	aa4@gmail.com	22
8	Toph	Beiphong	Lead	75000.00	2025-09-25	5	tb@gmail.com	23
9	Katara	Onelove	Engineer	75000.00	2025-09-25	6	ko@gmail.com	25
4	Sara	Phan	Marketing Specialist	39050.00	2026-10-29	2	\N	20
2	Muller	Doe	Senior	92000.00	2026-10-29	1	\N	18
1	John	Smith	Senior Developer	99000.00	2026-10-29	1	john.updated@gmail.com	18
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
-- Data for Name: student_1nf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_1nf (student_id, name) FROM stdin;
1	Apple Jack
\.


--
-- Data for Name: enrollments_2nf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments_2nf (student_id, course_id, grade) FROM stdin;
1	424	A 
\.


--
-- Data for Name: enrollments_bad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments_bad (student_id, course_id, course_name, grade) FROM stdin;
1	424	Databases	A 
2	424	Databases	B 
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (member_id, first_name, last_name, email, phone, membership_date) FROM stdin;
1	Rainbow	Dash	rd@cool.kg	111111	2026-10-30
2	Twilight	Sparkle	ts@cool.kg	222222	2026-10-30
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loans (loan_id, member_id, book_id, loan_date, due_date, return_date, late_fee) FROM stdin;
1	1	1	2026-10-29	2026-11-07	2026-11-05	0.00
2	2	2	2026-10-30	2026-11-08	2026-11-06	0.00
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_name, order_date) FROM stdin;
\.


--
-- Data for Name: student_bad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_bad (student_id, name, phone_numbers) FROM stdin;
1	Apple Jack	123456, 234567
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, email, enrollment_date) FROM stdin;
1	Amina	Mashalieva	am@auca.kg	2026-10-29
2	Bob	Nedoros	bn@auca.kg	2026-10-29
3	Clara	Pogovori	cp@auca.kg	2026-10-29
\.


--
-- Data for Name: student_enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_enrollments (enrollment_id, student_id, course_id, enrollment_date, grade) FROM stdin;
1	1	1	2026-10-29	A 
2	2	1	2026-10-29	A 
3	3	1	2026-10-29	B 
4	1	2	2026-10-29	A+
5	2	2	2026-10-29	B-
6	3	3	2026-10-29	A-
7	1	3	2026-10-29	A 
8	2	3	2026-10-29	A 
9	3	2	2026-10-29	B 
\.


--
-- Data for Name: student_phones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_phones (student_id, phone_number, phone_type) FROM stdin;
1	123456	Home
1	234567	Work
\.


--
-- Data for Name: students_3nf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_3nf (student_id, name, department_id) FROM stdin;
1	Rarity	424
\.


--
-- Data for Name: students_bad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_bad (student_id, name, department_id, department_name) FROM stdin;
1	Apple Jack	4	ECO
\.


--
-- Data for Name: students_lab11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_lab11 (student_id, first_name, last_name, birth_date) FROM stdin;
2	Rainbow	Dash	2003-10-30
\.


--
-- Data for Name: students_lab11_copy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_lab11_copy (student_id, first_name, last_name, birth_date) FROM stdin;
3	Flutter	Sul	2003-07-05
2	Rainbow	Sul	2003-10-30
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (transaction_id, amount, transaction_date) FROM stdin;
\.


--
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 2, true);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_book_id_seq', 2, true);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 3, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, false);


--
-- Name: departments_dept_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_dept_id_seq', 6, true);


--
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_emp_id_seq', 9, true);


--
-- Name: loans_loan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loans_loan_id_seq', 2, true);


--
-- Name: members_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.members_member_id_seq', 2, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- Name: student_enrollments_enrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_enrollments_enrollment_id_seq', 9, true);


--
-- Name: students_lab11_copy_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_lab11_copy_student_id_seq', 1, false);


--
-- Name: students_lab11_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_lab11_student_id_seq', 3, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 3, true);


--
-- Name: transactions_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_transaction_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict a4pwr6cQZxFFzo5esRrQAplTy6zL7kCgwZ3SUfYeZJS8qMPAqjZKTyfkA8YiiDT

