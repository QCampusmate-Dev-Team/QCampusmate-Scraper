PGDMP         :            	    z            postgres    14.5    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    14023    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                nilumbra    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   nilumbra    false    3603            ?            1259    16920    schools    TABLE     |   CREATE TABLE public.schools (
    id smallint NOT NULL,
    code character(6),
    school character varying(30) NOT NULL
);
    DROP TABLE public.schools;
       public         heap    nilumbra    false            ?            1259    16919    schools_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schools_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.schools_id_seq;
       public          nilumbra    false    210                       0    0    schools_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.schools_id_seq OWNED BY public.schools.id;
          public          nilumbra    false    209            ~           2604    16923 
   schools id    DEFAULT     h   ALTER TABLE ONLY public.schools ALTER COLUMN id SET DEFAULT nextval('public.schools_id_seq'::regclass);
 9   ALTER TABLE public.schools ALTER COLUMN id DROP DEFAULT;
       public          nilumbra    false    209    210    210                      0    16920    schools 
   TABLE DATA           3   COPY public.schools (id, code, school) FROM stdin;
    public          nilumbra    false    210                     0    0    schools_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.schools_id_seq', 1, false);
          public          nilumbra    false    209            ?           2606    16925    schools schools_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.schools DROP CONSTRAINT schools_pkey;
       public            nilumbra    false    210               ?   x?3??vuWPP?|:?ӝ;?M???i?????^?e????{6????e/?Wps??????
??&?>??`??S?B????? ??[{??耊?q;{?E'?A??9}]]?????tq??v=TȒ3?#$?b????????ۗ???Z!??v?X8Iƈ??=,??lCcN#? ??͋U?????Sx?g??=????|K???鏛?>n???y???\1z\\\ ?(?     