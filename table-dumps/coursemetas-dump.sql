PGDMP         6            	    z            postgres    14.5    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    14023    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                nilumbra    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   nilumbra    false    3608            �            1259    25177    coursemetas    TABLE       CREATE TABLE public.coursemetas (
    id integer NOT NULL,
    school_id smallint NOT NULL,
    subjectname character varying(300),
    subjectcode character varying(20),
    unit real,
    category text,
    target_year character varying(300),
    eleccompul smallint NOT NULL
);
    DROP TABLE public.coursemetas;
       public         heap    nilumbra    false            �            1259    25176    coursemetas_eleccompul_seq    SEQUENCE     �   CREATE SEQUENCE public.coursemetas_eleccompul_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.coursemetas_eleccompul_seq;
       public          nilumbra    false    220                       0    0    coursemetas_eleccompul_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.coursemetas_eleccompul_seq OWNED BY public.coursemetas.eleccompul;
          public          nilumbra    false    219            �            1259    25174    coursemetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coursemetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.coursemetas_id_seq;
       public          nilumbra    false    220                       0    0    coursemetas_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.coursemetas_id_seq OWNED BY public.coursemetas.id;
          public          nilumbra    false    217            �            1259    25175    coursemetas_school_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coursemetas_school_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.coursemetas_school_id_seq;
       public          nilumbra    false    220                       0    0    coursemetas_school_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.coursemetas_school_id_seq OWNED BY public.coursemetas.school_id;
          public          nilumbra    false    218            ~           2604    25180    coursemetas id    DEFAULT     p   ALTER TABLE ONLY public.coursemetas ALTER COLUMN id SET DEFAULT nextval('public.coursemetas_id_seq'::regclass);
 =   ALTER TABLE public.coursemetas ALTER COLUMN id DROP DEFAULT;
       public          nilumbra    false    220    217    220                       2604    25181    coursemetas school_id    DEFAULT     ~   ALTER TABLE ONLY public.coursemetas ALTER COLUMN school_id SET DEFAULT nextval('public.coursemetas_school_id_seq'::regclass);
 D   ALTER TABLE public.coursemetas ALTER COLUMN school_id DROP DEFAULT;
       public          nilumbra    false    218    220    220            �           2604    25182    coursemetas eleccompul    DEFAULT     �   ALTER TABLE ONLY public.coursemetas ALTER COLUMN eleccompul SET DEFAULT nextval('public.coursemetas_eleccompul_seq'::regclass);
 E   ALTER TABLE public.coursemetas ALTER COLUMN eleccompul DROP DEFAULT;
       public          nilumbra    false    220    219    220                      0    25177    coursemetas 
   TABLE DATA           w   COPY public.coursemetas (id, school_id, subjectname, subjectcode, unit, category, target_year, eleccompul) FROM stdin;
    public          nilumbra    false    220   (                  0    0    coursemetas_eleccompul_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.coursemetas_eleccompul_seq', 1, false);
          public          nilumbra    false    219                       0    0    coursemetas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.coursemetas_id_seq', 240, true);
          public          nilumbra    false    217                       0    0    coursemetas_school_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.coursemetas_school_id_seq', 1, false);
          public          nilumbra    false    218            �           2606    25186    coursemetas coursemetas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.coursemetas
    ADD CONSTRAINT coursemetas_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.coursemetas DROP CONSTRAINT coursemetas_pkey;
       public            nilumbra    false    220            �           2606    25187 &   coursemetas coursemetas_school_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coursemetas
    ADD CONSTRAINT coursemetas_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.schools(id);
 P   ALTER TABLE ONLY public.coursemetas DROP CONSTRAINT coursemetas_school_id_fkey;
       public          nilumbra    false    220               Q  x��\Is�>C�����=3 r�l'e�+����BK�̄&U\\� @�Hm��E%
�)R$eJ(�����俐����@b��*����}������_I���o���`���ћ?�����������U�����j�R-|p
������{����646<��s�N���ށ�����1����n�����G�\���C���H�/�~����|��������Cw��G������#=�����G g���>�kh����h�������ު�|�?2<vgthX̎h����۾� ����W-ޯ~���G�2�=K1�ѯR4�\ٝ��0���n��G�3T+���j��<�7ط���O)J� V�C&`�T���b9<z�����ja��N�@N���h�^�O�L����"E7s�I�ZQ�)-�~�`�Z�D�`��Va�H:BZ��+V���L:{���KD�: �AQ�Ø����/�S��=���2��6�Gѵ������G�e�גФ�v�P]R��bw`�މ���!Ka�-K!����v�����������5#v��Ht���[�*7��J�Ū~���hQ�(B�6\MNF����$s9K}"Y�f�2f��_��_/H%�����uro�!7>�PԤ�&���=�~��?���~�������B�sp)wA�Y�JB���'�GF{�C6�+l��s�qN�w,R#>'���x��88)��US�W�����g��
��?�_?vf&���U�y��>;y5E�&��H��";x.�X?�@��g��<�=���9�����@��?���%��P�����Pdhi}�8oJ��;r��I�s�ɢ��L��3�ti��%��1�p�U�/��잟���sÛ�HA��0[����+�&9�ñ�q㼼�L=v�yL�����'��-2�,SrU�:M� Z�SZ>̌`�T�7%���`A���$�g�|�f��8����M�j��}w[$^�1�\���zs��:��3�$�6�܊&��qc�ɫ���8E�r���̀N��_������9�ҹ8c���|��ФE� �T���t�י=�s,yNZޓ(��_��E�h�3���T�<�ƈ�f܅MGc��tz,��l�^N�X��b�����=D��7b��߸�/wy�D�jq��ȍ5Ԩ`&&L��:"�7W��30lCs���g���Z\#��Y֜<�T����"�=�$��)?�zղ��Ζ��V�oJ��<�"Vn�Z�x�����I[��;gn��l����Xg��[������}\�����՝�0����zb�HQW#g0���֞�5�3+=�43!
����u)��J3�)W�m�n�l��m9c-f+}	sPE���b�P�T�l��C�� �ZD�����I(2D%fX2fآM�P6�"�k� k�:�,;Vx���-L\�=C�2,#�ۜ���-�";�-�#�:!Z�		ӳ�L��E���� �F��⸳�K�+`S�Ye�.徰���82�(����Y)B������FiV���5ypQv���0�wi��J�"���b�-�cm��f�	�ŏ2퀕1�m��z�V���!S���%�fN�r�LVVD���e��ߞ?�dC��biEC����G�d��3��6ߟ�jM�LN��f�_7,=�V6CnX�pK��5K������Xc�vi��QLLN%���2�6���!j���р���ջ[��K����Q��Iow�4@���ɠ
�jid��)lNA�(2H�_�wk�#03܅�)�_�e��:����{h�|e v(��`6�8���D��-'|љ~R+�_g��Cwr�IN8"F�Z~�9]��]j��h����K�,�����=9#����.�w�Ys&�qoy+��j�L�d�U�DD{LY�
t��Go����8{t+�\�A��ߘLK����50!8ys��rj��t:���c8�5�<S�p�4:�Y�y~.�z��a�V:�4���+on�}Q�����s�WU�<H�5@�p��Sa�Ph����(VM]S�Ԝ�͋9l���rXM�ϰ������<<_���zך$�m@��eL+�
r@��I�[(�kƵy��K,���{%7���V����Wv��%�E<��pOS����v*��_���4�����N S4��s�;�Z$�]��$��O���4��z�wi��R_��� ����Z��T9x
Ѷa�Fb4IE�(����AY���%�Qx�j�G�8,H��˩���� ���(`���(*�#6h5/=	j�q��.�$M��n�]rW����/m)�ݐX~�4҃Q�;T�!(V������t�KPF��?����>�w�Lb��yS¨�'Er�l1l��Z�r4wί!�A�m2��}����*aJ	*ѐ �� ��T��+p�'�f�Զ���,T��1q^^���=.��Pr��)�U[�a��?x�۳� l/j�� �L���Gw����}�#H*�]�f��:1I��P;>��d���b��J0Dw�:N�ԼE`mh/L�4��	��$�ْ3���ݴ�^2��w�x�ʨ-*�$��;9AO4��h3w4��"�a�8�eV;P�%뒲���7̖�<i�-2��o�tLvCטB^ɛ$hL`�������鼲MOh,^%�9�w2�R��2�.� �L_�~��ט�r�k^ͫ͐�k^��ޝ1��<�Z$
�y��y>�<�/6�wǉi^��9g2���(S��(��gڡwA�A�l������Kg�g�jY��i.�?�։\���gG/Wto�	�� ���Ά�AGW1�C�S�����0C��$*�0Sƶ�|D2e~@*dʨtBt잷Dgjy8ʛ������0���se�8�����yCE=�@o6S1ңD	aAE�":`i�[���7�*�-��@B����MDO��8ʈ7�f�U"3w�C2c��3�r��iX����n�«8�~[�����l���T�:���8�8��u���� ����#ץ�[�!b=��gu*�!�4��	���:%��b����=��9t�@5���H����ܧS|�EPF�<u^45�hV���Da�F�O�A]����=E��y^��VH9PZԌl�F�&�YGn���ӡaV7\u�>A7���w��A��B��?u�n㱥{�*� ����V(��c��8Z�4>��UF�P������KC���^8�'v��]�6(*9���A�(����*A!��&6�u�"(	�����u�_ُ���v�P���PԊ��Ks����`; ���MQA䯟���OO`kx�U��LQD��R��q�?]�
"c!��k�ED� �-�D�vzN�u)BQA���C�s��P��[y����H-�u�W�{m�[�{*��NQY�N�EC"�,5� Eq��`�-:kS����'e8Ee��U.Va�����/4��2����秳QM!���D�л�f�(�+;��/SFV��I8����;fi��@AI�n�� �Y��B�w$T�	E���
	ݻx�Z�ڃ�co;/�W��H�.�*��˲�7|�I�_�> �<���5˟>�O��(�X� 5�;�����k�d��M��!���S��R��S�Y=�u���%E�?��	��h���	��9^�]��]�QT���,��$Z�'&|���V:k��4�"�w@��d��������	���g>������HΖ*Q8ڀ��!�����1�1�JծY(3B�x+�W��o�)3CX�������E�ҋNk2U��\�|ae�0Mn��v�v�Ӧj��]�|�M�i�ܧ���e�/8���?_�r����     