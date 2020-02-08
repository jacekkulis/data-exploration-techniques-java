--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.4
-- Dumped by pg_dump version 9.3.3
-- Started on 2017-03-29 14:18:22

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 258 (class 1259 OID 72056)
-- Name: klient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE klient (
    id integer NOT NULL,
    dochody character varying(255),
    imie character varying(255),
    kredyt boolean,
    nazwisko character varying(255),
    plec character varying(255),
    wiek character varying(255),
    wyksztalcenie character varying(255),
    zatrudnienie character varying(255)
);


ALTER TABLE public.klient OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 72064)
-- Name: klient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE klient_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.klient_seq OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 72042)
-- Name: produkt_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produkt_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produkt_seq OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 72044)
-- Name: tranzakcja_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tranzakcja_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tranzakcja_seq OWNER TO postgres;

--
-- TOC entry 2167 (class 0 OID 72056)
-- Dependencies: 258
-- Data for Name: klient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (1, 'WYSOKIE', 'Anna', true, 'Nowicka', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (2, 'NISKIE', 'Marianna', false, 'Kamińska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (3, 'WYSOKIE', 'Józef', true, 'Górski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (4, 'SREDNIE', 'Maria', false, 'Witkowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (5, 'SREDNIE', 'Małgorzata', true, 'Woźniak', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (6, 'WYSOKIE', 'Marian', true, 'Wójcik', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (7, 'WYSOKIE', 'Maria', false, 'Kowalczyk', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (8, 'SREDNIE', 'Roman', false, 'Mazur', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (9, 'WYSOKIE', 'Małgorzata', true, 'Nowicka', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (10, 'WYSOKIE', 'Monika', false, 'Wiśniewska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (11, 'WYSOKIE', 'Jadwiga', false, 'Malinowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (12, 'WYSOKIE', 'Sławomir', true, 'Walczak', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (13, 'SREDNIE', 'Stanisława', true, 'Grabowska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (14, 'WYSOKIE', 'Dorota', true, 'Dudek', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (15, 'WYSOKIE', 'Adam', true, 'Krawczyk', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (16, 'SREDNIE', 'Mariusz', false, 'Grabowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (17, 'SREDNIE', 'Marta', true, 'Wieczorek', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (18, 'NISKIE', 'Piotr', false, 'Kowalczyk', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (19, 'WYSOKIE', 'Janusz', true, 'Kozłowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (20, 'SREDNIE', 'Helena', true, 'Lewandowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (21, 'SREDNIE', 'Anna', true, 'Wróbel', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (22, 'WYSOKIE', 'Beata', true, 'Wojciechowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (23, 'SREDNIE', 'Anna', true, 'Kwiatkowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (24, 'SREDNIE', 'Alicja', true, 'Kozłowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (25, 'NISKIE', 'Agata', true, 'Nowicka', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (26, 'WYSOKIE', 'Henryk', true, 'Wiśniewski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (27, 'SREDNIE', 'Marcin', true, 'Jaworski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (28, 'WYSOKIE', 'Dariusz', true, 'Nowakowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (29, 'WYSOKIE', 'Henryk', true, 'Stępień', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (30, 'SREDNIE', 'Irena', false, 'Wróbel', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (31, 'WYSOKIE', 'Andrzej', false, 'Woźniak', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (32, 'SREDNIE', 'Łukasz', true, 'Dąbrowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (33, 'SREDNIE', 'Iwona', false, 'Wójcik', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (34, 'SREDNIE', 'Dariusz', true, 'Lewandowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (35, 'WYSOKIE', 'Agata', true, 'Wróbel', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (36, 'NISKIE', 'Zofia', false, 'Kwiatkowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (37, 'WYSOKIE', 'Irena', true, 'Kowalczyk', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (38, 'WYSOKIE', 'Stanisław', false, 'Wójcik', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (39, 'SREDNIE', 'Tomasz', true, 'Walczak', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (40, 'WYSOKIE', 'Sławomir', false, 'Pawlak', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (41, 'WYSOKIE', 'Aleksandra', false, 'Mazur', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (42, 'SREDNIE', 'Paweł', true, 'Olszewski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (43, 'WYSOKIE', 'Adam', true, 'Jaworski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (44, 'SREDNIE', 'Aneta', false, 'Zielińska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (45, 'SREDNIE', 'Jadwiga', false, 'Dudek', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (46, 'WYSOKIE', 'Mateusz', true, 'Malinowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (47, 'NISKIE', 'Monika', true, 'Olszewska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (48, 'WYSOKIE', 'Michał', false, 'Nowicki', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (49, 'NISKIE', 'Anna', false, 'Witkowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (50, 'SREDNIE', 'Sylwia', true, 'Dudek', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (51, 'WYSOKIE', 'Zbigniew', true, 'Kwiatkowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (52, 'NISKIE', 'Maciej', false, 'Dąbrowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (53, 'SREDNIE', 'Monika', false, 'Mazur', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (54, 'SREDNIE', 'Marta', false, 'Mazur', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (55, 'NISKIE', 'Sławomir', false, 'Stępień', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (56, 'SREDNIE', 'Adam', false, 'Dąbrowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (57, 'WYSOKIE', 'Alicja', true, 'Zając', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (58, 'WYSOKIE', 'Dariusz', false, 'Dudek', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (59, 'SREDNIE', 'Tadeusz', false, 'Nowakowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (60, 'NISKIE', 'Agata', false, 'Dudek', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (61, 'SREDNIE', 'Halina', true, 'Jaworska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (62, 'WYSOKIE', 'Adam', true, 'Kowalski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (63, 'WYSOKIE', 'Tadeusz', true, 'Nowicki', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (64, 'WYSOKIE', 'Andrzej', true, 'Pawłowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (65, 'WYSOKIE', 'Wiesław', true, 'Mazur', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (66, 'WYSOKIE', 'Halina', false, 'Kowalczyk', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (67, 'NISKIE', 'Roman', false, 'Jabłoński', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (68, 'SREDNIE', 'Beata', true, 'Szymańska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (69, 'WYSOKIE', 'Mariusz', false, 'Wojciechowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (70, 'SREDNIE', 'Agnieszka', false, 'Lewandowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (71, 'WYSOKIE', 'Zofia', false, 'Wróbel', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (72, 'WYSOKIE', 'Marian', true, 'Kaczmarek', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (73, 'NISKIE', 'Agata', true, 'Wróbel', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (74, 'SREDNIE', 'Tadeusz', true, 'Wojciechowski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (75, 'NISKIE', 'Katarzyna', true, 'Kamińska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (76, 'WYSOKIE', 'Stanisław', false, 'Szymański', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (77, 'NISKIE', 'Helena', false, 'Kowalska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (78, 'WYSOKIE', 'Paweł', false, 'Kamiński', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (79, 'NISKIE', 'Beata', false, 'Wójcik', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (80, 'NISKIE', 'Marcin', true, 'Dudek', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (81, 'WYSOKIE', 'Helena', false, 'Nowicka', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (82, 'NISKIE', 'Krystyna', false, 'Stępień', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (83, 'WYSOKIE', 'Krystyna', true, 'Jaworska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (84, 'WYSOKIE', 'Roman', true, 'Wiśniewski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (85, 'SREDNIE', 'Jarosław', false, 'Nowakowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (86, 'SREDNIE', 'Dorota', false, 'Wójcik', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (87, 'WYSOKIE', 'Tomasz', false, 'Jankowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (88, 'SREDNIE', 'Natalia', true, 'Stępień', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (89, 'SREDNIE', 'Jacek', false, 'Grabowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (90, 'SREDNIE', 'Robert', false, 'Malinowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (91, 'SREDNIE', 'Natalia', true, 'Dudek', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (92, 'WYSOKIE', 'Beata', false, 'Kaczmarek', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (93, 'SREDNIE', 'Małgorzata', true, 'Wójcik', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (94, 'WYSOKIE', 'Jacek', false, 'Nowakowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (95, 'SREDNIE', 'Zofia', true, 'Jabłońska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (96, 'SREDNIE', 'Irena', false, 'Jaworska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (97, 'NISKIE', 'Agnieszka', false, 'Majewska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (98, 'NISKIE', 'Zbigniew', true, 'Górski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (99, 'WYSOKIE', 'Sławomir', true, 'Wieczorek', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (100, 'NISKIE', 'Andrzej', false, 'Kozłowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (101, 'WYSOKIE', 'Mateusz', true, 'Zieliński', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (102, 'NISKIE', 'Aneta', true, 'Grabowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (103, 'SREDNIE', 'Maria', false, 'Krawczyk', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (104, 'WYSOKIE', 'Iwona', false, 'Zając', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (105, 'WYSOKIE', 'Jerzy', false, 'Wiśniewski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (106, 'WYSOKIE', 'Joanna', true, 'Grabowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (107, 'SREDNIE', 'Roman', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (108, 'SREDNIE', 'Tadeusz', false, 'Kwiatkowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (109, 'WYSOKIE', 'Agata', true, 'Dąbrowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (110, 'WYSOKIE', 'Jakub', true, 'Nowak', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (111, 'WYSOKIE', 'Łukasz', true, 'Mazur', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (112, 'NISKIE', 'Danuta', false, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (113, 'WYSOKIE', 'Łukasz', false, 'Majewski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (114, 'NISKIE', 'Dariusz', false, 'Nowak', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (115, 'WYSOKIE', 'Danuta', false, 'Krawczyk', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (116, 'SREDNIE', 'Helena', true, 'Stępień', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (117, 'WYSOKIE', 'Jerzy', false, 'Kaczmarek', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (118, 'SREDNIE', 'Urszula', false, 'Wójcik', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (119, 'NISKIE', 'Marcin', false, 'Dudek', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (120, 'WYSOKIE', 'Tomasz', true, 'Walczak', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (121, 'NISKIE', 'Maciej', false, 'Nowak', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (122, 'NISKIE', 'Jerzy', true, 'Jabłoński', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (123, 'NISKIE', 'Tomasz', true, 'Kwiatkowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (124, 'NISKIE', 'Jadwiga', false, 'Jankowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (125, 'NISKIE', 'Iwona', false, 'Wiśniewska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (126, 'SREDNIE', 'Monika', false, 'Nowak', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (127, 'WYSOKIE', 'Jacek', true, 'Zieliński', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (128, 'WYSOKIE', 'Maciej', true, 'Nowicki', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (129, 'NISKIE', 'Sylwia', false, 'Witkowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (130, 'WYSOKIE', 'Krzysztof', true, 'Nowicki', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (131, 'NISKIE', 'Irena', false, 'Kozłowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (132, 'NISKIE', 'Krystyna', false, 'Adamczyk', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (133, 'NISKIE', 'Urszula', false, 'Jabłońska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (134, 'SREDNIE', 'Agnieszka', false, 'Wójcik', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (135, 'NISKIE', 'Mariusz', true, 'Zając', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (136, 'SREDNIE', 'Grażyna', true, 'Walczak', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (137, 'SREDNIE', 'Jolanta', false, 'Jabłońska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (138, 'NISKIE', 'Adam', true, 'Kaczmarek', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (139, 'NISKIE', 'Rafał', false, 'Kozłowski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (140, 'WYSOKIE', 'Józef', true, 'Jankowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (141, 'NISKIE', 'Danuta', false, 'Pawłowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (142, 'WYSOKIE', 'Ryszard', true, 'Krawczyk', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (143, 'NISKIE', 'Irena', true, 'Walczak', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (144, 'WYSOKIE', 'Artur', true, 'Wieczorek', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (145, 'WYSOKIE', 'Halina', false, 'Walczak', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (146, 'WYSOKIE', 'Justyna', false, 'Kowalska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (147, 'WYSOKIE', 'Danuta', false, 'Nowakowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (148, 'SREDNIE', 'Katarzyna', true, 'Kamińska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (149, 'NISKIE', 'Stanisław', false, 'Dudek', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (150, 'SREDNIE', 'Aneta', true, 'Nowakowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (151, 'NISKIE', 'Dorota', true, 'Adamczyk', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (152, 'WYSOKIE', 'Kamil', true, 'Krawczyk', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (153, 'SREDNIE', 'Beata', false, 'Pawłowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (154, 'SREDNIE', 'Łukasz', true, 'Nowicki', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (155, 'WYSOKIE', 'Stanisława', true, 'Wojciechowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (156, 'NISKIE', 'Krystyna', true, 'Kaczmarek', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (157, 'SREDNIE', 'Natalia', false, 'Lewandowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (158, 'NISKIE', 'Halina', false, 'Król', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (159, 'WYSOKIE', 'Małgorzata', true, 'Kowalczyk', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (160, 'NISKIE', 'Damian', false, 'Malinowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (161, 'SREDNIE', 'Zofia', false, 'Wiśniewska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (162, 'WYSOKIE', 'Grażyna', false, 'Grabowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (163, 'NISKIE', 'Bożena', false, 'Grabowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (164, 'WYSOKIE', 'Danuta', false, 'Pawlak', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (165, 'NISKIE', 'Beata', false, 'Woźniak', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (166, 'SREDNIE', 'Paweł', false, 'Kaczmarek', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (167, 'NISKIE', 'Marianna', true, 'Stępień', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (168, 'WYSOKIE', 'Anna', true, 'Pawlak', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (169, 'NISKIE', 'Sylwia', false, 'Wróbel', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (170, 'WYSOKIE', 'Agnieszka', false, 'Wieczorek', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (171, 'WYSOKIE', 'Urszula', false, 'Jankowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (172, 'SREDNIE', 'Janina', true, 'Kwiatkowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (173, 'NISKIE', 'Sylwia', true, 'Zając', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (174, 'NISKIE', 'Łukasz', false, 'Malinowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (175, 'WYSOKIE', 'Damian', true, 'Piotrowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (176, 'SREDNIE', 'Teresa', true, 'Majewska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (177, 'WYSOKIE', 'Aleksandra', true, 'Nowak', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (178, 'SREDNIE', 'Mateusz', false, 'Wróbel', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (179, 'NISKIE', 'Bożena', false, 'Król', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (180, 'NISKIE', 'Damian', true, 'Nowakowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (181, 'SREDNIE', 'Tadeusz', true, 'Mazur', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (182, 'WYSOKIE', 'Kazimierz', true, 'Wróbel', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (183, 'WYSOKIE', 'Aneta', false, 'Krawczyk', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (184, 'SREDNIE', 'Damian', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (185, 'NISKIE', 'Urszula', false, 'Pawlak', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (186, 'SREDNIE', 'Krystyna', true, 'Kwiatkowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (187, 'NISKIE', 'Jan', false, 'Adamczyk', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (188, 'SREDNIE', 'Tadeusz', false, 'Wiśniewski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (189, 'WYSOKIE', 'Urszula', true, 'Woźniak', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (190, 'NISKIE', 'Elżbieta', true, 'Wojciechowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (191, 'WYSOKIE', 'Agata', false, 'Dąbrowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (192, 'NISKIE', 'Kamil', false, 'Kowalczyk', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (193, 'SREDNIE', 'Małgorzata', false, 'Witkowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (194, 'NISKIE', 'Danuta', false, 'Jabłońska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (195, 'WYSOKIE', 'Artur', true, 'Olszewski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (196, 'NISKIE', 'Halina', false, 'Wójcik', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (197, 'SREDNIE', 'Zbigniew', false, 'Wieczorek', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (198, 'WYSOKIE', 'Wiesław', true, 'Nowak', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (199, 'WYSOKIE', 'Jan', true, 'Kowalczyk', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (200, 'WYSOKIE', 'Teresa', false, 'Adamczyk', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (201, 'NISKIE', 'Jakub', false, 'Stępień', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (202, 'NISKIE', 'Irena', true, 'Grabowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (203, 'NISKIE', 'Rafał', false, 'Szymański', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (204, 'WYSOKIE', 'Joanna', false, 'Kamińska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (205, 'NISKIE', 'Sławomir', true, 'Kowalczyk', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (206, 'WYSOKIE', 'Michał', true, 'Kowalczyk', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (207, 'WYSOKIE', 'Agata', true, 'Szymańska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (208, 'SREDNIE', 'Wiesław', true, 'Kowalski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (209, 'WYSOKIE', 'Roman', false, 'Mazur', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (210, 'WYSOKIE', 'Marianna', true, 'Michalska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (211, 'WYSOKIE', 'Janina', true, 'Kozłowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (212, 'SREDNIE', 'Elżbieta', false, 'Kozłowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (213, 'NISKIE', 'Jarosław', false, 'Jankowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (214, 'NISKIE', 'Bożena', false, 'Dąbrowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (215, 'WYSOKIE', 'Jadwiga', true, 'Zając', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (216, 'NISKIE', 'Mateusz', true, 'Kowalski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (217, 'SREDNIE', 'Iwona', false, 'Jankowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (218, 'SREDNIE', 'Paulina', true, 'Jankowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (219, 'NISKIE', 'Kazimierz', false, 'Król', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (220, 'NISKIE', 'Tomasz', false, 'Woźniak', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (221, 'NISKIE', 'Wiesław', false, 'Walczak', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (222, 'SREDNIE', 'Barbara', false, 'Górska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (223, 'WYSOKIE', 'Jan', false, 'Witkowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (224, 'WYSOKIE', 'Marianna', false, 'Grabowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (225, 'NISKIE', 'Marianna', true, 'Michalska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (226, 'NISKIE', 'Paulina', true, 'Dudek', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (227, 'SREDNIE', 'Jerzy', false, 'Nowak', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (228, 'SREDNIE', 'Zbigniew', false, 'Malinowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (229, 'WYSOKIE', 'Ryszard', true, 'Kozłowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (230, 'SREDNIE', 'Tadeusz', true, 'Woźniak', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (231, 'WYSOKIE', 'Agnieszka', false, 'Wieczorek', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (232, 'NISKIE', 'Paweł', true, 'Jabłoński', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (233, 'WYSOKIE', 'Barbara', false, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (234, 'NISKIE', 'Beata', true, 'Kozłowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (235, 'SREDNIE', 'Marcin', false, 'Jankowski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (236, 'SREDNIE', 'Teresa', true, 'Malinowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (237, 'WYSOKIE', 'Henryk', false, 'Szymański', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (238, 'SREDNIE', 'Justyna', false, 'Olszewska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (239, 'NISKIE', 'Kamil', false, 'Stępień', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (240, 'NISKIE', 'Grażyna', false, 'Jabłońska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (241, 'NISKIE', 'Paulina', false, 'Walczak', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (242, 'NISKIE', 'Marek', true, 'Witkowski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (243, 'SREDNIE', 'Katarzyna', true, 'Olszewska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (244, 'NISKIE', 'Justyna', false, 'Szymańska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (245, 'NISKIE', 'Tomasz', false, 'Wojciechowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (246, 'SREDNIE', 'Halina', false, 'Majewska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (247, 'SREDNIE', 'Damian', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (248, 'SREDNIE', 'Damian', true, 'Jankowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (249, 'WYSOKIE', 'Paweł', true, 'Grabowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (250, 'SREDNIE', 'Wojciech', false, 'Zieliński', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (251, 'NISKIE', 'Grzegorz', false, 'Wieczorek', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (252, 'NISKIE', 'Zbigniew', true, 'Kwiatkowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (253, 'SREDNIE', 'Aneta', false, 'Nowak', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (254, 'WYSOKIE', 'Dawid', false, 'Zieliński', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (255, 'NISKIE', 'Jadwiga', true, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (256, 'SREDNIE', 'Marianna', true, 'Kowalczyk', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (257, 'NISKIE', 'Helena', false, 'Nowicka', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (258, 'WYSOKIE', 'Kazimierz', true, 'Kowalczyk', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (259, 'NISKIE', 'Maciej', false, 'Pawłowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (260, 'NISKIE', 'Zofia', false, 'Dąbrowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (261, 'NISKIE', 'Aleksandra', false, 'Wróbel', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (262, 'SREDNIE', 'Alicja', true, 'Wróbel', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (263, 'NISKIE', 'Dorota', true, 'Zielińska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (264, 'SREDNIE', 'Karolina', false, 'Kowalczyk', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (265, 'WYSOKIE', 'Zbigniew', false, 'Dudek', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (266, 'WYSOKIE', 'Aleksandra', true, 'Wójcik', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (267, 'NISKIE', 'Sławomir', false, 'Szymański', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (268, 'WYSOKIE', 'Zbigniew', true, 'Kowalski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (269, 'WYSOKIE', 'Mirosław', true, 'Piotrowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (270, 'WYSOKIE', 'Artur', true, 'Mazur', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (271, 'WYSOKIE', 'Urszula', true, 'Olszewska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (272, 'WYSOKIE', 'Mateusz', true, 'Krawczyk', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (273, 'SREDNIE', 'Barbara', true, 'Walczak', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (274, 'NISKIE', 'Jarosław', true, 'Górski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (275, 'SREDNIE', 'Marcin', false, 'Jankowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (276, 'NISKIE', 'Krzysztof', true, 'Nowicki', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (277, 'NISKIE', 'Teresa', false, 'Walczak', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (278, 'NISKIE', 'Katarzyna', true, 'Majewska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (279, 'WYSOKIE', 'Katarzyna', true, 'Kowalska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (280, 'WYSOKIE', 'Grażyna', true, 'Kaczmarek', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (281, 'WYSOKIE', 'Jolanta', false, 'Dudek', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (282, 'NISKIE', 'Dorota', false, 'Wojciechowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (283, 'SREDNIE', 'Wiesław', true, 'Witkowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (284, 'WYSOKIE', 'Aleksandra', true, 'Lewandowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (285, 'NISKIE', 'Janina', false, 'Pawlak', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (286, 'SREDNIE', 'Zbigniew', false, 'Wiśniewski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (287, 'WYSOKIE', 'Maria', true, 'Piotrowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (288, 'WYSOKIE', 'Urszula', true, 'Kamińska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (289, 'WYSOKIE', 'Jerzy', false, 'Górski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (290, 'SREDNIE', 'Bożena', false, 'Dudek', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (291, 'WYSOKIE', 'Marianna', false, 'Kowalczyk', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (292, 'NISKIE', 'Tadeusz', true, 'Zieliński', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (293, 'NISKIE', 'Helena', true, 'Nowakowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (294, 'WYSOKIE', 'Natalia', true, 'Malinowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (295, 'NISKIE', 'Jerzy', false, 'Nowak', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (296, 'WYSOKIE', 'Natalia', false, 'Michalska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (297, 'NISKIE', 'Grzegorz', false, 'Nowakowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (298, 'WYSOKIE', 'Natalia', true, 'Mazur', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (299, 'WYSOKIE', 'Józef', false, 'Szymański', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (300, 'WYSOKIE', 'Krzysztof', true, 'Jabłoński', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (301, 'WYSOKIE', 'Jerzy', false, 'Pawlak', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (302, 'NISKIE', 'Wojciech', true, 'Wojciechowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (303, 'WYSOKIE', 'Agnieszka', true, 'Jankowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (304, 'NISKIE', 'Beata', false, 'Woźniak', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (305, 'NISKIE', 'Tomasz', false, 'Lewandowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (306, 'NISKIE', 'Mariusz', true, 'Jankowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (307, 'NISKIE', 'Katarzyna', false, 'Kwiatkowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (308, 'NISKIE', 'Łukasz', false, 'Walczak', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (309, 'SREDNIE', 'Jadwiga', false, 'Dąbrowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (310, 'NISKIE', 'Małgorzata', true, 'Krawczyk', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (311, 'NISKIE', 'Marcin', false, 'Zając', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (312, 'NISKIE', 'Karolina', false, 'Nowak', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (313, 'SREDNIE', 'Maciej', false, 'Jankowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (314, 'WYSOKIE', 'Irena', false, 'Kozłowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (315, 'WYSOKIE', 'Mirosław', false, 'Kozłowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (316, 'NISKIE', 'Jarosław', false, 'Wróbel', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (317, 'NISKIE', 'Jadwiga', true, 'Kozłowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (318, 'NISKIE', 'Robert', false, 'Nowak', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (319, 'SREDNIE', 'Danuta', true, 'Kwiatkowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (320, 'SREDNIE', 'Aleksandra', true, 'Król', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (321, 'SREDNIE', 'Damian', true, 'Woźniak', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (322, 'WYSOKIE', 'Teresa', true, 'Wróbel', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (323, 'SREDNIE', 'Danuta', false, 'Kowalczyk', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (324, 'WYSOKIE', 'Dariusz', true, 'Lewandowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (325, 'NISKIE', 'Mirosław', true, 'Górski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (326, 'NISKIE', 'Grażyna', false, 'Witkowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (327, 'SREDNIE', 'Janusz', true, 'Olszewski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (328, 'SREDNIE', 'Wiesław', true, 'Król', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (329, 'WYSOKIE', 'Artur', true, 'Nowak', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (330, 'NISKIE', 'Anna', false, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (331, 'NISKIE', 'Grzegorz', false, 'Malinowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (332, 'WYSOKIE', 'Urszula', true, 'Mazur', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (333, 'SREDNIE', 'Danuta', true, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (334, 'NISKIE', 'Bożena', true, 'Kozłowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (335, 'WYSOKIE', 'Jadwiga', true, 'Michalska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (336, 'NISKIE', 'Ewa', false, 'Olszewska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (337, 'NISKIE', 'Łukasz', false, 'Jabłoński', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (338, 'SREDNIE', 'Jadwiga', false, 'Walczak', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (339, 'WYSOKIE', 'Joanna', false, 'Górska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (340, 'NISKIE', 'Adam', false, 'Piotrowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (341, 'NISKIE', 'Wiesław', false, 'Kamiński', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (342, 'WYSOKIE', 'Józef', false, 'Dudek', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (343, 'SREDNIE', 'Agnieszka', false, 'Dudek', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (344, 'NISKIE', 'Adam', false, 'Wojciechowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (345, 'WYSOKIE', 'Barbara', false, 'Adamczyk', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (346, 'WYSOKIE', 'Stanisław', true, 'Szymański', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (347, 'SREDNIE', 'Jerzy', true, 'Kowalczyk', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (348, 'SREDNIE', 'Joanna', true, 'Szymańska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (349, 'WYSOKIE', 'Alicja', true, 'Nowakowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (350, 'SREDNIE', 'Artur', false, 'Górski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (351, 'SREDNIE', 'Agata', false, 'Nowicka', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (352, 'NISKIE', 'Dawid', false, 'Wieczorek', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (353, 'NISKIE', 'Jadwiga', false, 'Jankowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (354, 'NISKIE', 'Halina', false, 'Nowak', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (355, 'WYSOKIE', 'Artur', false, 'Szymański', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (356, 'SREDNIE', 'Krystyna', false, 'Lewandowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (357, 'WYSOKIE', 'Anna', false, 'Kwiatkowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (358, 'WYSOKIE', 'Danuta', false, 'Wiśniewska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (359, 'WYSOKIE', 'Damian', true, 'Wieczorek', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (360, 'NISKIE', 'Karolina', false, 'Lewandowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (361, 'WYSOKIE', 'Paulina', true, 'Górska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (362, 'SREDNIE', 'Marcin', false, 'Grabowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (363, 'WYSOKIE', 'Mirosław', false, 'Zieliński', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (364, 'NISKIE', 'Jacek', false, 'Kowalski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (365, 'WYSOKIE', 'Andrzej', true, 'Nowak', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (366, 'SREDNIE', 'Krzysztof', false, 'Mazur', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (367, 'SREDNIE', 'Sylwia', false, 'Kowalska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (368, 'WYSOKIE', 'Stanisław', true, 'Stępień', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (369, 'WYSOKIE', 'Adam', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (370, 'WYSOKIE', 'Maria', false, 'Jankowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (371, 'NISKIE', 'Marian', true, 'Pawłowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (372, 'SREDNIE', 'Sylwia', false, 'Zając', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (373, 'NISKIE', 'Danuta', false, 'Górska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (374, 'NISKIE', 'Karolina', true, 'Adamczyk', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (375, 'SREDNIE', 'Justyna', true, 'Jaworska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (376, 'WYSOKIE', 'Mariusz', true, 'Stępień', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (377, 'NISKIE', 'Urszula', false, 'Kowalska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (378, 'NISKIE', 'Monika', false, 'Majewska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (379, 'SREDNIE', 'Michał', true, 'Kaczmarek', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (380, 'WYSOKIE', 'Kamil', true, 'Piotrowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (381, 'WYSOKIE', 'Grażyna', true, 'Szymańska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (382, 'NISKIE', 'Jarosław', false, 'Kaczmarek', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (383, 'SREDNIE', 'Marta', false, 'Wojciechowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (384, 'NISKIE', 'Roman', false, 'Szymański', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (385, 'WYSOKIE', 'Damian', false, 'Michalski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (386, 'NISKIE', 'Alicja', true, 'Wróbel', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (387, 'SREDNIE', 'Stanisława', false, 'Pawłowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (388, 'SREDNIE', 'Mateusz', true, 'Nowak', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (389, 'SREDNIE', 'Tadeusz', false, 'Zieliński', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (390, 'WYSOKIE', 'Andrzej', true, 'Olszewski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (391, 'WYSOKIE', 'Iwona', true, 'Szymańska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (392, 'SREDNIE', 'Grażyna', false, 'Nowakowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (393, 'WYSOKIE', 'Dariusz', true, 'Dudek', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (394, 'WYSOKIE', 'Joanna', false, 'Kaczmarek', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (395, 'WYSOKIE', 'Barbara', true, 'Olszewska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (396, 'SREDNIE', 'Beata', true, 'Kowalska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (397, 'SREDNIE', 'Dawid', true, 'Wiśniewski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (398, 'WYSOKIE', 'Agata', true, 'Jankowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (399, 'WYSOKIE', 'Katarzyna', false, 'Jabłońska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (400, 'NISKIE', 'Katarzyna', false, 'Kozłowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (401, 'WYSOKIE', 'Andrzej', false, 'Kamiński', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (402, 'SREDNIE', 'Sylwia', true, 'Kwiatkowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (403, 'WYSOKIE', 'Aleksandra', true, 'Stępień', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (404, 'SREDNIE', 'Marcin', true, 'Michalski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (405, 'SREDNIE', 'Jakub', true, 'Malinowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (406, 'WYSOKIE', 'Ewa', true, 'Lewandowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (407, 'SREDNIE', 'Mateusz', false, 'Pawłowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (408, 'SREDNIE', 'Urszula', true, 'Górska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (409, 'WYSOKIE', 'Stanisław', true, 'Michalski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (410, 'SREDNIE', 'Jadwiga', false, 'Pawlak', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (411, 'SREDNIE', 'Agnieszka', false, 'Lewandowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (412, 'WYSOKIE', 'Teresa', true, 'Kamińska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (413, 'SREDNIE', 'Natalia', false, 'Adamczyk', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (414, 'WYSOKIE', 'Aneta', true, 'Wiśniewska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (415, 'WYSOKIE', 'Małgorzata', false, 'Kozłowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (416, 'WYSOKIE', 'Wojciech', false, 'Wiśniewski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (417, 'NISKIE', 'Tomasz', false, 'Wróbel', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (418, 'NISKIE', 'Marek', true, 'Piotrowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (419, 'SREDNIE', 'Dorota', false, 'Wieczorek', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (420, 'SREDNIE', 'Irena', false, 'Kowalska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (421, 'WYSOKIE', 'Zbigniew', true, 'Pawłowski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (422, 'WYSOKIE', 'Sławomir', true, 'Dąbrowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (423, 'NISKIE', 'Helena', false, 'Michalska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (424, 'NISKIE', 'Alicja', false, 'Woźniak', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (425, 'NISKIE', 'Rafał', false, 'Zając', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (426, 'NISKIE', 'Grażyna', false, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (427, 'NISKIE', 'Rafał', false, 'Adamczyk', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (428, 'WYSOKIE', 'Ryszard', false, 'Zieliński', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (429, 'WYSOKIE', 'Henryk', true, 'Kamiński', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (430, 'WYSOKIE', 'Joanna', false, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (431, 'SREDNIE', 'Monika', false, 'Górska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (432, 'SREDNIE', 'Aneta', true, 'Zając', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (433, 'NISKIE', 'Henryk', true, 'Jabłoński', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (434, 'SREDNIE', 'Roman', false, 'Piotrowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (435, 'NISKIE', 'Wojciech', true, 'Nowicki', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (436, 'WYSOKIE', 'Danuta', true, 'Dudek', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (437, 'WYSOKIE', 'Aleksandra', false, 'Nowakowska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (438, 'WYSOKIE', 'Zbigniew', true, 'Kozłowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (439, 'NISKIE', 'Monika', true, 'Michalska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (440, 'NISKIE', 'Ryszard', true, 'Pawlak', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (441, 'SREDNIE', 'Elżbieta', true, 'Dudek', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (442, 'SREDNIE', 'Robert', false, 'Dąbrowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (443, 'NISKIE', 'Barbara', true, 'Lewandowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (444, 'WYSOKIE', 'Krystyna', false, 'Mazur', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (445, 'WYSOKIE', 'Halina', true, 'Woźniak', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (446, 'WYSOKIE', 'Magdalena', true, 'Kozłowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (447, 'SREDNIE', 'Marian', true, 'Adamczyk', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (448, 'WYSOKIE', 'Grażyna', false, 'Kozłowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (449, 'WYSOKIE', 'Henryk', false, 'Kaczmarek', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (450, 'NISKIE', 'Halina', true, 'Grabowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (451, 'WYSOKIE', 'Krzysztof', false, 'Jabłoński', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (452, 'NISKIE', 'Jacek', true, 'Pawlak', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (453, 'NISKIE', 'Mateusz', false, 'Wróbel', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (454, 'WYSOKIE', 'Grzegorz', false, 'Jankowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (455, 'SREDNIE', 'Kazimierz', false, 'Lewandowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (456, 'SREDNIE', 'Marta', false, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (457, 'NISKIE', 'Joanna', false, 'Szymańska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (458, 'WYSOKIE', 'Robert', true, 'Kozłowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (459, 'WYSOKIE', 'Roman', false, 'Dąbrowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (460, 'WYSOKIE', 'Elżbieta', false, 'Pawlak', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (461, 'SREDNIE', 'Damian', true, 'Dudek', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (462, 'SREDNIE', 'Małgorzata', false, 'Zielińska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (463, 'SREDNIE', 'Dorota', true, 'Król', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (464, 'SREDNIE', 'Tomasz', false, 'Mazur', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (465, 'WYSOKIE', 'Paweł', true, 'Górski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (466, 'WYSOKIE', 'Tomasz', true, 'Krawczyk', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (467, 'SREDNIE', 'Jadwiga', false, 'Kowalczyk', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (468, 'NISKIE', 'Aneta', false, 'Olszewska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (469, 'WYSOKIE', 'Marcin', false, 'Kowalczyk', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (470, 'NISKIE', 'Kazimierz', false, 'Olszewski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (471, 'WYSOKIE', 'Barbara', true, 'Lewandowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (472, 'WYSOKIE', 'Natalia', true, 'Zając', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (473, 'NISKIE', 'Janusz', true, 'Wójcik', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (474, 'SREDNIE', 'Dorota', false, 'Wojciechowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (475, 'NISKIE', 'Halina', true, 'Pawłowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (476, 'SREDNIE', 'Damian', true, 'Jabłoński', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (477, 'SREDNIE', 'Łukasz', true, 'Szymański', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (478, 'SREDNIE', 'Mirosław', true, 'Jaworski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (479, 'SREDNIE', 'Damian', false, 'Malinowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (480, 'SREDNIE', 'Rafał', true, 'Pawłowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (481, 'SREDNIE', 'Ewa', false, 'Nowak', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (482, 'NISKIE', 'Rafał', false, 'Górski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (483, 'SREDNIE', 'Magdalena', true, 'Kowalczyk', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (484, 'WYSOKIE', 'Helena', true, 'Jabłońska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (485, 'SREDNIE', 'Halina', false, 'Nowak', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (486, 'SREDNIE', 'Wiesław', true, 'Wojciechowski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (487, 'NISKIE', 'Stanisław', true, 'Wróbel', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (488, 'WYSOKIE', 'Renata', true, 'Kowalczyk', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (489, 'WYSOKIE', 'Jacek', true, 'Stępień', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (490, 'NISKIE', 'Roman', true, 'Kamiński', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (491, 'NISKIE', 'Wiesław', true, 'Dąbrowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (492, 'NISKIE', 'Barbara', true, 'Wróbel', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (493, 'WYSOKIE', 'Ewa', true, 'Szymańska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (494, 'WYSOKIE', 'Irena', true, 'Wieczorek', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (495, 'SREDNIE', 'Grażyna', true, 'Woźniak', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (496, 'WYSOKIE', 'Alicja', true, 'Kaczmarek', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (497, 'WYSOKIE', 'Joanna', true, 'Grabowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (498, 'WYSOKIE', 'Iwona', true, 'Michalska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (499, 'WYSOKIE', 'Marian', true, 'Kowalski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (500, 'WYSOKIE', 'Rafał', true, 'Mazur', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (501, 'WYSOKIE', 'Marcin', true, 'Piotrowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (502, 'WYSOKIE', 'Sławomir', true, 'Wieczorek', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (503, 'NISKIE', 'Jakub', false, 'Pawlak', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (504, 'SREDNIE', 'Wiesław', false, 'Majewski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (505, 'WYSOKIE', 'Dorota', false, 'Kwiatkowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (506, 'WYSOKIE', 'Krzysztof', true, 'Górski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (507, 'SREDNIE', 'Wojciech', true, 'Stępień', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (508, 'NISKIE', 'Irena', false, 'Dąbrowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (509, 'SREDNIE', 'Agata', false, 'Wiśniewska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (510, 'SREDNIE', 'Wiesław', true, 'Wróbel', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (511, 'WYSOKIE', 'Teresa', true, 'Lewandowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (512, 'SREDNIE', 'Maria', false, 'Jaworska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (513, 'SREDNIE', 'Maria', false, 'Malinowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (514, 'SREDNIE', 'Tomasz', false, 'Krawczyk', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (515, 'WYSOKIE', 'Irena', false, 'Dąbrowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (516, 'SREDNIE', 'Aneta', false, 'Dąbrowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (517, 'WYSOKIE', 'Jerzy', false, 'Krawczyk', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (518, 'WYSOKIE', 'Kazimierz', true, 'Nowakowski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (742, 'SREDNIE', 'Rafał', false, 'Krawczyk', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (519, 'NISKIE', 'Grzegorz', false, 'Kowalczyk', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (520, 'SREDNIE', 'Jakub', false, 'Zieliński', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (521, 'NISKIE', 'Krystyna', false, 'Pawlak', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (522, 'NISKIE', 'Dorota', true, 'Jankowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (523, 'NISKIE', 'Irena', true, 'Stępień', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (524, 'SREDNIE', 'Krystyna', false, 'Woźniak', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (525, 'NISKIE', 'Mariusz', true, 'Woźniak', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (526, 'SREDNIE', 'Alicja', true, 'Walczak', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (527, 'SREDNIE', 'Mirosław', true, 'Wojciechowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (528, 'SREDNIE', 'Paulina', true, 'Wróbel', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (529, 'NISKIE', 'Marianna', true, 'Lewandowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (530, 'NISKIE', 'Piotr', true, 'Nowicki', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (531, 'NISKIE', 'Mateusz', true, 'Jaworski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (532, 'WYSOKIE', 'Teresa', false, 'Jankowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (533, 'SREDNIE', 'Katarzyna', false, 'Grabowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (534, 'WYSOKIE', 'Renata', true, 'Pawłowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (535, 'SREDNIE', 'Helena', true, 'Górska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (536, 'WYSOKIE', 'Kamil', true, 'Nowak', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (537, 'SREDNIE', 'Helena', false, 'Lewandowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (538, 'WYSOKIE', 'Aneta', true, 'Witkowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (539, 'WYSOKIE', 'Sylwia', false, 'Grabowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (540, 'WYSOKIE', 'Ryszard', false, 'Stępień', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (541, 'NISKIE', 'Magdalena', false, 'Zając', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (542, 'WYSOKIE', 'Andrzej', false, 'Kowalski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (543, 'SREDNIE', 'Jerzy', true, 'Jaworski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (544, 'WYSOKIE', 'Wojciech', true, 'Dudek', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (545, 'NISKIE', 'Mateusz', false, 'Adamczyk', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (546, 'SREDNIE', 'Dariusz', false, 'Jaworski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (547, 'NISKIE', 'Jan', false, 'Olszewski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (548, 'SREDNIE', 'Paulina', false, 'Wiśniewska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (549, 'WYSOKIE', 'Jerzy', false, 'Stępień', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (550, 'SREDNIE', 'Ryszard', false, 'Pawłowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (551, 'WYSOKIE', 'Marianna', false, 'Stępień', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (552, 'NISKIE', 'Magdalena', false, 'Kozłowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (553, 'SREDNIE', 'Józef', true, 'Pawłowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (554, 'SREDNIE', 'Aleksandra', true, 'Wróbel', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (555, 'SREDNIE', 'Agata', false, 'Nowakowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (556, 'WYSOKIE', 'Magdalena', false, 'Olszewska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (557, 'WYSOKIE', 'Zbigniew', false, 'Wojciechowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (558, 'NISKIE', 'Sylwia', true, 'Jaworska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (559, 'SREDNIE', 'Jadwiga', true, 'Kowalczyk', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (560, 'NISKIE', 'Stanisława', false, 'Grabowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (561, 'SREDNIE', 'Zofia', false, 'Szymańska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (562, 'WYSOKIE', 'Bożena', true, 'Wieczorek', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (563, 'NISKIE', 'Danuta', false, 'Zając', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (564, 'NISKIE', 'Wiesław', false, 'Majewski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (565, 'WYSOKIE', 'Jakub', true, 'Jaworski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (566, 'SREDNIE', 'Sylwia', true, 'Wojciechowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (567, 'SREDNIE', 'Jadwiga', true, 'Kowalska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (568, 'WYSOKIE', 'Andrzej', false, 'Olszewski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (569, 'SREDNIE', 'Maria', true, 'Dudek', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (570, 'WYSOKIE', 'Rafał', false, 'Mazur', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (571, 'SREDNIE', 'Jakub', false, 'Adamczyk', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (572, 'NISKIE', 'Joanna', false, 'Zielińska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (573, 'SREDNIE', 'Danuta', true, 'Nowakowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (574, 'WYSOKIE', 'Agata', false, 'Piotrowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (575, 'SREDNIE', 'Zbigniew', true, 'Stępień', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (576, 'WYSOKIE', 'Agata', false, 'Witkowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (577, 'WYSOKIE', 'Sławomir', false, 'Wojciechowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (578, 'SREDNIE', 'Janina', true, 'Pawłowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (579, 'WYSOKIE', 'Maciej', true, 'Zieliński', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (580, 'NISKIE', 'Zbigniew', false, 'Kamiński', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (581, 'WYSOKIE', 'Dawid', true, 'Wróbel', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (582, 'WYSOKIE', 'Jarosław', true, 'Jabłoński', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (583, 'NISKIE', 'Zofia', false, 'Nowakowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (584, 'WYSOKIE', 'Damian', true, 'Stępień', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (585, 'WYSOKIE', 'Alicja', false, 'Malinowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (586, 'NISKIE', 'Renata', false, 'Szymańska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (587, 'SREDNIE', 'Kamil', true, 'Stępień', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (588, 'SREDNIE', 'Stanisława', false, 'Nowicka', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (589, 'WYSOKIE', 'Beata', true, 'Zając', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (590, 'NISKIE', 'Mateusz', false, 'Wieczorek', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (591, 'SREDNIE', 'Krzysztof', false, 'Grabowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (592, 'WYSOKIE', 'Marian', true, 'Nowakowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (593, 'WYSOKIE', 'Damian', true, 'Jabłoński', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (594, 'WYSOKIE', 'Bożena', false, 'Grabowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (595, 'WYSOKIE', 'Alicja', false, 'Zielińska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (596, 'SREDNIE', 'Sławomir', true, 'Nowakowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (597, 'NISKIE', 'Maciej', false, 'Piotrowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (598, 'WYSOKIE', 'Monika', false, 'Nowakowska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (599, 'WYSOKIE', 'Tadeusz', false, 'Kowalski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (600, 'SREDNIE', 'Artur', true, 'Malinowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (601, 'SREDNIE', 'Józef', true, 'Adamczyk', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (602, 'SREDNIE', 'Janina', true, 'Zielińska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (603, 'SREDNIE', 'Jadwiga', true, 'Jankowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (604, 'WYSOKIE', 'Barbara', true, 'Kowalczyk', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (605, 'NISKIE', 'Jakub', false, 'Piotrowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (606, 'NISKIE', 'Marta', true, 'Król', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (607, 'WYSOKIE', 'Janina', true, 'Walczak', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (608, 'SREDNIE', 'Beata', false, 'Dąbrowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (609, 'NISKIE', 'Anna', false, 'Adamczyk', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (610, 'NISKIE', 'Natalia', true, 'Krawczyk', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (611, 'SREDNIE', 'Elżbieta', false, 'Zając', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (612, 'SREDNIE', 'Dawid', false, 'Wojciechowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (613, 'WYSOKIE', 'Dariusz', false, 'Wróbel', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (614, 'SREDNIE', 'Aneta', true, 'Dudek', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (615, 'SREDNIE', 'Paulina', true, 'Nowicka', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (616, 'WYSOKIE', 'Paulina', true, 'Szymańska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (617, 'NISKIE', 'Roman', false, 'Woźniak', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (618, 'SREDNIE', 'Irena', true, 'Grabowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (619, 'NISKIE', 'Halina', false, 'Nowak', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (620, 'NISKIE', 'Katarzyna', true, 'Kowalczyk', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (621, 'NISKIE', 'Paulina', true, 'Jaworska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (622, 'WYSOKIE', 'Danuta', true, 'Wojciechowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (623, 'WYSOKIE', 'Dariusz', true, 'Wojciechowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (624, 'SREDNIE', 'Damian', false, 'Michalski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (625, 'NISKIE', 'Zofia', true, 'Olszewska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (626, 'NISKIE', 'Małgorzata', false, 'Dąbrowska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (627, 'NISKIE', 'Zbigniew', true, 'Pawłowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (628, 'NISKIE', 'Grażyna', false, 'Jabłońska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (629, 'WYSOKIE', 'Iwona', true, 'Malinowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (630, 'SREDNIE', 'Jacek', true, 'Stępień', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (631, 'SREDNIE', 'Tomasz', true, 'Nowakowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (632, 'WYSOKIE', 'Karolina', true, 'Grabowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (633, 'WYSOKIE', 'Agata', true, 'Kowalczyk', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (634, 'SREDNIE', 'Jolanta', false, 'Pawłowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (635, 'SREDNIE', 'Marianna', true, 'Górska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (636, 'SREDNIE', 'Ryszard', true, 'Wieczorek', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (637, 'SREDNIE', 'Joanna', false, 'Wróbel', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (638, 'SREDNIE', 'Wiesław', true, 'Jaworski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (639, 'WYSOKIE', 'Kamil', false, 'Nowicki', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (640, 'NISKIE', 'Irena', true, 'Górska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (641, 'NISKIE', 'Marian', false, 'Krawczyk', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (642, 'WYSOKIE', 'Janusz', true, 'Pawlak', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (643, 'SREDNIE', 'Helena', true, 'Walczak', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (644, 'WYSOKIE', 'Katarzyna', false, 'Górska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (645, 'SREDNIE', 'Artur', false, 'Wójcik', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (646, 'SREDNIE', 'Jacek', true, 'Piotrowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (647, 'SREDNIE', 'Jacek', true, 'Mazur', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (648, 'NISKIE', 'Elżbieta', false, 'Adamczyk', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (649, 'NISKIE', 'Jacek', true, 'Zając', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (650, 'NISKIE', 'Justyna', true, 'Kowalska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (651, 'WYSOKIE', 'Roman', false, 'Jaworski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (652, 'WYSOKIE', 'Janusz', true, 'Zając', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (653, 'NISKIE', 'Aleksandra', true, 'Wróbel', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (654, 'NISKIE', 'Aneta', false, 'Górska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (655, 'WYSOKIE', 'Iwona', false, 'Kwiatkowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (656, 'NISKIE', 'Urszula', false, 'Zając', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (657, 'SREDNIE', 'Ryszard', true, 'Szymański', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (658, 'NISKIE', 'Wiesław', false, 'Kowalski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (659, 'WYSOKIE', 'Halina', true, 'Dąbrowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (660, 'SREDNIE', 'Renata', true, 'Nowak', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (661, 'SREDNIE', 'Dawid', false, 'Stępień', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (662, 'WYSOKIE', 'Iwona', false, 'Wiśniewska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (663, 'NISKIE', 'Aleksandra', false, 'Kwiatkowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (664, 'SREDNIE', 'Henryk', false, 'Wojciechowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (665, 'NISKIE', 'Paulina', false, 'Stępień', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (666, 'NISKIE', 'Dariusz', true, 'Kowalski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (667, 'SREDNIE', 'Wiesław', false, 'Michalski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (668, 'WYSOKIE', 'Marek', false, 'Stępień', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (669, 'WYSOKIE', 'Łukasz', true, 'Mazur', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (670, 'NISKIE', 'Monika', false, 'Zielińska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (671, 'SREDNIE', 'Stanisław', false, 'Zieliński', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (672, 'SREDNIE', 'Tadeusz', true, 'Walczak', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (673, 'WYSOKIE', 'Grzegorz', false, 'Kozłowski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (674, 'SREDNIE', 'Stanisława', true, 'Nowicka', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (675, 'NISKIE', 'Małgorzata', false, 'Kozłowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (676, 'WYSOKIE', 'Grażyna', false, 'Górska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (677, 'SREDNIE', 'Magdalena', false, 'Kwiatkowska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (678, 'NISKIE', 'Bożena', true, 'Olszewska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (679, 'WYSOKIE', 'Paweł', false, 'Zając', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (680, 'SREDNIE', 'Jacek', false, 'Górski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (681, 'NISKIE', 'Dariusz', false, 'Wojciechowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (682, 'SREDNIE', 'Justyna', false, 'Olszewska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (683, 'NISKIE', 'Józef', false, 'Stępień', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (684, 'NISKIE', 'Natalia', false, 'Mazur', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (685, 'WYSOKIE', 'Henryk', true, 'Woźniak', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (686, 'WYSOKIE', 'Kazimierz', true, 'Wojciechowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (687, 'NISKIE', 'Wiesław', false, 'Michalski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (688, 'WYSOKIE', 'Aneta', false, 'Kwiatkowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (689, 'NISKIE', 'Jakub', true, 'Kowalczyk', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (690, 'SREDNIE', 'Kamil', true, 'Wojciechowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (691, 'NISKIE', 'Piotr', true, 'Witkowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (692, 'WYSOKIE', 'Dorota', false, 'Pawłowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (693, 'SREDNIE', 'Artur', true, 'Dąbrowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (694, 'NISKIE', 'Monika', false, 'Adamczyk', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (695, 'WYSOKIE', 'Grzegorz', false, 'Nowak', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (696, 'WYSOKIE', 'Wojciech', false, 'Michalski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (697, 'SREDNIE', 'Renata', false, 'Górska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (698, 'SREDNIE', 'Jacek', true, 'Wróbel', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (699, 'SREDNIE', 'Jolanta', false, 'Jankowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (700, 'SREDNIE', 'Zofia', true, 'Jabłońska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (701, 'WYSOKIE', 'Beata', true, 'Mazur', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (702, 'WYSOKIE', 'Mateusz', true, 'Olszewski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (703, 'NISKIE', 'Grzegorz', false, 'Adamczyk', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (704, 'WYSOKIE', 'Agata', false, 'Zając', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (705, 'WYSOKIE', 'Marian', false, 'Kowalski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (706, 'WYSOKIE', 'Joanna', true, 'Wróbel', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (707, 'SREDNIE', 'Marcin', true, 'Kaczmarek', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (708, 'NISKIE', 'Grażyna', false, 'Dudek', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (709, 'WYSOKIE', 'Marianna', true, 'Adamczyk', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (710, 'SREDNIE', 'Adam', false, 'Adamczyk', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (711, 'WYSOKIE', 'Sławomir', false, 'Krawczyk', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (712, 'SREDNIE', 'Maria', false, 'Jabłońska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (713, 'WYSOKIE', 'Wiesław', false, 'Dąbrowski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (714, 'WYSOKIE', 'Dorota', true, 'Kowalska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (715, 'NISKIE', 'Jolanta', true, 'Nowakowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (716, 'SREDNIE', 'Anna', false, 'Krawczyk', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (717, 'NISKIE', 'Jarosław', true, 'Kowalski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (718, 'NISKIE', 'Katarzyna', false, 'Nowakowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (719, 'SREDNIE', 'Beata', true, 'Krawczyk', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (720, 'WYSOKIE', 'Ewa', false, 'Wieczorek', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (721, 'SREDNIE', 'Michał', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (722, 'SREDNIE', 'Ewa', false, 'Krawczyk', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (723, 'NISKIE', 'Maria', false, 'Kwiatkowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (724, 'SREDNIE', 'Jacek', true, 'Majewski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (725, 'NISKIE', 'Robert', false, 'Lewandowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (726, 'NISKIE', 'Urszula', true, 'Malinowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (727, 'WYSOKIE', 'Justyna', true, 'Jankowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (728, 'SREDNIE', 'Teresa', true, 'Majewska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (729, 'SREDNIE', 'Mateusz', false, 'Majewski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (730, 'SREDNIE', 'Ryszard', false, 'Grabowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (731, 'WYSOKIE', 'Stanisława', true, 'Wiśniewska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (732, 'NISKIE', 'Rafał', false, 'Dąbrowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (733, 'WYSOKIE', 'Roman', true, 'Pawłowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (734, 'WYSOKIE', 'Urszula', false, 'Górska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (735, 'NISKIE', 'Ewa', false, 'Stępień', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (736, 'NISKIE', 'Małgorzata', true, 'Mazur', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (737, 'WYSOKIE', 'Paulina', false, 'Lewandowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (738, 'WYSOKIE', 'Barbara', false, 'Woźniak', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (739, 'SREDNIE', 'Irena', false, 'Mazur', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (740, 'SREDNIE', 'Zofia', true, 'Król', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (741, 'NISKIE', 'Rafał', true, 'Piotrowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (743, 'WYSOKIE', 'Robert', true, 'Kwiatkowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (744, 'NISKIE', 'Elżbieta', false, 'Dudek', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (745, 'NISKIE', 'Jarosław', true, 'Wójcik', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (746, 'WYSOKIE', 'Zbigniew', true, 'Adamczyk', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (747, 'WYSOKIE', 'Marta', true, 'Górska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (748, 'SREDNIE', 'Dawid', false, 'Wiśniewski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (749, 'WYSOKIE', 'Sławomir', true, 'Michalski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (750, 'NISKIE', 'Damian', true, 'Kamiński', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (751, 'WYSOKIE', 'Małgorzata', false, 'Witkowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (752, 'WYSOKIE', 'Beata', true, 'Kowalska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (753, 'NISKIE', 'Helena', true, 'Majewska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (754, 'SREDNIE', 'Małgorzata', false, 'Szymańska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (755, 'NISKIE', 'Paulina', false, 'Jankowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (756, 'NISKIE', 'Robert', false, 'Król', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (757, 'NISKIE', 'Artur', true, 'Kozłowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (758, 'NISKIE', 'Helena', true, 'Nowakowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (759, 'NISKIE', 'Mariusz', false, 'Nowicki', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (760, 'SREDNIE', 'Wiesław', false, 'Górski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (761, 'SREDNIE', 'Janusz', false, 'Woźniak', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (762, 'NISKIE', 'Tadeusz', false, 'Kowalski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (763, 'WYSOKIE', 'Janina', true, 'Nowak', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (764, 'SREDNIE', 'Justyna', true, 'Jabłońska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (765, 'SREDNIE', 'Maria', false, 'Walczak', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (766, 'WYSOKIE', 'Ryszard', false, 'Michalski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (767, 'NISKIE', 'Stanisław', false, 'Walczak', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (768, 'WYSOKIE', 'Renata', true, 'Wróbel', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (769, 'WYSOKIE', 'Barbara', false, 'Kozłowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (770, 'SREDNIE', 'Paweł', false, 'Kowalski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (771, 'WYSOKIE', 'Sławomir', true, 'Witkowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (772, 'WYSOKIE', 'Urszula', false, 'Piotrowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (773, 'SREDNIE', 'Jacek', true, 'Pawlak', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (774, 'SREDNIE', 'Tomasz', true, 'Zieliński', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (775, 'WYSOKIE', 'Zbigniew', true, 'Kaczmarek', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (776, 'SREDNIE', 'Jerzy', false, 'Kowalski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (777, 'NISKIE', 'Marek', true, 'Kamiński', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (778, 'NISKIE', 'Marianna', false, 'Jabłońska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (779, 'NISKIE', 'Henryk', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (780, 'NISKIE', 'Bożena', false, 'Kowalczyk', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (781, 'NISKIE', 'Henryk', true, 'Jabłoński', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (782, 'SREDNIE', 'Dariusz', false, 'Woźniak', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (783, 'NISKIE', 'Aleksandra', false, 'Mazur', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (784, 'NISKIE', 'Marcin', false, 'Jankowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (785, 'NISKIE', 'Maria', false, 'Nowak', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (786, 'NISKIE', 'Marta', true, 'Lewandowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (787, 'SREDNIE', 'Mirosław', false, 'Wójcik', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (788, 'WYSOKIE', 'Mirosław', false, 'Pawlak', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (789, 'NISKIE', 'Tomasz', false, 'Wojciechowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (790, 'NISKIE', 'Andrzej', false, 'Król', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (791, 'WYSOKIE', 'Alicja', false, 'Pawłowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (792, 'NISKIE', 'Natalia', false, 'Król', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (793, 'NISKIE', 'Jakub', false, 'Malinowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (794, 'NISKIE', 'Renata', false, 'Witkowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (795, 'WYSOKIE', 'Helena', true, 'Malinowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (796, 'NISKIE', 'Łukasz', false, 'Adamczyk', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (797, 'SREDNIE', 'Ewa', false, 'Kamińska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (798, 'WYSOKIE', 'Robert', true, 'Wróbel', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (799, 'SREDNIE', 'Jerzy', false, 'Zając', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (800, 'SREDNIE', 'Bożena', true, 'Wiśniewska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (801, 'SREDNIE', 'Helena', true, 'Wróbel', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (802, 'SREDNIE', 'Helena', true, 'Wieczorek', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (803, 'WYSOKIE', 'Zbigniew', false, 'Górski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (804, 'WYSOKIE', 'Małgorzata', true, 'Nowakowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (805, 'SREDNIE', 'Rafał', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (806, 'SREDNIE', 'Dorota', false, 'Kozłowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (807, 'SREDNIE', 'Monika', false, 'Dąbrowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (808, 'WYSOKIE', 'Damian', false, 'Zając', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (809, 'WYSOKIE', 'Janina', false, 'Jankowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (810, 'NISKIE', 'Adam', false, 'Dąbrowski', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (811, 'NISKIE', 'Rafał', true, 'Górski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (812, 'WYSOKIE', 'Łukasz', true, 'Kowalski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (813, 'SREDNIE', 'Stanisław', false, 'Jaworski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (814, 'NISKIE', 'Kamil', false, 'Kaczmarek', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (815, 'SREDNIE', 'Ryszard', true, 'Majewski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (816, 'NISKIE', 'Robert', false, 'Malinowski', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (817, 'WYSOKIE', 'Maria', true, 'Wiśniewska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (818, 'SREDNIE', 'Bożena', false, 'Wróbel', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (819, 'NISKIE', 'Grażyna', false, 'Nowicka', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (820, 'WYSOKIE', 'Piotr', true, 'Wójcik', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (821, 'WYSOKIE', 'Karolina', false, 'Krawczyk', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (822, 'SREDNIE', 'Tomasz', true, 'Wójcik', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (823, 'SREDNIE', 'Mirosław', false, 'Mazur', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (824, 'SREDNIE', 'Elżbieta', false, 'Górska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (825, 'SREDNIE', 'Henryk', true, 'Piotrowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (826, 'WYSOKIE', 'Dawid', false, 'Kowalski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (827, 'WYSOKIE', 'Agata', true, 'Majewska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (828, 'SREDNIE', 'Sławomir', true, 'Wojciechowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (829, 'NISKIE', 'Paweł', true, 'Jankowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (830, 'WYSOKIE', 'Mateusz', true, 'Pawłowski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (831, 'SREDNIE', 'Kazimierz', false, 'Wieczorek', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (832, 'WYSOKIE', 'Marcin', false, 'Dudek', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (833, 'SREDNIE', 'Adam', true, 'Nowakowski', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (834, 'WYSOKIE', 'Kamil', false, 'Jankowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (835, 'NISKIE', 'Michał', true, 'Lewandowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (836, 'NISKIE', 'Natalia', false, 'Nowak', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (837, 'WYSOKIE', 'Marta', true, 'Majewska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (838, 'NISKIE', 'Kamil', true, 'Michalski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (839, 'NISKIE', 'Agata', false, 'Jankowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (840, 'WYSOKIE', 'Ryszard', true, 'Zając', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (841, 'WYSOKIE', 'Henryk', true, 'Kamiński', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (842, 'SREDNIE', 'Barbara', false, 'Malinowska', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (843, 'SREDNIE', 'Natalia', true, 'Jaworska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (844, 'NISKIE', 'Jerzy', true, 'Kaczmarek', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (845, 'SREDNIE', 'Janusz', true, 'Adamczyk', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (846, 'WYSOKIE', 'Zofia', true, 'Krawczyk', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (847, 'WYSOKIE', 'Jolanta', true, 'Woźniak', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (848, 'WYSOKIE', 'Dariusz', false, 'Piotrowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (849, 'NISKIE', 'Joanna', true, 'Mazur', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (850, 'WYSOKIE', 'Marek', true, 'Jabłoński', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (851, 'WYSOKIE', 'Paweł', true, 'Pawlak', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (852, 'SREDNIE', 'Agnieszka', true, 'Olszewska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (853, 'NISKIE', 'Aneta', true, 'Szymańska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (854, 'SREDNIE', 'Natalia', false, 'Jaworska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (855, 'SREDNIE', 'Teresa', false, 'Pawlak', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (856, 'WYSOKIE', 'Krzysztof', true, 'Kamiński', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (857, 'WYSOKIE', 'Wiesław', true, 'Wojciechowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (858, 'SREDNIE', 'Magdalena', true, 'Wróbel', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (859, 'WYSOKIE', 'Agnieszka', true, 'Jankowska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (860, 'NISKIE', 'Halina', true, 'Malinowska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (861, 'NISKIE', 'Alicja', false, 'Wróbel', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (862, 'WYSOKIE', 'Wojciech', false, 'Jaworski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (863, 'WYSOKIE', 'Iwona', true, 'Dąbrowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (864, 'WYSOKIE', 'Dawid', false, 'Adamczyk', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (865, 'NISKIE', 'Kazimierz', false, 'Piotrowski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (866, 'SREDNIE', 'Marcin', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (867, 'SREDNIE', 'Wiesław', false, 'Woźniak', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (868, 'WYSOKIE', 'Mirosław', false, 'Pawłowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (869, 'SREDNIE', 'Henryk', true, 'Grabowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (870, 'NISKIE', 'Justyna', false, 'Kozłowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (871, 'NISKIE', 'Justyna', false, 'Nowakowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (872, 'SREDNIE', 'Paulina', true, 'Wieczorek', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (873, 'WYSOKIE', 'Marta', true, 'Olszewska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (874, 'NISKIE', 'Elżbieta', false, 'Dudek', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (875, 'WYSOKIE', 'Paweł', true, 'Dąbrowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (876, 'SREDNIE', 'Andrzej', false, 'Mazur', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (877, 'SREDNIE', 'Jan', false, 'Wojciechowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (878, 'SREDNIE', 'Dorota', true, 'Malinowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (879, 'SREDNIE', 'Barbara', false, 'Zając', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (880, 'SREDNIE', 'Ryszard', false, 'Mazur', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (881, 'SREDNIE', 'Mirosław', false, 'Witkowski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (882, 'NISKIE', 'Robert', false, 'Mazur', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (883, 'NISKIE', 'Mateusz', false, 'Jabłoński', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (884, 'SREDNIE', 'Marek', false, 'Jabłoński', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (885, 'WYSOKIE', 'Katarzyna', true, 'Wróbel', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (886, 'WYSOKIE', 'Andrzej', true, 'Kozłowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (887, 'SREDNIE', 'Dariusz', true, 'Kowalski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (888, 'NISKIE', 'Jan', true, 'Dąbrowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (889, 'SREDNIE', 'Kamil', true, 'Kozłowski', 'MEZCZYZNA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (890, 'SREDNIE', 'Monika', false, 'Lewandowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (891, 'NISKIE', 'Sylwia', false, 'Pawłowska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (892, 'NISKIE', 'Józef', true, 'Michalski', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (893, 'SREDNIE', 'Halina', false, 'Jabłońska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (894, 'SREDNIE', 'Helena', true, 'Kwiatkowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (895, 'SREDNIE', 'Marta', false, 'Jankowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (896, 'WYSOKIE', 'Jarosław', true, 'Krawczyk', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (897, 'NISKIE', 'Stanisław', false, 'Kwiatkowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (898, 'WYSOKIE', 'Marianna', true, 'Olszewska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (899, 'NISKIE', 'Agnieszka', false, 'Jaworska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (900, 'WYSOKIE', 'Ryszard', true, 'Kamiński', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (901, 'NISKIE', 'Michał', true, 'Jankowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (902, 'SREDNIE', 'Piotr', true, 'Zieliński', 'MEZCZYZNA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (903, 'NISKIE', 'Natalia', false, 'Nowakowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (904, 'NISKIE', 'Wiesław', true, 'Wróbel', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (905, 'WYSOKIE', 'Katarzyna', false, 'Dudek', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (906, 'NISKIE', 'Alicja', false, 'Piotrowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (907, 'SREDNIE', 'Jerzy', false, 'Dudek', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (908, 'NISKIE', 'Henryk', true, 'Olszewski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (909, 'WYSOKIE', 'Bożena', true, 'Jabłońska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (910, 'WYSOKIE', 'Karolina', false, 'Pawłowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (911, 'NISKIE', 'Grażyna', true, 'Kowalczyk', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (912, 'NISKIE', 'Dawid', false, 'Kwiatkowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (913, 'NISKIE', 'Grażyna', false, 'Walczak', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (914, 'NISKIE', 'Bożena', false, 'Kamińska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (915, 'NISKIE', 'Natalia', true, 'Zielińska', 'KOBIETA', 'od_40_do_50', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (916, 'WYSOKIE', 'Jacek', false, 'Wójcik', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (917, 'WYSOKIE', 'Dawid', true, 'Król', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (918, 'WYSOKIE', 'Ryszard', true, 'Nowakowski', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (919, 'SREDNIE', 'Jarosław', false, 'Piotrowski', 'MEZCZYZNA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (920, 'NISKIE', 'Dariusz', false, 'Dąbrowski', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (921, 'SREDNIE', 'Halina', false, 'Pawłowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (922, 'NISKIE', 'Wojciech', true, 'Wójcik', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (923, 'WYSOKIE', 'Dariusz', true, 'Stępień', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (924, 'SREDNIE', 'Grażyna', false, 'Kwiatkowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (925, 'SREDNIE', 'Zofia', true, 'Wojciechowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (926, 'WYSOKIE', 'Karolina', false, 'Zielińska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (927, 'NISKIE', 'Danuta', true, 'Kozłowska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (928, 'NISKIE', 'Krystyna', true, 'Wiśniewska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (929, 'WYSOKIE', 'Jerzy', false, 'Woźniak', 'MEZCZYZNA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (930, 'SREDNIE', 'Zofia', false, 'Górska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (931, 'WYSOKIE', 'Rafał', false, 'Zając', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (932, 'WYSOKIE', 'Janina', true, 'Jankowska', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (933, 'WYSOKIE', 'Katarzyna', true, 'Pawłowska', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (934, 'WYSOKIE', 'Alicja', false, 'Nowicka', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (935, 'NISKIE', 'Jacek', false, 'Adamczyk', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (936, 'SREDNIE', 'Wiesław', false, 'Dudek', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (937, 'SREDNIE', 'Marcin', true, 'Wieczorek', 'MEZCZYZNA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (938, 'WYSOKIE', 'Kazimierz', true, 'Malinowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (939, 'SREDNIE', 'Krzysztof', true, 'Wieczorek', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (940, 'WYSOKIE', 'Aleksandra', true, 'Nowicka', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (941, 'SREDNIE', 'Bożena', false, 'Jaworska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (942, 'WYSOKIE', 'Danuta', false, 'Jabłońska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (943, 'NISKIE', 'Agata', false, 'Piotrowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (944, 'WYSOKIE', 'Bożena', true, 'Nowakowska', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (945, 'SREDNIE', 'Barbara', false, 'Wojciechowska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (946, 'WYSOKIE', 'Kamil', false, 'Pawłowski', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (947, 'NISKIE', 'Marta', false, 'Nowak', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (948, 'NISKIE', 'Aneta', false, 'Majewska', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (949, 'NISKIE', 'Iwona', false, 'Stępień', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (950, 'WYSOKIE', 'Kamil', true, 'Walczak', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (951, 'SREDNIE', 'Roman', false, 'Kamiński', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (952, 'SREDNIE', 'Dariusz', true, 'Walczak', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (953, 'NISKIE', 'Bożena', false, 'Król', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (954, 'NISKIE', 'Monika', false, 'Zając', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (955, 'WYSOKIE', 'Agata', true, 'Pawłowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (956, 'NISKIE', 'Krystyna', true, 'Michalska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (957, 'NISKIE', 'Natalia', false, 'Michalska', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (958, 'NISKIE', 'Marianna', false, 'Walczak', 'KOBIETA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (959, 'WYSOKIE', 'Iwona', false, 'Mazur', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (960, 'NISKIE', 'Michał', true, 'Malinowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (961, 'NISKIE', 'Halina', true, 'Wieczorek', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (962, 'NISKIE', 'Aneta', false, 'Wróbel', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (963, 'NISKIE', 'Karolina', true, 'Wójcik', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (964, 'WYSOKIE', 'Paulina', true, 'Stępień', 'KOBIETA', 'powyzej_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (965, 'NISKIE', 'Artur', false, 'Pawlak', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (966, 'WYSOKIE', 'Jan', true, 'Kowalski', 'MEZCZYZNA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (967, 'NISKIE', 'Artur', false, 'Michalski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (968, 'SREDNIE', 'Teresa', false, 'Lewandowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (969, 'SREDNIE', 'Agnieszka', true, 'Wojciechowska', 'KOBIETA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (970, 'WYSOKIE', 'Józef', true, 'Jaworski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (971, 'NISKIE', 'Piotr', false, 'Malinowski', 'MEZCZYZNA', 'powyzej_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (972, 'SREDNIE', 'Magdalena', false, 'Kwiatkowska', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (973, 'NISKIE', 'Ewa', false, 'Szymańska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (974, 'WYSOKIE', 'Paweł', false, 'Szymański', 'MEZCZYZNA', 'od_20_do_30', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (975, 'WYSOKIE', 'Stanisław', true, 'Dudek', 'MEZCZYZNA', 'od_40_do_50', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (976, 'NISKIE', 'Karolina', true, 'Piotrowska', 'KOBIETA', 'od_40_do_50', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (977, 'WYSOKIE', 'Mirosław', true, 'Wojciechowski', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (978, 'SREDNIE', 'Paulina', true, 'Dudek', 'KOBIETA', 'od_30_do_40', 'PODSTAWOWE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (979, 'SREDNIE', 'Mariusz', false, 'Dąbrowski', 'MEZCZYZNA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (980, 'NISKIE', 'Urszula', false, 'Olszewska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (981, 'SREDNIE', 'Renata', true, 'Stępień', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (982, 'WYSOKIE', 'Aleksandra', true, 'Mazur', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (983, 'SREDNIE', 'Jacek', false, 'Dudek', 'MEZCZYZNA', 'od_20_do_30', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (984, 'SREDNIE', 'Dorota', false, 'Pawlak', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (985, 'NISKIE', 'Mateusz', false, 'Kowalski', 'MEZCZYZNA', 'od_30_do_40', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (986, 'SREDNIE', 'Natalia', false, 'Malinowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (987, 'WYSOKIE', 'Wiesław', true, 'Dudek', 'MEZCZYZNA', 'od_50_do_60', 'SREDNIE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (988, 'SREDNIE', 'Dorota', false, 'Walczak', 'KOBIETA', 'powyzej_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (989, 'NISKIE', 'Jolanta', false, 'Wieczorek', 'KOBIETA', 'od_20_do_30', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (990, 'NISKIE', 'Teresa', true, 'Pawłowska', 'KOBIETA', 'od_30_do_40', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (991, 'WYSOKIE', 'Anna', true, 'Nowakowska', 'KOBIETA', 'od_20_do_30', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (992, 'NISKIE', 'Marta', false, 'Jabłońska', 'KOBIETA', 'od_50_do_60', 'SREDNIE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (993, 'SREDNIE', 'Aleksandra', false, 'Wieczorek', 'KOBIETA', 'od_30_do_40', 'SREDNIE', 'UMOWA_NA_CZAS_OKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (994, 'NISKIE', 'Joanna', true, 'Nowicka', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (995, 'WYSOKIE', 'Józef', true, 'Stępień', 'MEZCZYZNA', 'od_30_do_40', 'WYZSZE', 'UMOWA_O_DZIELO');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (996, 'WYSOKIE', 'Justyna', false, 'Nowakowska', 'KOBIETA', 'od_40_do_50', 'PODSTAWOWE', 'UMOWA_NA_CZAS_NIEOKRESLONY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (997, 'WYSOKIE', 'Sławomir', false, 'Nowakowski', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (998, 'NISKIE', 'Ryszard', false, 'Zając', 'MEZCZYZNA', 'od_50_do_60', 'WYZSZE', 'SAMOZATRUDNIENIE');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (999, 'WYSOKIE', 'Alicja', false, 'Pawłowska', 'KOBIETA', 'od_50_do_60', 'WYZSZE', 'BEZROBOTNY');
INSERT INTO klient (id, dochody, imie, kredyt, nazwisko, plec, wiek, wyksztalcenie, zatrudnienie) VALUES (1000, 'WYSOKIE', 'Dorota', true, 'Wieczorek', 'KOBIETA', 'od_50_do_60', 'PODSTAWOWE', 'UMOWA_NA_CZAS_OKRESLONY');


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 259
-- Name: klient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('klient_seq', 1000, true);


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 256
-- Name: produkt_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produkt_seq', 51, true);


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 257
-- Name: tranzakcja_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tranzakcja_seq', 1000, true);


--
-- TOC entry 2058 (class 2606 OID 72063)
-- Name: klient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY klient
    ADD CONSTRAINT klient_pkey PRIMARY KEY (id);


-- Completed on 2017-03-29 14:18:24

--
-- PostgreSQL database dump complete
--

