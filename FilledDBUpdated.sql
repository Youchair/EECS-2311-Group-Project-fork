PGDMP                      |            paw4    16.2    16.2 C               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16973    paw4    DATABASE        CREATE DATABASE paw4 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE paw4;
                postgres    false            �            1259    16974    age    TABLE     S   CREATE TABLE public.age (
    ageid integer NOT NULL,
    agename text NOT NULL
);
    DROP TABLE public.age;
       public         heap    postgres    false            �            1259    16979    dog    TABLE     �  CREATE TABLE public.dog (
    dogname character varying(50) NOT NULL,
    adopted boolean DEFAULT false NOT NULL,
    biography character varying(1000) NOT NULL,
    imagepath character varying(1000) NOT NULL,
    ageid integer NOT NULL,
    energylevelid integer NOT NULL,
    sizeid integer NOT NULL,
    sexid integer NOT NULL,
    posterid integer NOT NULL,
    dogid integer NOT NULL
);
    DROP TABLE public.dog;
       public         heap    postgres    false            �            1259    16985    dog_dogid_seq    SEQUENCE     �   CREATE SEQUENCE public.dog_dogid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dog_dogid_seq;
       public          postgres    false    216                       0    0    dog_dogid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dog_dogid_seq OWNED BY public.dog.dogid;
          public          postgres    false    217            �            1259    16986    dogtag    TABLE     E   CREATE TABLE public.dogtag (
    dogid integer,
    tagid integer
);
    DROP TABLE public.dogtag;
       public         heap    postgres    false            �            1259    16989    energylevel    TABLE     k   CREATE TABLE public.energylevel (
    energylevelid integer NOT NULL,
    enegrylevelname text NOT NULL
);
    DROP TABLE public.energylevel;
       public         heap    postgres    false            �            1259    16994 	   idealdogs    TABLE     �   CREATE TABLE public.idealdogs (
    dogid integer NOT NULL,
    ageid integer NOT NULL,
    energylevelid integer NOT NULL,
    sexid integer NOT NULL,
    sizeid integer NOT NULL,
    dogname text NOT NULL
);
    DROP TABLE public.idealdogs;
       public         heap    postgres    false            �            1259    16999    idealdogtag    TABLE     O   CREATE TABLE public.idealdogtag (
    idealdogid integer,
    tagid integer
);
    DROP TABLE public.idealdogtag;
       public         heap    postgres    false            �            1259    17002    poster    TABLE     z   CREATE TABLE public.poster (
    poster_id integer NOT NULL,
    displayname character varying(255),
    score integer
);
    DROP TABLE public.poster;
       public         heap    postgres    false            �            1259    17005    poster_poster_id_seq    SEQUENCE     �   CREATE SEQUENCE public.poster_poster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.poster_poster_id_seq;
       public          postgres    false    222                       0    0    poster_poster_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.poster_poster_id_seq OWNED BY public.poster.poster_id;
          public          postgres    false    223            �            1259    17006    sex    TABLE     S   CREATE TABLE public.sex (
    sexid integer NOT NULL,
    sexname text NOT NULL
);
    DROP TABLE public.sex;
       public         heap    postgres    false            �            1259    17011    size    TABLE     V   CREATE TABLE public.size (
    sizeid integer NOT NULL,
    sizename text NOT NULL
);
    DROP TABLE public.size;
       public         heap    postgres    false            �            1259    17016    tags    TABLE     t   CREATE TABLE public.tags (
    preference integer,
    tagname character varying(20),
    tagid integer NOT NULL
);
    DROP TABLE public.tags;
       public         heap    postgres    false            �            1259    17019    tags_tagid_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_tagid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tags_tagid_seq;
       public          postgres    false    226                       0    0    tags_tagid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tags_tagid_seq OWNED BY public.tags.tagid;
          public          postgres    false    227            �            1259    17020    userdogs    TABLE     H   CREATE TABLE public.userdogs (
    userid integer,
    dogid integer
);
    DROP TABLE public.userdogs;
       public         heap    postgres    false            �            1259    17023    users    TABLE     �   CREATE TABLE public.users (
    username character varying(50),
    userpassword character varying(50),
    email character varying(100),
    userid integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17026    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    229                       0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public          postgres    false    230            J           2604    17027 	   dog dogid    DEFAULT     f   ALTER TABLE ONLY public.dog ALTER COLUMN dogid SET DEFAULT nextval('public.dog_dogid_seq'::regclass);
 8   ALTER TABLE public.dog ALTER COLUMN dogid DROP DEFAULT;
       public          postgres    false    217    216            K           2604    17028    poster poster_id    DEFAULT     t   ALTER TABLE ONLY public.poster ALTER COLUMN poster_id SET DEFAULT nextval('public.poster_poster_id_seq'::regclass);
 ?   ALTER TABLE public.poster ALTER COLUMN poster_id DROP DEFAULT;
       public          postgres    false    223    222            L           2604    17029 
   tags tagid    DEFAULT     h   ALTER TABLE ONLY public.tags ALTER COLUMN tagid SET DEFAULT nextval('public.tags_tagid_seq'::regclass);
 9   ALTER TABLE public.tags ALTER COLUMN tagid DROP DEFAULT;
       public          postgres    false    227    226            M           2604    17030    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    230    229                      0    16974    age 
   TABLE DATA           -   COPY public.age (ageid, agename) FROM stdin;
    public          postgres    false    215   _G                 0    16979    dog 
   TABLE DATA           {   COPY public.dog (dogname, adopted, biography, imagepath, ageid, energylevelid, sizeid, sexid, posterid, dogid) FROM stdin;
    public          postgres    false    216   �G                 0    16986    dogtag 
   TABLE DATA           .   COPY public.dogtag (dogid, tagid) FROM stdin;
    public          postgres    false    218   L                 0    16989    energylevel 
   TABLE DATA           E   COPY public.energylevel (energylevelid, enegrylevelname) FROM stdin;
    public          postgres    false    219   �L                 0    16994 	   idealdogs 
   TABLE DATA           X   COPY public.idealdogs (dogid, ageid, energylevelid, sexid, sizeid, dogname) FROM stdin;
    public          postgres    false    220   M                 0    16999    idealdogtag 
   TABLE DATA           8   COPY public.idealdogtag (idealdogid, tagid) FROM stdin;
    public          postgres    false    221   .M       	          0    17002    poster 
   TABLE DATA           ?   COPY public.poster (poster_id, displayname, score) FROM stdin;
    public          postgres    false    222   KM                 0    17006    sex 
   TABLE DATA           -   COPY public.sex (sexid, sexname) FROM stdin;
    public          postgres    false    224   �M                 0    17011    size 
   TABLE DATA           0   COPY public.size (sizeid, sizename) FROM stdin;
    public          postgres    false    225   �M                 0    17016    tags 
   TABLE DATA           :   COPY public.tags (preference, tagname, tagid) FROM stdin;
    public          postgres    false    226   N                 0    17020    userdogs 
   TABLE DATA           1   COPY public.userdogs (userid, dogid) FROM stdin;
    public          postgres    false    228   �O                 0    17023    users 
   TABLE DATA           F   COPY public.users (username, userpassword, email, userid) FROM stdin;
    public          postgres    false    229   P                  0    0    dog_dogid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dog_dogid_seq', 52, true);
          public          postgres    false    217                       0    0    poster_poster_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.poster_poster_id_seq', 4, true);
          public          postgres    false    223                       0    0    tags_tagid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tags_tagid_seq', 48, true);
          public          postgres    false    227                       0    0    users_userid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_userid_seq', 1, true);
          public          postgres    false    230            O           2606    17032    age age_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.age
    ADD CONSTRAINT age_pkey PRIMARY KEY (ageid);
 6   ALTER TABLE ONLY public.age DROP CONSTRAINT age_pkey;
       public            postgres    false    215            [           2606    17034    poster displayname 
   CONSTRAINT     T   ALTER TABLE ONLY public.poster
    ADD CONSTRAINT displayname UNIQUE (displayname);
 <   ALTER TABLE ONLY public.poster DROP CONSTRAINT displayname;
       public            postgres    false    222            Q           2606    17036    dog dog_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT dog_pkey PRIMARY KEY (dogid);
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT dog_pkey;
       public            postgres    false    216            S           2606    17038    dogtag dogtagpair 
   CONSTRAINT     T   ALTER TABLE ONLY public.dogtag
    ADD CONSTRAINT dogtagpair UNIQUE (dogid, tagid);
 ;   ALTER TABLE ONLY public.dogtag DROP CONSTRAINT dogtagpair;
       public            postgres    false    218    218            U           2606    17040    energylevel energylevel_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.energylevel
    ADD CONSTRAINT energylevel_pkey PRIMARY KEY (energylevelid);
 F   ALTER TABLE ONLY public.energylevel DROP CONSTRAINT energylevel_pkey;
       public            postgres    false    219            W           2606    17042    idealdogs idealdogs_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.idealdogs
    ADD CONSTRAINT idealdogs_pkey PRIMARY KEY (dogid);
 B   ALTER TABLE ONLY public.idealdogs DROP CONSTRAINT idealdogs_pkey;
       public            postgres    false    220            Y           2606    17044    idealdogtag idealdogtagpair 
   CONSTRAINT     c   ALTER TABLE ONLY public.idealdogtag
    ADD CONSTRAINT idealdogtagpair UNIQUE (idealdogid, tagid);
 E   ALTER TABLE ONLY public.idealdogtag DROP CONSTRAINT idealdogtagpair;
       public            postgres    false    221    221            ]           2606    17046    poster poster_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.poster
    ADD CONSTRAINT poster_pkey PRIMARY KEY (poster_id);
 <   ALTER TABLE ONLY public.poster DROP CONSTRAINT poster_pkey;
       public            postgres    false    222            _           2606    17048    sex sex_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.sex
    ADD CONSTRAINT sex_pkey PRIMARY KEY (sexid);
 6   ALTER TABLE ONLY public.sex DROP CONSTRAINT sex_pkey;
       public            postgres    false    224            a           2606    17050    size size_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (sizeid);
 8   ALTER TABLE ONLY public.size DROP CONSTRAINT size_pkey;
       public            postgres    false    225            c           2606    17052    tags tags_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (tagid);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    226            e           2606    17054    userdogs userdogpair 
   CONSTRAINT     X   ALTER TABLE ONLY public.userdogs
    ADD CONSTRAINT userdogpair UNIQUE (userid, dogid);
 >   ALTER TABLE ONLY public.userdogs DROP CONSTRAINT userdogpair;
       public            postgres    false    228    228            g           2606    17056    users username 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT username UNIQUE (username);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT username;
       public            postgres    false    229            i           2606    17058    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229            j           2606    17059 	   dog ageid    FK CONSTRAINT     q   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT ageid FOREIGN KEY (ageid) REFERENCES public.age(ageid) NOT VALID;
 3   ALTER TABLE ONLY public.dog DROP CONSTRAINT ageid;
       public          postgres    false    216    215    4687            o           2606    17064    idealdogs dogid    FK CONSTRAINT     z   ALTER TABLE ONLY public.idealdogs
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.users(userid) NOT VALID;
 9   ALTER TABLE ONLY public.idealdogs DROP CONSTRAINT dogid;
       public          postgres    false    229    4713    220            k           2606    17069    dog energyid    FK CONSTRAINT     �   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT energyid FOREIGN KEY (energylevelid) REFERENCES public.energylevel(energylevelid) NOT VALID;
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT energyid;
       public          postgres    false    4693    216    219            p           2606    17074    idealdogtag idealdogid    FK CONSTRAINT     �   ALTER TABLE ONLY public.idealdogtag
    ADD CONSTRAINT idealdogid FOREIGN KEY (idealdogid) REFERENCES public.idealdogs(dogid) NOT VALID;
 @   ALTER TABLE ONLY public.idealdogtag DROP CONSTRAINT idealdogid;
       public          postgres    false    220    221    4695            l           2606    17079    dog posterid    FK CONSTRAINT     ~   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT posterid FOREIGN KEY (posterid) REFERENCES public.poster(poster_id) NOT VALID;
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT posterid;
       public          postgres    false    222    216    4701            m           2606    17084 	   dog sexid    FK CONSTRAINT     q   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT sexid FOREIGN KEY (sexid) REFERENCES public.sex(sexid) NOT VALID;
 3   ALTER TABLE ONLY public.dog DROP CONSTRAINT sexid;
       public          postgres    false    4703    224    216            n           2606    17089 
   dog sizeid    FK CONSTRAINT     u   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT sizeid FOREIGN KEY (sizeid) REFERENCES public.size(sizeid) NOT VALID;
 4   ALTER TABLE ONLY public.dog DROP CONSTRAINT sizeid;
       public          postgres    false    4705    216    225            r           2606    17094 
   tags tagid    FK CONSTRAINT     s   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tagid FOREIGN KEY (tagid) REFERENCES public.tags(tagid) NOT VALID;
 4   ALTER TABLE ONLY public.tags DROP CONSTRAINT tagid;
       public          postgres    false    226    226    4707            q           2606    17099    idealdogtag tagid    FK CONSTRAINT     p   ALTER TABLE ONLY public.idealdogtag
    ADD CONSTRAINT tagid FOREIGN KEY (tagid) REFERENCES public.tags(tagid);
 ;   ALTER TABLE ONLY public.idealdogtag DROP CONSTRAINT tagid;
       public          postgres    false    221    226    4707               Y   x�3�(-(�T0P(�W0�2�tL��I-NN�+Q0�q�JsJ��R̸�9}KJ�R �f U�\&���y��E
�
�\1z\\\ ���         *  x��Vɒ�6<�_�rW���Kn���2�J�U9���$,`�G����;֔4$�F��S{����mdc��6����k��O�,���<tߘ\��;Oѳ�!Ob��a�a孶Y^Э�k�mzm����WC�F�0������U����<l��;l����G�� ��﹍�Y9o2cv�̖�2���
��%�Ⱦ7��`�0�q���ԺԎ+h2�C�rܜ��'m�|p�c�ɫ�^���mK�O�4��؎X�[Z.,82�̞\O
p��n���@B�is>5��*�{�
��1�e?pԭ�Ϊ�T/͹^��&��{H�M>Y҅�Y��
�7;��9��Ϯ�J�>��OrΌE�����_�e\��75��� �1�Z��eM8o3�sƑ��м�\!�W�YǮ�,��=�.�^Z�W��@��(��_�"/��2�x_#@�����_�.�p����uP���s3��-y("�(��F6�u��e���~c1c�r��9Z5Qp)����t��-^�����aG�$c��!:/�轛h�v�
q�a_-Q*��i��N3p�R�ٴ�d:�����$a(�\"�Zdn�ӭ�dv8��0M��YI��k�!E	����}�:����,�{�"���1�GY��0FT�(��b�JҾ~No�O� �]�j�M�h����i�=Z�1w���\-y�Jo�w+�+ǚ['P�0A8��y}� "��L��l������$� �{s!q��SM�Ctڜ�5���f�z��6�R��j��8�Uw��-��z����l@�֌w�9Q�u�5��$;k�������;���JBL}������p����ޕ�EA���Jv�r_��}@ۚt���}�w Q�J�� �G�o�3�;p�O�x�#ɨ����)oo�rX�0T�}�>�փ�p�Iu�i����m��l�Pք��k�d'�в���^T��/���^"=	�V@ݫX~�<�?�$|��?[�~p�_*��LҐU5�iK�J����l\�EkcVa.u�ΗBH,gZ���C�ñ�{�4��+�         �   x��ˑ1�&�����\^�q��*h��
��*�r�bN�9�sF�a���eP�g�����x��ȴ��xo��Q����Q;��5���,y������DI>"|8�l�M^��|V<�N�)�
ś��EX�B�����x��#�8��������g�΋V��/"�K�5�         +   x�3��I���2���OI-J,I�2�t�K-JO-�L����� �,	�            x�3�4��̔����t�=... 9��            x������ � �      	   V   x��[
�  ��ݻ�E&��6򁏠۷�3B�OyϦ��\T�DU�-p���ËE��S+3���ވ��dwv<D��T            x�3��M�I�2�tK�1b���� :��         &   x�3��M���2��MM�,��2��I,JO����� �u�         �  x�e��n�0����t��4�AеŶ"C��f7���Bɐhg~���6 ؝H�P��
>GK�u3��
v�D�������lS�O!��b�7_l�����0��{y�x&�l'rX뤮����6:h�Ƣ3�D"}��>�Mo��lU��#��+���!�se����Gh�\���ΐ+���|��<���_s�:�������B�� ++i�$��I5�#�l{_(�[D�vR*�1�.K�(�GK����f(�����;(d���T�ُ�Z(Γp�(%9�X�!z(��]���ǉZ(Sl�ߝ��ɣo�|	�r�,n�
�S4q�R!w���i�$��iC�R��Ѹ0Q�r�
���8�j��8ن���߿�7h�O�쏩����`C���bVse�J��������e��ȈA��,����"	BԈ��%"B6� ��2m��`��b�D�4M�-��>d??eY����z            x������ � �            x��N,�L�442���4����� 9[Y     