PGDMP     )    9            	    z            postgres    14.5    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    14023    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                nilumbra    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   nilumbra    false    3606            ?            1259    16930    majors    TABLE     ?   CREATE TABLE public.majors (
    id smallint NOT NULL,
    code character(6),
    major character varying(150) NOT NULL,
    major_en character varying(150) NOT NULL,
    school_id smallint NOT NULL
);
    DROP TABLE public.majors;
       public         heap    nilumbra    false            ?            1259    16928    majors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.majors_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.majors_id_seq;
       public          nilumbra    false    213                       0    0    majors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.majors_id_seq OWNED BY public.majors.id;
          public          nilumbra    false    211            ?            1259    16929    majors_school_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.majors_school_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.majors_school_id_seq;
       public          nilumbra    false    213                       0    0    majors_school_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.majors_school_id_seq OWNED BY public.majors.school_id;
          public          nilumbra    false    212            ~           2604    16933 	   majors id    DEFAULT     f   ALTER TABLE ONLY public.majors ALTER COLUMN id SET DEFAULT nextval('public.majors_id_seq'::regclass);
 8   ALTER TABLE public.majors ALTER COLUMN id DROP DEFAULT;
       public          nilumbra    false    213    211    213                       2604    16934    majors school_id    DEFAULT     t   ALTER TABLE ONLY public.majors ALTER COLUMN school_id SET DEFAULT nextval('public.majors_school_id_seq'::regclass);
 ?   ALTER TABLE public.majors ALTER COLUMN school_id DROP DEFAULT;
       public          nilumbra    false    213    212    213                      0    16930    majors 
   TABLE DATA           F   COPY public.majors (id, code, major, major_en, school_id) FROM stdin;
    public          nilumbra    false    213   3                  0    0    majors_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.majors_id_seq', 7, true);
          public          nilumbra    false    211                       0    0    majors_school_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.majors_school_id_seq', 1, false);
          public          nilumbra    false    212            ?           2606    16936    majors majors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.majors DROP CONSTRAINT majors_pkey;
       public            nilumbra    false    213            ?           2606    16937    majors majors_school_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.schools(id);
 F   ALTER TABLE ONLY public.majors DROP CONSTRAINT majors_school_id_fkey;
       public          nilumbra    false    213               )  x?}??J?@?ד??'?u???+??MH?2`fd2?Z2?E?e???KKKA	??????-L? AJv??????蠵kAAz??d6?g?~<I?W?BG?>"?l?c?()V?Z(?躶:????P?3>?pT?*|R2Ra???
?Ayة?Ф?? l {١??'???}%?%j??fO???65?&0???dÛD??or??!?I?2?ᘒ??0̒?D??Oǥy'?????j???n???'㋤p\eTi?5??]Ho?by?P????Ĥ?/v????i???^?     