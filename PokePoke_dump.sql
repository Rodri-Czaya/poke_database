--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: battle_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.battle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.battle_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: battle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.battle (
    id integer DEFAULT nextval('public.battle_id_seq'::regclass) NOT NULL,
    team_1_id integer NOT NULL,
    team_2_id integer NOT NULL,
    date date NOT NULL,
    city character varying,
    winner integer
);


ALTER TABLE public.battle OWNER TO postgres;

--
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    numero integer NOT NULL,
    nombre character varying NOT NULL,
    tipo character varying NOT NULL,
    movimiento1 character varying NOT NULL,
    movimiento2 character varying NOT NULL,
    movimiento3 character varying NOT NULL,
    movimiento4 character varying NOT NULL,
    imagen_front character varying,
    imagen_back character varying
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.team_id_seq OWNER TO postgres;

--
-- Name: team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.team (
    id integer DEFAULT nextval('public.team_id_seq'::regclass) NOT NULL,
    team_name character varying NOT NULL,
    id_trainer integer NOT NULL,
    id_pkm_1 integer NOT NULL,
    id_pkm_2 integer NOT NULL,
    id_pkm_3 integer NOT NULL
);


ALTER TABLE public.team OWNER TO postgres;

--
-- Name: trainers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trainers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trainers_id_seq OWNER TO postgres;

--
-- Name: trainers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trainers (
    id integer DEFAULT nextval('public.trainers_id_seq'::regclass) NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.trainers OWNER TO postgres;

--
-- Data for Name: battle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.battle (id, team_1_id, team_2_id, date, city, winner) FROM stdin;
1	1	2	2024-07-26	Pueblo Paleta	2
\.


--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon (numero, nombre, tipo, movimiento1, movimiento2, movimiento3, movimiento4, imagen_front, imagen_back) FROM stdin;
1	bulbasaur	grass	razor-wind	swords-dance	cut	bind	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png
2	ivysaur	grass	swords-dance	cut	bind	vine-whip	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/2.png
3	venusaur	grass	swords-dance	cut	bind	vine-whip	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/3.png
4	charmander	fire	mega-punch	fire-punch	thunder-punch	scratch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png
5	charmeleon	fire	mega-punch	fire-punch	thunder-punch	scratch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/5.png
6	charizard	fire	mega-punch	fire-punch	thunder-punch	scratch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/6.png
7	squirtle	water	mega-punch	ice-punch	mega-kick	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/7.png
8	wartortle	water	mega-punch	ice-punch	mega-kick	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/8.png
9	blastoise	water	mega-punch	ice-punch	mega-kick	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/9.png
10	caterpie	bug	tackle	string-shot	snore	bug-bite	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/10.png
11	metapod	bug	string-shot	harden	iron-defense	bug-bite	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/11.png
12	butterfree	bug	razor-wind	gust	whirlwind	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/12.png
13	weedle	bug	poison-sting	string-shot	bug-bite	electroweb	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/13.png
14	kakuna	bug	string-shot	harden	iron-defense	bug-bite	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/14.png
15	beedrill	bug	swords-dance	cut	headbutt	fury-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/15.png
16	pidgey	normal	razor-wind	gust	wing-attack	whirlwind	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/16.png
17	pidgeotto	normal	razor-wind	gust	wing-attack	whirlwind	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/17.png
18	pidgeot	normal	razor-wind	gust	wing-attack	whirlwind	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/18.png
19	rattata	normal	cut	headbutt	tackle	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/19.png
20	raticate	normal	swords-dance	cut	headbutt	tackle	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/20.png
21	spearow	normal	razor-wind	wing-attack	whirlwind	fly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/21.png
22	fearow	normal	razor-wind	wing-attack	whirlwind	fly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/22.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/22.png
23	ekans	poison	bind	slam	headbutt	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/23.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/23.png
24	arbok	poison	bind	slam	headbutt	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/24.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/24.png
25	pikachu	electric	mega-punch	pay-day	thunder-punch	slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png
26	raichu	electric	mega-punch	pay-day	thunder-punch	slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/26.png
27	sandshrew	ground	scratch	swords-dance	cut	sand-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/27.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/27.png
28	sandslash	ground	scratch	swords-dance	cut	sand-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/28.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/28.png
29	nidoran-f	poison	scratch	cut	double-kick	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/29.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/29.png
30	nidorina	poison	scratch	cut	double-kick	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/30.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/30.png
31	nidoqueen	poison	mega-punch	pay-day	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/31.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/31.png
32	nidoran-m	poison	cut	double-kick	headbutt	horn-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/32.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/32.png
33	nidorino	poison	cut	double-kick	headbutt	horn-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/33.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/33.png
34	nidoking	poison	mega-punch	pay-day	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/34.png
35	clefairy	fairy	pound	double-slap	mega-punch	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/35.png
36	clefable	fairy	pound	double-slap	mega-punch	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/36.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/36.png
37	vulpix	fire	headbutt	tackle	body-slam	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/37.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/37.png
38	ninetales	fire	headbutt	tackle	body-slam	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/38.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/38.png
39	jigglypuff	normal	pound	double-slap	mega-punch	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/39.png
40	wigglytuff	normal	pound	double-slap	mega-punch	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/40.png
41	zubat	poison	razor-wind	gust	wing-attack	whirlwind	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/41.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/41.png
42	golbat	poison	razor-wind	wing-attack	whirlwind	fly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/42.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/42.png
43	oddish	grass	swords-dance	cut	headbutt	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/43.png
44	gloom	grass	swords-dance	cut	headbutt	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/44.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/44.png
45	vileplume	grass	swords-dance	cut	headbutt	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/45.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/45.png
46	paras	bug	scratch	swords-dance	cut	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/46.png
47	parasect	bug	scratch	swords-dance	cut	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/47.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/47.png
48	venonat	bug	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/48.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/48.png
49	venomoth	bug	razor-wind	gust	whirlwind	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/49.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/49.png
50	diglett	ground	scratch	swords-dance	cut	sand-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/50.png
51	dugtrio	ground	scratch	swords-dance	cut	sand-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/51.png
52	meowth	normal	pay-day	scratch	cut	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/52.png
53	persian	normal	pay-day	scratch	cut	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/53.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/53.png
54	psyduck	water	mega-punch	pay-day	ice-punch	scratch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/54.png
55	golduck	water	mega-punch	pay-day	ice-punch	scratch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/55.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/55.png
56	mankey	fighting	karate-chop	mega-punch	pay-day	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/56.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/56.png
57	primeape	fighting	karate-chop	mega-punch	pay-day	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/57.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/57.png
58	growlithe	fire	double-kick	headbutt	body-slam	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/58.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/58.png
59	arcanine	fire	headbutt	body-slam	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/59.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/59.png
60	poliwag	water	pound	double-slap	headbutt	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/60.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/60.png
61	poliwhirl	water	pound	double-slap	mega-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/61.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/61.png
62	poliwrath	water	pound	double-slap	mega-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/62.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/62.png
63	abra	psychic	mega-punch	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/63.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/63.png
64	kadabra	psychic	mega-punch	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/64.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/64.png
65	alakazam	psychic	mega-punch	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/65.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/65.png
66	machop	fighting	karate-chop	mega-punch	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/66.png
67	machoke	fighting	karate-chop	mega-punch	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/67.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/67.png
68	machamp	fighting	karate-chop	mega-punch	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/68.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/68.png
69	bellsprout	grass	swords-dance	cut	bind	slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/69.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/69.png
70	weepinbell	grass	swords-dance	cut	bind	slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/70.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/70.png
71	victreebel	grass	swords-dance	cut	bind	slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/71.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/71.png
72	tentacool	water	swords-dance	cut	bind	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/72.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/72.png
73	tentacruel	water	swords-dance	cut	bind	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/73.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/73.png
74	geodude	rock	mega-punch	fire-punch	thunder-punch	sand-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/74.png
75	graveler	rock	mega-punch	fire-punch	thunder-punch	sand-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/75.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/75.png
76	golem	rock	mega-punch	fire-punch	thunder-punch	mega-kick	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/76.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/76.png
77	ponyta	fire	stomp	double-kick	headbutt	horn-drill	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/77.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/77.png
78	rapidash	fire	pay-day	swords-dance	stomp	double-kick	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/78.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/78.png
79	slowpoke	water	pay-day	stomp	headbutt	tackle	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/79.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/79.png
80	slowbro	water	mega-punch	pay-day	ice-punch	stomp	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/80.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/80.png
81	magnemite	electric	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/81.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/81.png
82	magneton	electric	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/82.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/82.png
83	farfetchd	normal	razor-wind	swords-dance	cut	gust	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/83.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/83.png
84	doduo	normal	swords-dance	wing-attack	whirlwind	fly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/84.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/84.png
85	dodrio	normal	swords-dance	wing-attack	whirlwind	fly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/85.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/85.png
86	seel	water	pay-day	slam	headbutt	horn-drill	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/86.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/86.png
87	dewgong	water	pay-day	headbutt	horn-drill	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/87.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/87.png
88	grimer	poison	pound	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/88.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/88.png
89	muk	poison	pound	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/89.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/89.png
90	shellder	water	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/90.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/90.png
91	cloyster	water	headbutt	tackle	body-slam	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/91.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/91.png
92	gastly	ghost	fire-punch	ice-punch	thunder-punch	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/92.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/92.png
93	haunter	ghost	fire-punch	ice-punch	thunder-punch	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/93.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/93.png
94	gengar	ghost	mega-punch	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/94.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/94.png
95	onix	rock	bind	slam	headbutt	tackle	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/95.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/95.png
96	drowzee	psychic	pound	mega-punch	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/96.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/96.png
97	hypno	psychic	pound	mega-punch	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/97.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/97.png
98	krabby	water	vice-grip	guillotine	swords-dance	cut	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/98.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/98.png
99	kingler	water	vice-grip	guillotine	swords-dance	cut	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/99.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/99.png
100	voltorb	electric	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/100.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/100.png
101	electrode	electric	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/101.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/101.png
102	exeggcute	grass	swords-dance	headbutt	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/102.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/102.png
103	exeggutor	grass	swords-dance	stomp	headbutt	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/103.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/103.png
104	cubone	ground	mega-punch	fire-punch	thunder-punch	swords-dance	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/104.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/104.png
105	marowak	ground	mega-punch	fire-punch	thunder-punch	swords-dance	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/105.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/105.png
106	hitmonlee	fighting	mega-punch	swords-dance	double-kick	mega-kick	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/106.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/106.png
107	hitmonchan	fighting	comet-punch	mega-punch	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/107.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/107.png
108	lickitung	normal	mega-punch	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/108.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/108.png
109	koffing	poison	headbutt	tackle	body-slam	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/109.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/109.png
110	weezing	poison	headbutt	tackle	body-slam	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/110.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/110.png
111	rhyhorn	ground	swords-dance	stomp	sand-attack	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/111.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/111.png
112	rhydon	ground	mega-punch	pay-day	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/112.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/112.png
113	chansey	normal	pound	double-slap	mega-punch	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/113.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/113.png
114	tangela	grass	swords-dance	cut	bind	slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/114.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/114.png
115	kangaskhan	normal	pound	comet-punch	mega-punch	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/115.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/115.png
116	horsea	water	razor-wind	headbutt	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/116.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/116.png
117	seadra	water	headbutt	take-down	double-edge	leer	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/117.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/117.png
118	goldeen	water	swords-dance	headbutt	horn-attack	fury-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/118.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/118.png
119	seaking	water	swords-dance	headbutt	horn-attack	fury-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/119.png
120	staryu	water	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/120.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/120.png
121	starmie	water	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/121.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/121.png
122	mr-mime	psychic	pound	double-slap	mega-punch	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/122.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/122.png
123	scyther	bug	razor-wind	swords-dance	cut	wing-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/123.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/123.png
124	jynx	ice	pound	double-slap	mega-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/124.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/124.png
125	electabuzz	electric	mega-punch	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/125.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/125.png
126	magmar	fire	mega-punch	fire-punch	thunder-punch	mega-kick	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/126.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/126.png
127	pinsir	bug	vice-grip	guillotine	swords-dance	cut	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/127.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/127.png
128	tauros	normal	stomp	headbutt	horn-attack	horn-drill	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/128.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/128.png
129	magikarp	water	tackle	hydro-pump	splash	flail	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/129.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/129.png
130	gyarados	water	bind	headbutt	tackle	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/130.png
131	lapras	water	headbutt	horn-drill	body-slam	take-down	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/131.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/131.png
132	ditto	normal	transform	None	None	None	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png
133	eevee	normal	pay-day	double-kick	sand-attack	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/133.png
134	vaporeon	water	pay-day	double-kick	sand-attack	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/134.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/134.png
135	jolteon	electric	pay-day	double-kick	sand-attack	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/135.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/135.png
136	flareon	fire	pay-day	double-kick	sand-attack	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/136.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/136.png
137	porygon	normal	headbutt	tackle	take-down	double-edge	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/137.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/137.png
138	omanyte	rock	bind	slam	sand-attack	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/138.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/138.png
139	omastar	rock	bind	sand-attack	headbutt	horn-attack	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/139.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/139.png
140	kabuto	rock	scratch	sand-attack	headbutt	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/140.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/140.png
141	kabutops	rock	scratch	razor-wind	swords-dance	cut	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/141.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/141.png
142	aerodactyl	rock	razor-wind	wing-attack	whirlwind	fly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/142.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/142.png
143	snorlax	normal	mega-punch	pay-day	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/143.png
144	articuno	ice	razor-wind	gust	whirlwind	fly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/144.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/144.png
145	zapdos	electric	razor-wind	whirlwind	fly	headbutt	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/145.png
146	moltres	fire	razor-wind	gust	wing-attack	whirlwind	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/146.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/146.png
147	dratini	dragon	bind	slam	headbutt	body-slam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/147.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/147.png
148	dragonair	dragon	bind	slam	headbutt	horn-drill	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/148.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/148.png
149	dragonite	dragon	mega-punch	fire-punch	ice-punch	thunder-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/149.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/149.png
150	mewtwo	psychic	mega-punch	pay-day	fire-punch	ice-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/150.png
151	mew	psychic	pound	mega-punch	pay-day	fire-punch	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/151.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/151.png
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.team (id, team_name, id_trainer, id_pkm_1, id_pkm_2, id_pkm_3) FROM stdin;
1	Los Redondos	1	143	100	39
2	Los Aéreos	2	6	142	17
\.


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trainers (id, nombre) FROM stdin;
1	Harry
2	Joel
\.


--
-- Name: battle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.battle_id_seq', 1, true);


--
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.team_id_seq', 2, true);


--
-- Name: trainers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trainers_id_seq', 2, true);


--
-- Name: battle battle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.battle
    ADD CONSTRAINT battle_pkey PRIMARY KEY (id);


--
-- Name: team equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id);


--
-- Name: pokemon numero_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT numero_unique UNIQUE (numero);


--
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (numero);


--
-- Name: trainers trainers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trainers
    ADD CONSTRAINT trainers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

