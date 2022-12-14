PGDMP         7            	    z            postgres    14.5    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    14023    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                nilumbra    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   nilumbra    false    3609            ?            1259    25195    coursemetasinmajors    TABLE     ?   CREATE TABLE public.coursemetasinmajors (
    id integer NOT NULL,
    major_id smallint NOT NULL,
    coursemeta_id integer NOT NULL
);
 '   DROP TABLE public.coursemetasinmajors;
       public         heap    nilumbra    false            ?            1259    25194 %   coursemetasinmajors_coursemeta_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.coursemetasinmajors_coursemeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.coursemetasinmajors_coursemeta_id_seq;
       public          nilumbra    false    224                       0    0 %   coursemetasinmajors_coursemeta_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.coursemetasinmajors_coursemeta_id_seq OWNED BY public.coursemetasinmajors.coursemeta_id;
          public          nilumbra    false    223            ?            1259    25192    coursemetasinmajors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.coursemetasinmajors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.coursemetasinmajors_id_seq;
       public          nilumbra    false    224                       0    0    coursemetasinmajors_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.coursemetasinmajors_id_seq OWNED BY public.coursemetasinmajors.id;
          public          nilumbra    false    221            ?            1259    25193     coursemetasinmajors_major_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.coursemetasinmajors_major_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.coursemetasinmajors_major_id_seq;
       public          nilumbra    false    224                       0    0     coursemetasinmajors_major_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.coursemetasinmajors_major_id_seq OWNED BY public.coursemetasinmajors.major_id;
          public          nilumbra    false    222            ~           2604    25198    coursemetasinmajors id    DEFAULT     ?   ALTER TABLE ONLY public.coursemetasinmajors ALTER COLUMN id SET DEFAULT nextval('public.coursemetasinmajors_id_seq'::regclass);
 E   ALTER TABLE public.coursemetasinmajors ALTER COLUMN id DROP DEFAULT;
       public          nilumbra    false    224    221    224                       2604    25199    coursemetasinmajors major_id    DEFAULT     ?   ALTER TABLE ONLY public.coursemetasinmajors ALTER COLUMN major_id SET DEFAULT nextval('public.coursemetasinmajors_major_id_seq'::regclass);
 K   ALTER TABLE public.coursemetasinmajors ALTER COLUMN major_id DROP DEFAULT;
       public          nilumbra    false    224    222    224            ?           2604    25200 !   coursemetasinmajors coursemeta_id    DEFAULT     ?   ALTER TABLE ONLY public.coursemetasinmajors ALTER COLUMN coursemeta_id SET DEFAULT nextval('public.coursemetasinmajors_coursemeta_id_seq'::regclass);
 P   ALTER TABLE public.coursemetasinmajors ALTER COLUMN coursemeta_id DROP DEFAULT;
       public          nilumbra    false    223    224    224                      0    25195    coursemetasinmajors 
   TABLE DATA           J   COPY public.coursemetasinmajors (id, major_id, coursemeta_id) FROM stdin;
    public          nilumbra    false    224   ?                  0    0 %   coursemetasinmajors_coursemeta_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.coursemetasinmajors_coursemeta_id_seq', 1, false);
          public          nilumbra    false    223                       0    0    coursemetasinmajors_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.coursemetasinmajors_id_seq', 339, true);
          public          nilumbra    false    221                        0    0     coursemetasinmajors_major_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.coursemetasinmajors_major_id_seq', 1, false);
          public          nilumbra    false    222            ?           2606    25202 ,   coursemetasinmajors coursemetasinmajors_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.coursemetasinmajors
    ADD CONSTRAINT coursemetasinmajors_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.coursemetasinmajors DROP CONSTRAINT coursemetasinmajors_pkey;
       public            nilumbra    false    224            ?           2606    25208 :   coursemetasinmajors coursemetasinmajors_coursemeta_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coursemetasinmajors
    ADD CONSTRAINT coursemetasinmajors_coursemeta_id_fkey FOREIGN KEY (coursemeta_id) REFERENCES public.coursemetas(id);
 d   ALTER TABLE ONLY public.coursemetasinmajors DROP CONSTRAINT coursemetasinmajors_coursemeta_id_fkey;
       public          nilumbra    false    224            ?           2606    25203 5   coursemetasinmajors coursemetasinmajors_major_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coursemetasinmajors
    ADD CONSTRAINT coursemetasinmajors_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(id);
 _   ALTER TABLE ONLY public.coursemetasinmajors DROP CONSTRAINT coursemetasinmajors_major_id_fkey;
       public          nilumbra    false    224                 x?%?Y?%!?/??#ท??utF֗Y"h?/y3Jm??V;OL5?Ƣ9???/?zqi???vE?????eq"?*???;#?ijkث?g_v??wD???5 ?OL?U0?Z?W?@֐???????@֎?????G+ڎVFO???k?=갧G??!G?ܘpߌ	?UL??cB}??9b.?|A?1??j??Ks???X??9??ձ??Z??L^???c?<?c?Ԝ??2????m??x?v`c??F?^??9ht#?h5???'?Ct??v?8Z?;???q?vƙ???[????8u?????^?yF\??b?wz???L???C=vsŽ????|??'?xP?????t6S? u????a>?:?g ?<??l?4?????ͫ???P[??T?ͫ????r<?L????TA???F%???Pտ͜m ???
5?|?J??Ct®?Һ?\???\???:.?Wv???,ت?lتWE!`?.?\??5??tsW?n?9&B7h%?J"?h-??k?:???VZ8??X?QQ??<?'w|??	??X????➲??UwV?߂?m74?dr]+9??+?r?W.?9?n????xLn???}|Q??????d?6???%???	???P??C?֑W??F?=???ڨ?p?=O"??*q?t?덠??T-N???q??T??L_(]?r?>???Ћ??uk惞??O\^Y??k+??????Ag?*NX??P*?Ry.J?T??3=??@)??R?O???NJj??K?x??0@u)?l@?Jb@i/?e|%?G?=?	ޯ?Xb?,???%x%?????Yi????ZXm%VM+9[ހ??*????'????ױ?????x'O????9><?Е??????̪?렪??]*KFj?L?AӦ??n???d??|Y???/F?b??'@??'BkX???b}6????/????lC?Y?????x0?#?~1???>??nI&6&? ƫu??`~`T?R???+E?U?*;?P?n'?
VO?J?T?,?,???.?R??/=U?ۿ]ul@?|?Q?J?]???_?u?/???o?.p2???8.??dГ9??9?'?R?9????@??4????`?~on?E!z????ޱz?+?~҆??C?o|?ۆ??4???	????=	?R?p?j'l?j???It:쇿?/????3	?8 ?"?W?~???????[?z(?V?ʼU??zl??[??ٺ?Z??:ҾeDՊ?#^i?m|??????u?v??"????6}6????c?R?gB?ّ?????"     