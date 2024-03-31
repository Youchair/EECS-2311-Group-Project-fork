PGDMP  5                    |           thebestoneyet    16.2    16.2 _    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    18277    thebestoneyet    DATABASE     �   CREATE DATABASE thebestoneyet WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE thebestoneyet;
                postgres    false                        3079    18278 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            I           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    18288    age    TABLE     S   CREATE TABLE public.age (
    ageid integer NOT NULL,
    agename text NOT NULL
);
    DROP TABLE public.age;
       public         heap    postgres    false            �            1259    18293 
   attributes    TABLE     h   CREATE TABLE public.attributes (
    attributetype integer NOT NULL,
    attributename text NOT NULL
);
    DROP TABLE public.attributes;
       public         heap    postgres    false            �            1259    18298    datesbooked    TABLE     �   CREATE TABLE public.datesbooked (
    userid integer NOT NULL,
    posterid integer NOT NULL,
    dogid integer NOT NULL,
    date date NOT NULL
);
    DROP TABLE public.datesbooked;
       public         heap    postgres    false            �            1259    18301    dog    TABLE     �  CREATE TABLE public.dog (
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
       public         heap    postgres    false            �            1259    18307    dog_dogid_seq    SEQUENCE     �   CREATE SEQUENCE public.dog_dogid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dog_dogid_seq;
       public          postgres    false    219            J           0    0    dog_dogid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dog_dogid_seq OWNED BY public.dog.dogid;
          public          postgres    false    220            �            1259    18308    dogtag    TABLE     E   CREATE TABLE public.dogtag (
    dogid integer,
    tagid integer
);
    DROP TABLE public.dogtag;
       public         heap    postgres    false            �            1259    18311    energylevel    TABLE     k   CREATE TABLE public.energylevel (
    energylevelid integer NOT NULL,
    enegrylevelname text NOT NULL
);
    DROP TABLE public.energylevel;
       public         heap    postgres    false            �            1259    18321    poster    TABLE       CREATE TABLE public.poster (
    poster_id integer NOT NULL,
    displayname character varying(255),
    score double precision,
    phone character varying(255),
    email character varying(255),
    balance double precision DEFAULT 0,
    numberofratings integer
);
    DROP TABLE public.poster;
       public         heap    postgres    false            �            1259    18327    poster_poster_id_seq    SEQUENCE     �   CREATE SEQUENCE public.poster_poster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.poster_poster_id_seq;
       public          postgres    false    223            K           0    0    poster_poster_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.poster_poster_id_seq OWNED BY public.poster.poster_id;
          public          postgres    false    224            �            1259    18328    sex    TABLE     S   CREATE TABLE public.sex (
    sexid integer NOT NULL,
    sexname text NOT NULL
);
    DROP TABLE public.sex;
       public         heap    postgres    false            �            1259    18333    size    TABLE     V   CREATE TABLE public.size (
    sizeid integer NOT NULL,
    sizename text NOT NULL
);
    DROP TABLE public.size;
       public         heap    postgres    false            �            1259    18338    tags    TABLE     t   CREATE TABLE public.tags (
    preference integer,
    tagname character varying(20),
    tagid integer NOT NULL
);
    DROP TABLE public.tags;
       public         heap    postgres    false            �            1259    18341    tags_tagid_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_tagid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tags_tagid_seq;
       public          postgres    false    227            L           0    0    tags_tagid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tags_tagid_seq OWNED BY public.tags.tagid;
          public          postgres    false    228            �            1259    18342    userattributepreferences    TABLE     �   CREATE TABLE public.userattributepreferences (
    userid integer NOT NULL,
    attributetype integer NOT NULL,
    attributeid integer NOT NULL
);
 ,   DROP TABLE public.userattributepreferences;
       public         heap    postgres    false            �            1259    18345    userdogs    TABLE     H   CREATE TABLE public.userdogs (
    userid integer,
    dogid integer
);
    DROP TABLE public.userdogs;
       public         heap    postgres    false            �            1259    18348    userpasseddogs    TABLE     N   CREATE TABLE public.userpasseddogs (
    userid integer,
    dogid integer
);
 "   DROP TABLE public.userpasseddogs;
       public         heap    postgres    false            �            1259    18351    userpayments    TABLE     �   CREATE TABLE public.userpayments (
    userid integer,
    paymentamount double precision,
    daysbetweenpayment integer,
    dogid integer,
    lastpaymentdate character varying NOT NULL,
    posterid integer
);
     DROP TABLE public.userpayments;
       public         heap    postgres    false            �            1259    18551    userpostersrated    TABLE     S   CREATE TABLE public.userpostersrated (
    userid integer,
    posterid integer
);
 $   DROP TABLE public.userpostersrated;
       public         heap    postgres    false            M           0    0    TABLE userpostersrated    COMMENT     U   COMMENT ON TABLE public.userpostersrated IS 'posters that a user has rated already';
          public          postgres    false    236            �            1259    18356    users    TABLE     �   CREATE TABLE public.users (
    username character varying(50),
    userpassword character varying(50),
    userid integer NOT NULL,
    balance double precision DEFAULT 0,
    email character varying(50)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    18360    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    233            N           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public          postgres    false    234            �            1259    18361    usertagpreferences    TABLE     R   CREATE TABLE public.usertagpreferences (
    userid integer,
    tagid integer
);
 &   DROP TABLE public.usertagpreferences;
       public         heap    postgres    false            _           2604    18364 	   dog dogid    DEFAULT     f   ALTER TABLE ONLY public.dog ALTER COLUMN dogid SET DEFAULT nextval('public.dog_dogid_seq'::regclass);
 8   ALTER TABLE public.dog ALTER COLUMN dogid DROP DEFAULT;
       public          postgres    false    220    219            `           2604    18365    poster poster_id    DEFAULT     t   ALTER TABLE ONLY public.poster ALTER COLUMN poster_id SET DEFAULT nextval('public.poster_poster_id_seq'::regclass);
 ?   ALTER TABLE public.poster ALTER COLUMN poster_id DROP DEFAULT;
       public          postgres    false    224    223            b           2604    18366 
   tags tagid    DEFAULT     h   ALTER TABLE ONLY public.tags ALTER COLUMN tagid SET DEFAULT nextval('public.tags_tagid_seq'::regclass);
 9   ALTER TABLE public.tags ALTER COLUMN tagid DROP DEFAULT;
       public          postgres    false    228    227            c           2604    18367    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    234    233            .          0    18288    age 
   TABLE DATA           -   COPY public.age (ageid, agename) FROM stdin;
    public          postgres    false    216   �j       /          0    18293 
   attributes 
   TABLE DATA           B   COPY public.attributes (attributetype, attributename) FROM stdin;
    public          postgres    false    217   Jk       0          0    18298    datesbooked 
   TABLE DATA           D   COPY public.datesbooked (userid, posterid, dogid, date) FROM stdin;
    public          postgres    false    218   �k       1          0    18301    dog 
   TABLE DATA           {   COPY public.dog (dogname, adopted, biography, imagepath, ageid, energylevelid, sizeid, sexid, posterid, dogid) FROM stdin;
    public          postgres    false    219   �k       3          0    18308    dogtag 
   TABLE DATA           .   COPY public.dogtag (dogid, tagid) FROM stdin;
    public          postgres    false    221   S�       4          0    18311    energylevel 
   TABLE DATA           E   COPY public.energylevel (energylevelid, enegrylevelname) FROM stdin;
    public          postgres    false    222   �m      5          0    18321    poster 
   TABLE DATA           g   COPY public.poster (poster_id, displayname, score, phone, email, balance, numberofratings) FROM stdin;
    public          postgres    false    223   �m      7          0    18328    sex 
   TABLE DATA           -   COPY public.sex (sexid, sexname) FROM stdin;
    public          postgres    false    225   s      8          0    18333    size 
   TABLE DATA           0   COPY public.size (sizeid, sizename) FROM stdin;
    public          postgres    false    226   .s      9          0    18338    tags 
   TABLE DATA           :   COPY public.tags (preference, tagname, tagid) FROM stdin;
    public          postgres    false    227   ws      ;          0    18342    userattributepreferences 
   TABLE DATA           V   COPY public.userattributepreferences (userid, attributetype, attributeid) FROM stdin;
    public          postgres    false    229   �u      <          0    18345    userdogs 
   TABLE DATA           1   COPY public.userdogs (userid, dogid) FROM stdin;
    public          postgres    false    230   �u      =          0    18348    userpasseddogs 
   TABLE DATA           7   COPY public.userpasseddogs (userid, dogid) FROM stdin;
    public          postgres    false    231   v      >          0    18351    userpayments 
   TABLE DATA           s   COPY public.userpayments (userid, paymentamount, daysbetweenpayment, dogid, lastpaymentdate, posterid) FROM stdin;
    public          postgres    false    232   7v      B          0    18551    userpostersrated 
   TABLE DATA           <   COPY public.userpostersrated (userid, posterid) FROM stdin;
    public          postgres    false    236   Tv      ?          0    18356    users 
   TABLE DATA           O   COPY public.users (username, userpassword, userid, balance, email) FROM stdin;
    public          postgres    false    233   wv      A          0    18361    usertagpreferences 
   TABLE DATA           ;   COPY public.usertagpreferences (userid, tagid) FROM stdin;
    public          postgres    false    235   �v      O           0    0    dog_dogid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.dog_dogid_seq', 1000, true);
          public          postgres    false    220            P           0    0    poster_poster_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.poster_poster_id_seq', 1, false);
          public          postgres    false    224            Q           0    0    tags_tagid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tags_tagid_seq', 48, true);
          public          postgres    false    228            R           0    0    users_userid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_userid_seq', 1, true);
          public          postgres    false    234            f           2606    18369    age age_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.age
    ADD CONSTRAINT age_pkey PRIMARY KEY (ageid);
 6   ALTER TABLE ONLY public.age DROP CONSTRAINT age_pkey;
       public            postgres    false    216            h           2606    18371    attributes attributes_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.attributes
    ADD CONSTRAINT attributes_pkey PRIMARY KEY (attributetype);
 D   ALTER TABLE ONLY public.attributes DROP CONSTRAINT attributes_pkey;
       public            postgres    false    217            t           2606    18373    poster displayname 
   CONSTRAINT     T   ALTER TABLE ONLY public.poster
    ADD CONSTRAINT displayname UNIQUE (displayname);
 <   ALTER TABLE ONLY public.poster DROP CONSTRAINT displayname;
       public            postgres    false    223            n           2606    18375    dog dog_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT dog_pkey PRIMARY KEY (dogid);
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT dog_pkey;
       public            postgres    false    219            j           2606    18377    datesbooked dogdatepairs 
   CONSTRAINT     d   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT dogdatepairs UNIQUE (posterid, dogid, date);
 B   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT dogdatepairs;
       public            postgres    false    218    218    218            p           2606    18379    dogtag dogtagpair 
   CONSTRAINT     T   ALTER TABLE ONLY public.dogtag
    ADD CONSTRAINT dogtagpair UNIQUE (dogid, tagid);
 ;   ALTER TABLE ONLY public.dogtag DROP CONSTRAINT dogtagpair;
       public            postgres    false    221    221            �           2606    18381    userpayments doguserpaymentpair 
   CONSTRAINT     c   ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT doguserpaymentpair UNIQUE (userid, dogid);
 I   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT doguserpaymentpair;
       public            postgres    false    232    232            r           2606    18383    energylevel energylevel_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.energylevel
    ADD CONSTRAINT energylevel_pkey PRIMARY KEY (energylevelid);
 F   ALTER TABLE ONLY public.energylevel DROP CONSTRAINT energylevel_pkey;
       public            postgres    false    222            v           2606    18387    poster poster_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.poster
    ADD CONSTRAINT poster_pkey PRIMARY KEY (poster_id);
 <   ALTER TABLE ONLY public.poster DROP CONSTRAINT poster_pkey;
       public            postgres    false    223            x           2606    18389    sex sex_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.sex
    ADD CONSTRAINT sex_pkey PRIMARY KEY (sexid);
 6   ALTER TABLE ONLY public.sex DROP CONSTRAINT sex_pkey;
       public            postgres    false    225            z           2606    18391    size size_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (sizeid);
 8   ALTER TABLE ONLY public.size DROP CONSTRAINT size_pkey;
       public            postgres    false    226            |           2606    18393    tags tags_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (tagid);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    227            �           2606    18543    userpasseddogs user dog pair 
   CONSTRAINT     z   ALTER TABLE ONLY public.userpasseddogs
    ADD CONSTRAINT "user dog pair" UNIQUE (userid, dogid) INCLUDE (userid, dogid);
 H   ALTER TABLE ONLY public.userpasseddogs DROP CONSTRAINT "user dog pair";
       public            postgres    false    231    231            �           2606    18555 !   userpostersrated user poster pair 
   CONSTRAINT     �   ALTER TABLE ONLY public.userpostersrated
    ADD CONSTRAINT "user poster pair" UNIQUE (userid, posterid) INCLUDE (userid, posterid);
 M   ALTER TABLE ONLY public.userpostersrated DROP CONSTRAINT "user poster pair";
       public            postgres    false    236    236            ~           2606    18395 +   userattributepreferences userattributepairs 
   CONSTRAINT     �   ALTER TABLE ONLY public.userattributepreferences
    ADD CONSTRAINT userattributepairs UNIQUE (userid, attributetype, attributeid);
 U   ALTER TABLE ONLY public.userattributepreferences DROP CONSTRAINT userattributepairs;
       public            postgres    false    229    229    229            l           2606    18397    datesbooked userdatepairs 
   CONSTRAINT     m   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT userdatepairs UNIQUE (userid, posterid, dogid, date);
 C   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT userdatepairs;
       public            postgres    false    218    218    218    218            �           2606    18399    userdogs userdogpair 
   CONSTRAINT     X   ALTER TABLE ONLY public.userdogs
    ADD CONSTRAINT userdogpair UNIQUE (userid, dogid);
 >   ALTER TABLE ONLY public.userdogs DROP CONSTRAINT userdogpair;
       public            postgres    false    230    230            �           2606    18401    users username 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT username UNIQUE (username);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT username;
       public            postgres    false    233            �           2606    18403    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    233            �           2606    18405    usertagpreferences usertagpair 
   CONSTRAINT     b   ALTER TABLE ONLY public.usertagpreferences
    ADD CONSTRAINT usertagpair UNIQUE (userid, tagid);
 H   ALTER TABLE ONLY public.usertagpreferences DROP CONSTRAINT usertagpair;
       public            postgres    false    235    235            �           2606    18406 	   dog ageid    FK CONSTRAINT     q   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT ageid FOREIGN KEY (ageid) REFERENCES public.age(ageid) NOT VALID;
 3   ALTER TABLE ONLY public.dog DROP CONSTRAINT ageid;
       public          postgres    false    219    4710    216            �           2606    18411 &   userattributepreferences attributetype    FK CONSTRAINT     �   ALTER TABLE ONLY public.userattributepreferences
    ADD CONSTRAINT attributetype FOREIGN KEY (attributetype) REFERENCES public.attributes(attributetype) NOT VALID;
 P   ALTER TABLE ONLY public.userattributepreferences DROP CONSTRAINT attributetype;
       public          postgres    false    229    4712    217            �           2606    18421    userpasseddogs dogid    FK CONSTRAINT     r   ALTER TABLE ONLY public.userpasseddogs
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.dog(dogid);
 >   ALTER TABLE ONLY public.userpasseddogs DROP CONSTRAINT dogid;
       public          postgres    false    231    4718    219            �           2606    18426    datesbooked dogid    FK CONSTRAINT     o   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.dog(dogid);
 ;   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT dogid;
       public          postgres    false    219    4718    218            �           2606    18431    userpayments dogid    FK CONSTRAINT     z   ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.dog(dogid) NOT VALID;
 <   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT dogid;
       public          postgres    false    232    4718    219            �           2606    18436    dog energyid    FK CONSTRAINT     �   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT energyid FOREIGN KEY (energylevelid) REFERENCES public.energylevel(energylevelid) NOT VALID;
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT energyid;
       public          postgres    false    219    4722    222            �           2606    18441    dog posterid    FK CONSTRAINT     ~   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT posterid FOREIGN KEY (posterid) REFERENCES public.poster(poster_id) NOT VALID;
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT posterid;
       public          postgres    false    219    4726    223            �           2606    18446    datesbooked posterid    FK CONSTRAINT     |   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT posterid FOREIGN KEY (posterid) REFERENCES public.poster(poster_id);
 >   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT posterid;
       public          postgres    false    218    4726    223            �           2606    18451    userpayments posterid    FK CONSTRAINT     �   ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT posterid FOREIGN KEY (posterid) REFERENCES public.poster(poster_id) NOT VALID;
 ?   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT posterid;
       public          postgres    false    223    4726    232            �           2606    18456 	   dog sexid    FK CONSTRAINT     q   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT sexid FOREIGN KEY (sexid) REFERENCES public.sex(sexid) NOT VALID;
 3   ALTER TABLE ONLY public.dog DROP CONSTRAINT sexid;
       public          postgres    false    4728    225    219            �           2606    18461 
   dog sizeid    FK CONSTRAINT     u   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT sizeid FOREIGN KEY (sizeid) REFERENCES public.size(sizeid) NOT VALID;
 4   ALTER TABLE ONLY public.dog DROP CONSTRAINT sizeid;
       public          postgres    false    226    219    4730            �           2606    18466 
   tags tagid    FK CONSTRAINT     s   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tagid FOREIGN KEY (tagid) REFERENCES public.tags(tagid) NOT VALID;
 4   ALTER TABLE ONLY public.tags DROP CONSTRAINT tagid;
       public          postgres    false    4732    227    227            �           2606    18471    usertagpreferences tagid    FK CONSTRAINT     w   ALTER TABLE ONLY public.usertagpreferences
    ADD CONSTRAINT tagid FOREIGN KEY (tagid) REFERENCES public.tags(tagid);
 B   ALTER TABLE ONLY public.usertagpreferences DROP CONSTRAINT tagid;
       public          postgres    false    227    4732    235            �           2606    18476    userpasseddogs userid    FK CONSTRAINT     w   ALTER TABLE ONLY public.userpasseddogs
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid);
 ?   ALTER TABLE ONLY public.userpasseddogs DROP CONSTRAINT userid;
       public          postgres    false    233    231    4744            �           2606    18481    userattributepreferences userid    FK CONSTRAINT     �   ALTER TABLE ONLY public.userattributepreferences
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid) NOT VALID;
 I   ALTER TABLE ONLY public.userattributepreferences DROP CONSTRAINT userid;
       public          postgres    false    233    4744    229            �           2606    18486    usertagpreferences userid    FK CONSTRAINT     �   ALTER TABLE ONLY public.usertagpreferences
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid) NOT VALID;
 C   ALTER TABLE ONLY public.usertagpreferences DROP CONSTRAINT userid;
       public          postgres    false    235    4744    233            �           2606    18491    datesbooked userid    FK CONSTRAINT     t   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid);
 <   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT userid;
       public          postgres    false    233    4744    218            �           2606    18496    userpayments userid    FK CONSTRAINT        ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid) NOT VALID;
 =   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT userid;
       public          postgres    false    4744    233    232            .   Y   x�3�(-(�T0P(�W0�2�tL��I-NN�+Q0�q�JsJ��R̸�9}KJ�R �f U�\&���y��E
�
�\1z\\\ ���      /   .   x�3�LLO�2�,N��2�L�K-J��I-K��2�,άJ����� �5
�      0      x������ � �      1      x��ے�F�-�\�
��Z��ĵ_:$�m�-�u$��~C��"\$�M*���g��;_r�%o Y*^@P9z-LɉD��ys����._]�\}�F�ey3Z���4�b���*�ݼ\g��t=*��U^UE�(��h��u��a�{���2x?�)Wpu����Q��l�W�yV��.�|o��h�-�d�x]��U����/��|bT��.V�|6O�
>�-&��^T���a�jR.�RL��k�����S�x�Z���xt3ˊ�$-Ge�M�y���M1��^���s[��a�?�<�ͫ����"���핸�����s~�W�U=�a��� �F�|]���h��������y:e��|T��J7�)(r���i�b������V��b1����0�U9��)Z��Ÿ���)&�b]�����u6�{�V����->-�niv�=��_�a��|i�q�f���v�%������X��u~[,���i��+�&HDW��>[U09�Ҝ���:�����dZ����ٮ�/��rIwY/�A,x��VѼ�;�gw���zt]ܚ�\��$|1�i�OLp1W�*_dxףE+4��~H3�_��uV�^�g�����Y9����,�͂��,�WL��6{��v����(����{`U.`�d����1L�z�񣘗p?4w�E�X��G�.�q]�7恶�m6�ƴ���x�q����\�<Ee5/a��ʹ|?������7N[C�)?NN>��Vw�i���l6�&_`5֫'g)PKŃ)r�|q8�W `K�И�8k�՗�e�'0j���|_�f�F�`T����@�j��
�ep�e������]��7}��h<��q��a,��z ��g�$���V�Ie�6+`��9��iFX�OLCB���j�῞:��ٗlR�jy��O��(�(/�k_>���e9�w��ƀ݂������n�| )�8��l6M�`��0z�t�G	�`�<+\���u�u��8ǵD߶^��)��?�5�,N�5/�f~�����U�ҿ�F��'i�*���@��c���
�**�g��UD��.'��S{L�i�?�-r��Ť@5�*��`�H5p��vT��T+f�����>C�v�M�6f0�\#�tJ�E~lR�lT�7�{�Oi�JRO�������1���נ_����/����{���ȸ��
���*_��.a��o&�l�A�����(���T'���嬸Ç2˾�N��4]���=��Ѽ���T��7��<�e���& Q�'���<R��z&�#�3�p���3��O*Oy�xt��^p�石Y�,��"��ŪX����wËQ߃+�NN�3���V�D�i��p3�,z�v��Z�i5-�Jм�#�[ ��v5�苑���~	��j� ����	,�9>ԩԖ�i�݇_7;�y�����@��)Cu�`�uʓs�v��*�ʋ�R�MvW���2���ٳ��!��6i[(Z�����/Ǩ�kP	���ViW�Ӆ�O�e^.g|�ړfΛr�nMK�U�4C�N�9��LG>�h*�a�}��(�!by:�v���<�a����R�[<	��x��g3���9�}�'��l�IH*�l�*�d36G
x�8��x����5�F�WId�Ѽ/в����حrk���V�R>�$m�1��qR�N#�S�C��bOZ&.5<��:�|9MOSv���._���f�_0Z&5)���j��jY��G;_�3�zlV�iXݽ�GO���9l�:�S7�G��*�%eBw}3+�<��{0�q�J8fy�x@�-���A��u�"�1�������^�'*��Uy���6V1����3�BWnA�$>��j�GA�
^�����B�Z��5m��������z��a��}��3.�+�zo+
#����r��~a9�-�����'O�H?g<�<�Ȍ1xe���Z�Kx���4�hѣ��n$�`�Đ(�lj�a2/�.�/^K��[����V4#Z@�vW�~,-SA�3��8��9�R�8��a�����v�KQ���R/������%t>O��5H��Z����-��I�ݗ����w��C��R�1�.�ĊM-%뜆�0��"��/�;������d��=��5��0�~�+�!/.�-���ID��M�����X�ZCc/�p��$<ɒl��	z���̹s6�_��(� V�*z������6��~e�}<g���V�3�~��֣\6("��,��(o�e�!�j� g�m���9�m�&v>��)Yn|�M&��|�һ�bݔ%<L0��&]��[m�����^�o�Υuv��sZ�̲/�&��Qp�NZ�����:���*9m7�J�dH9��}�-��&��z���hz���� ͇�I���ft���Y�;�G+�� Y�x�a$��om뽜}av�b{�#M�F�Eqs�^�j�k�^��/�����[4 ��,��$���E�����,'�1a�����5l�<��fu�E_y��a���(�P�h���u��ªᕊIXZh,���\������PI�ͧ[t�F�PP��9f�Z
C<_��0��a�Ei��$�ܛ�&�-��Ţ"�-��T����-��';,$m��y� ��I���
h���%���̕CIoP%W�,0������_��ϫ~t��G��Wh�YQ3�6��e\�(r6kh�u�������pHè��Y8y"����z�e�+u�k9_�	�T��:�6��>ز5�Zgt�4����$U�}��6b��U	�X��,���[庆w^.�Κ�0����=\J�)ZrM{�Ol��h��Y�5��y#W�p|\��;��
�)���R>R���?5O�\��Dx��`V�Þa��y�*���-\a`���|�6�ih�M{M�z�g�����3'�'YMtZ�V�ᣣ������޲��2�J"���2��Šc���[k&�]��K�G� �bG��Ҩl�����+���ĕ��J�>v��֤��XPPZ�P�*�l��g�����vm���q��x;�o$�9���MF�0�o[3!3r������#<$�<��T���c�����TJ���h#,��y_����w����AG� ���ZR�n	psl��M���W=��<�m
����FF�9+Kֹ��O�i�/��a�Fpd��/_�V�U�<���E�����?��Fyx;����u+��+ޝxc{r�
��
p켂An_��cA���?
��x�պ���C���>%'���p���3L<�d��c/��YKC)�{^'��濝�����g��猞��'
�r��B���:�`���
�0S(�i&���)ZW0Y���b|�5�_�)̘�vpI��G&����T~t%<�S��X�l���݁���3sM!����r� �yF�F?0p���y���#f�����(�2�B�|x���J�샥��ڕ�s����$�;ϗ�ޅ/���]��Z��7%X��R�c�z����O�b���1კ;�̩�X�r�(QW�+��Hr%�"\�Q�}q7@����}L#�ZXA�����[J��KS!U�2_��+_�X+8/��bYJM��](䓶O4a��`\kCx���n��x+|��u=�a����6�&-F��v�C��r��0[�ו	T�m=b�����=L�(1,3Xe��w��,ч��-	_aK6�8xs�����9������`��W�����T�΄-���b',6�ra�Aj�o�ϘX@��gK����C�%�iz[ӈ��j������f3I�����m|��#3"�7�t����U���v֜�1B����3���OX`?(��	�X���~�H���y;d��2?y���p-��I�61�����u>�	3�5rI���v�4��&?���Jl��U�9�W%�o�*]����~�!}�j�����@����4�|4AJFkk*C�p^��=����qo�`J)��-�f�u���Pa�mFW^�r8�a����2&P�T���a>�T�j�w��,Sk���K �ϼ�^�c�"�
�y^m(7V>�e�D�)x�+3��_��B�كk���N=<>	͛՛����36�r�q
Z0    �
Å������
�K�Y�D S�����8��_�#5B���S������v���L�����@��o�Y��$|{�P�%���o�0D��i(_�Dg�`��苎��\��M�2��K �s�$,��h�@�U�rb�M�����.z+I�J'tM|Dο�Y��g8��ѫ&d�vɌ	%�B�!�:� �aU#�ք7���A����i1���O��p#���b�.�%^� i�`�Z���v�NN��;���C{vp��v�]*�7��r��֡��UBr���~t� �k<�6�0�%��H��3�U�Z�/L(����Akw�����\�pG-d&�O���yS����G^]�ek�ґ>����6	�T�S
s5A��].ª�>�*'j���*t��eE.-���X� ,����VI(�k'��m~PXhg�t��v� T(l��#�����E�néY`R�h�R�U�a��IA�n�~���Z�지:�:�=�^���K6ƣ�쒣�k/������}�Xz�Ô[Lm'X�G��c&=�����2�6�Vݬ�1�jܨ�Q��8��z5�0?���L[E�»��#��l�^S�GW�p^g�X���׋���S��'�9�O�FT:�`ܷv%�o�2v �T�B��7.�|�R����n�{أ�K,��ê���ִ��C:�^�
�S�r���J���LK�A�����\��6���S5�pt��Q@�" ,��y��_���5�j���/����*r�>�c�D���xr���iuMp��	�}~���q�c�
���w>sY�B�� k��nK�n�H��s�!m�,m,��?�b� ȕ�g�~d9���`�'ٌ���'�����<�S"e�D�:{P�;��E�$3s���h����DO�U$���a1�DK:�o@C��2X�5V�`��源B��1��B�Vt\�p�ŧa����%(::�(����%��g� I�-ϳ�El.5���3���H�N�?�<��*
�w9]�	�O�eOK�t�_>~qYv���T���#b
�߈���E��q���7����ΛrA0Sz�9C�Ϻ���Kz?J�_J2c�ex'Iݵ�)\��&L�{�����:_�U�C���B�s2����0*���2r/��]k*����P�vngĮt�|e��V�����g��u]w�J�c��@o"�V]Y�Y��+��(u��ܬ���IUM��.�B�2��O�w>?TgDo.�b"5��4&$�	XLDӶ��
�$��4�`\9z4�����jR��I�<W%�uuM8�g3����$�%o�`x��u\���{X��,>�섯-����qd�i�dqj��@�j�V 3+_;ﳱ�n��4c0s���̄����i܋�!�8q>��OaR�<~�|�KUN`)ǩ�k-��,9��E����0���˿ �����Ae�-�6�V��|�O�fi���8ߊ��9�R�8�@�'���,�s�T�I��vW�L����M��F�0�J����w�}�<5�29>�^%�MFl;jxƎa#>�؉T�?I3l��6��ֿ�j�{R�Ƶp9�D&�ݘ�- ��C­��ѐp7��A��Ék�I�oz$iN�q���S����|Or�&�'�Yw�_%
#d:�%5LhU|�(��dݞZ�S 4�|s[���m�������оfyi��� �(���I^#d�bڬ���Σf��-�Z,tJ�c,X�:o��6��rX�n�E��W��|z�,򽹛�Cg�aL:J�`w����z��Y�8Y�ng�Z1QP`�	�M}Gp��N���R�XǶH�Wi`B�|1@�)xǉM_��q�����],2�WIЇΪ$|�ꊫ4�4�L"�]���V��:�ʑ�4v���DG/�7L���p����v%}� e�h� }����+ݰD� o��-�T�%���@A[u�n������9{��uP��u	LF��K o�`��wI允�H��NS$A_<0	��U����',�����%���|��p趺"É�.VI{���?5�Zm��������g�uD����$`�c�Lm�"
���}��߲+�N�v��|��d�M����%�Xs���b��#Q��~�/��"��[��*��ڭ\0���%U����N#��T+Te�p�
���٧�~��x���l����zi��s)�H�bD$�j�|.�����#��Dd�$͑�H !���y���'(�n-�ë���`�I�db
; ���Q�kڟ��:����-�X_�W�?n�9~�8vH��v����=$�y�Z�U�� �)@Ko�ʋ�P�s𢛅#��Mt$����P�#2(}����O��	p�R石/EE�ȾU��Z�~��P'S=n��Q�-tlL�;~;��)p3`��<%mS�$$���՞��L������|�yJ�2d3��?��Zm:�B�7����r��)$�ѥ)���
�x^`�lm;���AVd���͞n����l�D��u�cZU=�8%�ՑR�w��N�l0:Y�٪�p��'$6��#:���pY8`�3e3�h��<��W�(§7�>�����IX��c�&��R�љ�谲���&aR?��Ƒv��&�ٍ��n��1We���|h/q>�̶�h��k���֔��]P�:��祆 �Hv�-e��J�L��f-S�<����e�H�p�λ�χ7��-V(����(���X�4������0J�wh�G�9=���i�غa��´SCO��-¾Ff�U��������Ysp��X�u���k��Q����t�Ic��7��;�y��8��5qKwxD��M���E~�?4Dw� ���GU�S��.r~������KfU��B��K@����,�LK |Ӱ��%8?�d�Kv�ʘN�B�>�n$l�w���)f:�Au�$���R�TI��3�.L�^4	&T�l�Vx�� ��n�0W����H�����Z� #.]�1�����U�[?u~����9�c�:�I���kO�zǩ4�p��+�~��w)��Y�Ϣ����7�hO�}�{�����ڴc�7h�zp~ɻ����s�Q���	Ἦ���}�i�̮�~�:I؅��
��fK�D�m'{Rh��񰛖5��m;jVb�k8�^�@pAn$8ǵ2-aF��x�g��	y��̊���{�i<�?���k�c� �:[�}	s��o����q%?;���0��H1��߅�������=G�y��?�j;���N�R\������T��H}{ȉZT���$PW'jj����X���i�����kP�à5�
�J���F.l�l/:/vHK����a�P��/In�y:p��U5���<���l �9�Y����u�\���D5�)*ЍT�t��~0D�3P
\p�%9�(h4���}+#��F�|VN�'����b2�x�ǚ�i|��x˒?RL���XU@��|b�Rg/^�AAO����6OT*p��sx0������P�iyO0iBM�,8#%���\I�.u�T�§�#�
x��*�w?]���:O�	 �C�u�um�.��8�,�)<P�""�(�DpD����ד�K�I�f�D��G�y&Ʀ��$������gz�ЛEP���0��J�ܷ,� q~Զ�q�8���:� 
{߀�VX�Evn/H�1����F+�0z��Z��81���%���ǖ���=�o,2��W��I5)A��˭��zJ�7�����%t���7l���]��9����������X[���`����P��8t4�)*�SR�R7C��.yMS�Ou�ش�o�Yi�0�{o���]��r�����Qpy�p>�Ϻ�@ģ���,�A:Z����,��u8���`9O���`]�[���y_�h��k�\Z�~��b�Ƥ�"�#���XlT>�raZ-��-p�Χ�6[��!��*QLu�(�ä&ί h+k�Cό�X��D�B0��
�?��~t[��H{��j,r��W8��7^��AJ}l̓,iUH[L�F�j    �%ih��)�����4j�+��N����P-���a�H�du���]�������X�G1��G`#�r�t1 9)h�.�g�Js�xQ輞ըL���	�����S3Ԣڽ*ʻ�E7�V�"uk����9��C�,)�i�Kk�@a��Xє��2�)ɻ�%�,���w%���Nnz}�%�|��-z�)�!썓:�����}�t�����������׏7B֗B�'&)4��|*V/���e��]�&��=��\���k}�!&�u�Ͷle�m��2w�q�	0ÄUR��$ޱ�/�`�lI6+[�称�Q[�#�w ��k��s���!բ����0�K�
'�^��l� V����(zH�q9:�8����9d�YE]�B�#�5ֿS�<����Xo��N�)LE��5�2�©��:�A�EqC䠷3�F*���塍?��Zm���US�W^�S�:VM�%��n�I܄0���dHU��Ǫ�%�x���z[�:gv����$�Z���&���7QŢ�nR�*�;������z����t�n���?qjqN5�GsO$�(�=D�B�<��������!�4~���s�X����?	r�JNG����]�M�Y7G`��L��G��LR��Ő�%R���B��9�:�D(BɄG��b��zm����3G'-�ȳ,�Ƶ���6�N5=[ïs��eN�m����A%r���\�F[QV��a����7��w�����ʋH�W���f4�l8��nw"`����\��o�����v���'�t'�)�ɉ���b���Xc�Z�.�<*�i�q3N-��z��l��uzs�����	�U�Uj2_�5���K�4Vפ����}��ս�<�;�KR�?9�+��d����%�h����1Cb�D�K����}2��E0��˗ß&&��*&R�y�+�T-�C������z���i����o�vc��%[1��~���B�
�K�F��`�`z��tg8�H�zUuT��b� ���J�V>���b��r���s'�4��@���:��^;�~���c�j��`	�\S	�V��ޛ|*�j�Om:EH��i��8d_7��S�O�v�=�u�͕ػs�o��;�/�l�3��|{�7(kWCZ�����Ϝ�#�+k�|�ՌB��k1
���Űup���ֺ���"E��n3������_������TW��7�N.�l���>8�����
��h�4z�����3�#�/�
�/+��\�Ɓ��?�(tk?����W���}����\?�d!��,M���&��(r>��%nLz@O��|�]7Epuf�c@���λ��j��S]���M;:rD�}M$��nRO�����&��8�薕5���/0_3Bc�"ߚ�҆%o��&W5/���)U��}����fjYHP=��=�	���7Z�| e\#&�/���-�`�����i"���"3m%�opG�an;��=����<b��%��uM>f�kش!�0="����V�g��xE���=S�ӄ��{B�V}�w��ŤhyN4֫�%I�Y�R�z&d��G4]=�T�x�Xg��}/p~�V7E>���./�#����-��g8��Ȇ��U������G]��VI��g�F'��bO��X_qx�Z:�C�WXKK��:{P�
E�Kf�Za�V�K�TL�w�c����%*�������^����E��`E�� )���E�
��--Ӵ�C5�
�1+`�"

�ܢ֙�G���w��$U��K�F�bv�$�3с��g�m��(g����i���J�aߋ�z����"F�Р3����xf�������L�沆�!�{�=�N�=����4��^K84���H��0�:��q���]�S6�_�#w��Q ~�%���W^���6yB�ɾ�|�1���>H�ƺ*��������O�l�ԅ�j�-u���(�/A�8U����E��/�\lǮ5���������M�RwVB�&��u�BX�<����+�����r[u Ǧ(��
e���#$¯֦W�|{d|]w?�<�.�;K�݋\+zEp%ߏ��}˔�(�}�����68!i�O�v��h��h3 ��+l��dO��5}
��~��L�"��-?�3�Q�o '��W+�U�((	�!:�����s�����dVL�BmjpA��^a��v��w;��ɪ�w���.s��+�7,!���D<s���F����$'~	Z��l��w{>��x	W������@݋�>q���m�H�R��3��S��Κ`�1.��1����4��
�~�!"P�=�+�0�ZA ��׬���Y���q)�?�������2?~�����^�w'�W�n7�E�"�Cן�eo��M��N�<�׎X�ݥ|;�@��NU:�L=�2��@5(����Ht�Ry����H�3�<���t���/R��Yr��|y��yج�@�4��vy�Z���\��P�n����>`s��y��:%�f�Dc"��$�é'������-1�����j����Q� ��w'�T�� �r�Xz�����h~�9G4:�Cu0K�4r��mz�`��O�����N3.��-�f���΃}o�-۳r�����Ϝe��b�ՇsŲ��3�D���,��V�G�*�b{؛�-V�7H�)�:o��=�9<�,�B1+�)��y凮���W��h��y0:��*+�tI%]�gZ�P��Y���O��bb�����l�Ȱ�_\���F=ˉ�x�B���`�B5ŗ��O_8��h���0hflMn�$l���S�]F�4��4�q	����f~�[(�lct$@�h$ %�p]EΫe	���.~חx/Ks�o�h�¬`�Y��x@����u`�� �1@����a��Lf ��[����e[E��`�r�gz�|�&�*���٪��<Q�&��@#k1р�('�Y��F�R���uU��2�Y�9����}	J�#��^#k�(��w����� �f���MP|y�z؍N8�Y�N�~3�Ξ!����]�ʬ�!���Un�ϮL�
�u�#�t��8�d@���!Iղ�U�r:��e��Z��7
-,e�ѩ�{2�)�RQ��9m�$�9�	�5S��hB+��a�X��Q~���g��Z��z+M�W��F��1�W&N��z�cqN������b+e���Q�^�,��S�%��m�q��!m�� 3�J���{l��7��+�o�봁�@K�9kp�"_���R�)�C_��x���V�}��b T����]�C�>���@���y_�2�Nn�\Ϗ�
���X�:���ѱ��'B�Tg5	^�C�춦l_\�9����!R�ΉC�F��Z½9��k:W��/�5و4EH5?��w2F����C�ED�`�ŉI[qG&+_Ճz^+1�uA��7�x$���z�^o���0�&^e�0����[�&���7�	
�4's����,.RM����3F}/M��,2X:jEUy��dX.���W�2_�};�*-Q�-c�zl��|�(��Ϫ�5�t$�=�r��46+�
���'��f�^���zs�遗��R��Rt[yRB/1.%��@������[��܇��d��Ehj=���+jS�$�y B4�;�1I耜ԝ�^/:����;&?N"�T��O04���H���M��t]��c�G0gq7�kX�����H�"�
01A�8K�=T�|1`�&yM ��M�E�n�(}�j�C���<[�|h�+��gY�:��>�(	�r<��z�Ћ��K=�C	�%^�U���"WH�ѱbV�97xSr``1��`�-���Jz��K�N��+Є�"7�I�j]R�+����fޭQX������*��C*͹H'<	P*LA��{?Y�	�y%H�Od�IMl���X#�ި%��o2����:�m��q�njr+�t����F}�Cn�� 3�JR̽oɷ�Ej����ʉ1sO��ع�~#�E�»4r�ec��Л���I�Ӣ��X�m|�_Lc��ùU�    ���Ȉ�}9�P�It�
!u~�{]�S�;@^����a0�f-&��j����Օ�uCGn�1]^+�I��j�1U�ϣ~2鈭ǉ?�����Q_����7,O�$�&τ�eH}	6+��m�-Щ�GK���&+�6�����x&1O�wB��z\>(\��U��ԡ7}9uH�Ӟ:��FD��p-�m�'�^�ѡ�2�2�S+�A@y�~�5w8�˒2���e�|]���ad����B�7����xVtM��U��|i�0��ݔ�V�j������4ݖfj��'g+1B{ч�� �$�l%��n���)j|���F���c��ؗ����:���j��Q��7��6�^�]^�v�jC�j����\���F<�N���G'#��E�����r>\����]�^���cK16p�<��U_�����r�_��	muJQ�	ӓI�7��g̓"�|����UvCi\�ӏ��q"�t�('��V W�i�kY�6���%�����o�Z���	\Y1�VZD.Q�5n�	?�ht��),!�nk�4������E�7վ��6v�8I P�c�b8��Q�.M�(oa����8n��xD�,'�E�5�r���r�I2��*֠z;I@c=�US6�3��經m���v��9��k8�hr�W�5m���~]�m�f�w5�����IQ:�uRCq ��Y���0`u���7�3}2��7�d�|x	qGf;%mFz��4"�i�ĞhH�ת^�,
/u�f�3bY��A�0��Ө0���E��W�wM/Hzן��uw'[���{2z�x����#�d"OR��>#/��:������pA�����)��r��gow�s��`�|�)'x����� ���n�h ����>r�Uw��u6�QK��"���Z��:�M�:�b�G}���N��gO��ުT�.���Ea6�;r|��G�E~G����)�셈`��y�je���V;uÝno�K_�a'\��v~�mpE��
�������)b���x�p#���j���cպ����0�)�;�zƦ�,���P�R.�{ZtO��I�����
?}���XS��8��Z�J�	��'X��e4�\:����~J��H602SZ�z`��~_����Z"aS��b�&yՇ�#I?���)��9[�����%՘P+��+.5$f�Jj��%E���u�4��O��f�W>���޽y!�DD��i���k���Ej��dc=W��'�,w9%���f�fY#	�=� ,��ڡ2��h.���"�]��5t��KDJ�t�(��T,��E�7�|�+��4Hb�r!�ê`tC�T�{�x���OCx)A�ThB`��aB'_<U&���*��E2� ��"_�|��.D|��|"^	�%�w�x���/�s(�_>w8l0�2��4�0v��~	�����j3ԓ�K�;�.��6F��	;FǦ��`�^�}��jk(��٤�<n��=��Y55�,Jڦ�D�Ù��0<S�-G�k�D@��5�f�5̤����I`7����"��K�tG��c�u�דA�CE�Ϊ,!��_\��	��]|^��rC�(���g����@�q�M��a��Y쎣�h��Rp�W�D����v�+�����BF���:C��ͦz8:������B�Ɋ�,�}�9�j�4㵪Vr�>05Fzr<�}l��@<=�^�S���
�h���O�K��1�~�5j�0NFm�֔3_/s26~ �\k�fP�J��X��e�3��mD��Of#����p�0����I�\5.��z3�o�H"�a���鯍�0ŗ���$�	��A�f�a��V\x�{s
s�)0�N)0=�Q����=D��ix�Ѫ�!d�5|��<�0=�i:E�v�����;��B�d�f#���3|�2�^у�`inO��b �:_�.�������&�
P�P�z'��2e+H�
6�Uz>��+u��XP-�������O�9���q�"�i�����ʱ����c���N��Ʋq�:,l�|�&Wp�ʫ�)��M�$�ޫ"�O�1(���z����d`q���,(_͋(hU���OƁ��yS�mD�p�"ՙ�]~A|b`z5rm��"���z+�us~���Yۻ1V��L8���"�jL�����,6�.�lA�k���F�����yh��.߉(E�[^q#e��e�K�xݻ�E�ZW�.�߀O`N2v�W�-y5:���x/���\IHN_�a�;6]���^��7yx�{`�<�@	��������T��$7Λ��F7o�#Υ�Z��y��Hg%�o^��yI����g��ZIp�dL��R�>��ͬ����<���ݡ���h�����<����M�x�^�W��Uy����H1���%�F���S�|Zl��%��Aj?���X)r��e���Ⲕ�@s�ڼ��Z�і~;����q��n�4Y�__�ű�s^�n��/.
bPE��Q�	'·r�| �qx�������wx�Kha@�*�����su�����|Į<���g8'	��n[��6+��r`Z&�,�����38|�Ϲ���b��1:�&�ǞH|�̧�yBcϦ�9��n���8WuX�p^Ͳ�l�������Td�Ɓj̬��8�����KM?�*D��i��T��$D"�
���� ����^&��$m�L";M5׮~oX�}_;��24�A#s�:���|�=Q]Ic���$q���#���@��:H���F�C|qQ�����1u����@��u�Ay��]�y��&�tm|#� ���v�
�.�.^ �����b��CJ ��s���	w�_T;w��S�������i���ձ��<>����ql�*p-5��\Ώ������}��t'�b��i&C4?��C�]A�G|����H-E�����]2�Vs9?�6�H���E���/�?p�F�L���e�5�Z�����}�jL�I�̪_���o������T=�O���FS��4�o�Lhl%��\�y%{ƼR]WzR8���o�+�B�jW]:��Z����������<�{��ˠ�������1�.�ÂAΘ��P�5��m���S���ߌ�E ��|.�u���A���n�Xǲ��"xʔ$0Abk��r����ol�of������`P�M�ף���& 6�����ֈ�����e��_�h����Y�����_�r�؆҂�t�ْ��ϺƏ#p~�f[�xt8��,�A5�Al�h�ܐ��[l49|���a���%d%;�_�w��!B+����l�=�!�g��I%��*pc���N ��gFs�X2t�9<��(��
Ͻ=Etn���蜾���s�ї�4 pS�ì^�m�<=덐i\D�\�G8��ُ׏��M?���!��^�=|����mX���T�5�/*n ���5Hƌ�[�o�x��-�s�n.V��������Bh,��x�6Əa�H����QM=T	���+��eFjYS�t��i5�������t�.ـ��eh>��.*�B�K�y��c$e�a^!��\-L�����5GDH��5�`93�����w����	��E@�EQ�?�f�`�a&ֺ����dhW༫�?���ܞn�P��RP\J��� ���6���x!�n�>�L�8�kV>�hJ�b�#�lx��kih�74(�ii� �2���"����+��Aw�M���qt���y�g����}=�P��mWH\%F}����]�+\n�j���=l�UwТ+ru�Nv|ϚAZk�mo�XcJN����Q1n3�;�ɝ��}̛��FR3����jyxv���`��>�k�	�Yί�I�߿@sMzzū,`���y#�C����}L�n�l���9��	��|q��������r_�����O���BdpEL���b�u��L�˷����J��9��"_7=�"_O���ђ>F���N���j��{��S)��*�_<�P�������g�!�Z�� ��e����ȴ}.�O��os    �\��
�O����e�����+�o}�9�f�+�T)Zgp�`�jr�u���:*�}���W�����g�o�i���	f	pѽ��V��a x#�����2u�f��w�p�u;���Y3�H�[�X�.�S�fu��]5�nj��P~��=W>5����rIN��-�cŇ'�7kk��{E���vY�+"}�"�JAp��ހ���%h���/t���%�2L;?����N��c�ny���l��2��/˶0�.�$�/!S�m�<s���/�oUnفǋ4���.81��ۚj:�e��{d�ܢt����;fOfQOX�5�8
�Y���{u"�Gh��\�P�Ť]Oc��zZK�����b�Y�_0��aR�o���]�+ᰁ ]�XdSr��b  )l����Hv��>g�	��C��&!��\�@S��F�7W�a?��1@'Ё���)"���aa����"����׉"�	�� vޠ=Cűt1��X��4ű���x�����lm�+���|AI5.���L��/��rI��^�3��b�vj#��p��ڠؘY����n�� �V.�"I3��0�������i�<��K-d�Y ��׏����#�g�� �CI��������>���3A�I���	�=�6D��h���Q!$�y��Wj�x�� }�U�/�ԣ��#-Tuzpć�$ �2��!^߱=�k����}[+#)��S�+5ϸ��1͠_���Q:��Ke#u&��!�Z(�1.k�6sHһ%�i��/G�5��%�8�be���������:��7[���p�*���U�Q_�SCE�D� ��|pɫ���a�=�\�w���s�'� Pq�Њ��j-g%	�}7}��H��&���V�6��(���TK핚�v��$#�0͹{!���۹E���.?4�("{& ,�ב�)W�z�@�8�� �Eo"d :��������(~A�f}�%�a0L�4j#�-F���C�ӯ�3����n�痲2*�٭��m*\I�3��&���P'3�f#����^=�Eչo[
���~p7�x�E:y]^8B��N�S��Bv:��n�d-k��b�p$u�Ñ���
��ѐ8���l�G�K�|�\�07���T�Pm�e�����bh�8�:���A�:�˲�����p�nH�C�nC�$�މ=��+սN7O��3���N�^=|YT�>�������w�ο�M���0�c"��X��5����M�/�5�Zi���O�.��QI*,k��D�8r>=L�O_�!�=�*egj�8�s���9VM�9F�cX󰿬�u�ݲ-BNc�����k��Z5�i��}~�ۖq�v���#%����g+���=��6}:�c%M:u�s��>Jw�q�}d�i(��{��f��R�}�vD�ƞf.5�G��q�������ܼ{\�L�9�Xȯ8|/'�b�f�wu�n��d�g#� oت�)hr�C�E���轘ͳhC��z�j1F�����-<�Y��᱇���瞚�Dgt]I�o����RW�I�q��9� �ks*/<S��:�Ai�
����T��A�G�)&�/$eh�c�H���Yx��٫)	mE.	2�=��i"�D\z&�O!,~��rY�KY�lT�|�`>��/9�'G�r�P�������Ig�m�ƹ£�1%\b� �ا$=G	�B���
f��L���������BA�;o��JR=yM#n�ΊY�N�E��gJ8�a���#������{NUp�t�al�4Tq~XM7�!-8��R�Y�E����뼋�� #��u��
����֟m�n��t�xQx��=��οa���ߗ�5�v����q��?���e(�.�F����g�ZÒ�]_	�X��Pt�̔�<I��&[$�Tћ���-ΗS�B� Г�2u���������|���٪$+?��lyp�b���pB4,�Ad�B��4?xҩ�|Zw���a��aQ�����^6j�C3λ�n#��c�iC��v҃ 4� ʎ�A�:�I���2|Ԙ���{&5.$�2vj��|x��߶i*�p��o�L]��(2��D��4r~&>��/ѤU�ai�a�#��sǝ���y��4����K�c�ZyFl���B�yC����Dh4;��+r@���uu;Z���{�j���L�Z� ��+C�Ô|i�9�����#�3�,ˈk��TZǲ��d�9�U7H(�(�P�+t�y����e����A���Q3�H��⤤����d�w� :8�+R������or41�rxa�av8&��$P��b���!z��e�ޞ�X��0C��2o�JJ�#��V�A��Z�H߁�K�M�Y�W輯WK*K���tT��y%��"j4kW'�ի}G����5F�v3�͡؅U��E;!v^-��)O��tu�ʢTcc���D����M|��g��.L��TQ�5EV�e{8��'D��Ȉ&��J/6kqe�eu$}�eB~�բ���]d�덑���X�}>��������S�@�f��A�0u>g��vǆ��E�;� �v3���ͺ�.�a���9�e~��ٰ�?t����a�t��!�|�MvW��*�.������q`��n�	_�|n�z���Ǝ��S�w��3�:�[Le�f� �.;LQ���M�@�ʀfo����V6|��j�NQi���Y`\-����P���xI�ە�K���h ��ܛ�#���G��M%x�S>-�BC��40���<0��x"�3� ���"�=B���w���;<"���v%��Ћ��ٟ�����{���7���o3/��l���%��_��Z�����{�E�%����ϋ����D���~�D; 8	̄��.}� ��4�8t��15!{U����׎y�����}Î��c}U�۫����|��k�D�e�dK��SSF1���;S�t[��x?ј!��p>�Ɏ��BG9>���� ���je lV?p~�"Z�ZS�ռ9��>�A�YC��j�viswT�Yh��'�!��p^��>�*��"u��N(�J�Џx=T�|{����}[VJq6XqN�|7�h�i�i{�H�Z����&���i�� ��&��Ds1j�aU߱��ݩΚ���0U�������'�����.�󟒄Ɨ�F�E����;���f�����bU���mVi�L k�;�������|S�H���2��s����5>ޢ��~A�v�@����0��ڟ)�l�������V	���sq[��޷ER �)��]���S�@�_�oKwxD�Ww�����"v~-�B_.DnE?��>9S�и�*�+�/f�şt�^�as�n�Γ�Cn9��8F�H�p�A����?���t���g�|�F�X^."R��,���Y+�*G{C���'��<�'<�;�����t��犖�=�#��&�����S��>�~�LX��@p�!@+�Z?�ͫC�����4�^-��J
Į�]}ukY��Z�ge�p��&��gSx�z�)��X T�gG�d��F{.�K��=Z�*� 4��we��p|��MP��#lP!�� \� v>J6ޫL�q���?�	�I��ټ]q�DV.�#�� q~�fl��E/�{�b��u�݋#m�T���#�U���ᴓ·Ę�pݎ�
s���E�ѻ�b;|tPЄ&c�K�~��������@����q�}�D�I~x��>Is2�>�~�}/4x
W�M�x�̸��%U|<�I5LՐ.�X6��JZPh�O^����x>��Bc�!���\�ۢ�@%:8����F�Ф{5���v�`
]����8|s�l_uG���1���6��ok#�ٷ�]���6Eb�� �D��sy{Z�	l�:#֞���
1�^T����n&�{��w�W�Лo���7(͉q7����e�8�þѻ@���k_�r^��A�92i�>��'�&��FB[�L}�<�`��Gx�Z8Fgഘ#樮,F�\^`�Q�8*�e7����qU�9�c�'�h/ y��    |�^݀ޞ��.���f@|��U��"���Wyٟd}wx}oՉ���Ǝ�aiPZ��m`�������Md냉
j�=1̿}��p��0�u��Qb��i����m^_}��R�ŌK�'7.���rw��
-�)0b�y#�fz�kU�U�@��o{�[.��	D�-��b)��g	���$Ȉ�7�#n3}$���ƍt.5���κߊ�}$�{h�~n�(���\��%ā�z����a�����v�[Fz��$��:o�Ū]KAc�*�!�:�D����aeo#R���㨖3������&q�#�|;ʃ=�����@C��b�S����'xݗJ-����"�꠰�4�a�14s��u'�����l�����m�7Q��͚d���bc����[<~Ŏ��Χb�������r�Y}l�� [�4o��|�i��{a"����M��&E����@�Do�M�?���m��a�í.�u�ڌ��,�վ�lDH[,�c5/������ݱ�$�t����l���Y4 �O�q*�)�2������*���>�x��S�v(d'�0	�9*�� &�-O�Cyk�^Ֆ�P�A��*�0Y��P<u@�a>��MF��,U������1��J%��L8�ih�=�0Ә��Cv��v3��^epfg��R�5Xl7�l��9�^K���'��si��k>���Ԛ���:HiaT?��3�I �F��GO�-�FL	�C���ܟHVW�d�5�zw)�&S����a#����k\ү��8Y @�FHId��D?7���`��'/�YBΠ9'm��6@�-�d役�z�2/��0��3�P��J���Tj�2EP�
��
qx�yŨ�|�.�qY��}B�cX��zs�A��*::eL�Ŏ7�kH�(s�*e��l�|�^Y��/"t=R9o�+b�o�'�_�r�9�M6��1*��Ώ�M|�+�<���xT.�&Λr��d+���`���.RW���0LS;��4I���Bn�F|ٞ�Q�(�r��/��5��i'0������'��d��a���r�;��mjEc9 �#���K������X#�D�\5@�ʒ��
su2I�o�x�mOa�"mbB�2��2�v���W���'-Q�s�Zm��i|��E�س�����]����� ���ò�B�]4�1�>`?�RZ�K'�
��U	ju��`��q�?%Ռm��!⮭Ԟ ��jz]��H*��F-C�������G����m��F0Q����/��������
Iw�L52�/G�maÌ�4�%�R�ᣣ�����iE����#=����FVM��#�Y`�E�;zG�5m������y��VLǪ�`���@SF��y�t*6,BX`nh�F*����jsOvAg��3A0�3r#痜롸�%g*���-.�S�c����o�cO��Ɩ� OU0_�iC����>������ʱ=ϵ��Dn�5v�* )l[{]R$:1�q��M��żh�R86:j�� *jW��� J���0�h�?V���!8&���U��m��y��p�������c�4,b�'���=2�׀�"�'T+N�H٫b+�u����/����g~���/��!~���ܢ'�C��w5��K_c}�9�iӢ拚< ��#������nD?7&��;��N0ҽ�Dit�ŀ3s���6yaÛA��K�_�F���D�����n�	j��&�>|��^�c>��w�^7�z�|��r��͜�'��#�/�CT�|1�����Z�RE,�e���Hy�.�E/z�(Al4����(�ŗ0�q�@v�덄.��Kz|���� �hE~`�\m2�Z�i[;�Kj2-��É�)��
_1� �uh3����{�pX��VNl���~K`.�'��m�
i;L�����.�oT��C9}�ǪAֻ
[d�)�������4��FY�z�x�-�%^����u՚���]�o�(T�d%��R�X(䙫�2<�M���²��;�D�p)�Fy��)�'^{�6i���ݍ�ץ'm�9o$�����>��Ջp����B_B��z\�	dټ�)������-��ˋ݆]��!ضuY�_�wY�;y,2�p�N�iC�bHA�V�����~PU��"r�X-.պ���L�I+��ӂ-�e­I����1;�=-��[�*��:�Tx�� #��Ds�Ⱥ�L�����T"a��ǥ����q�ؘH��1�륨S�tw���s��o�+��\�C��?@��pV|_���JvXc�缞�8��2�p�vp@��]� =A���wqw�0zr��o�Da~!�*ㆥQ �P��&�/�s�39֦�ղg۳а&S��yG�8�T5�Pp�����k,9�����
����A	ɛ����::]��ds{⒐W�ߓoI5��I�QҚDA켮��^y����ܧ�?Qֲ-��ڝh`�nT�8�g��2"_l�[<<lח�rN`�	tɦEǫ<{-z�F���Js�`3����M_X��i7�d4^������� ?��a����6��l��Bl��W�����|p|�m�
J$�-ر��t��V�l8I"<6A$K(=��
0�C�����!EΥ�G��#��v�QZ0	�.Ъ�����謝�6~�Z��j�39<��qR�ê���@?�'
�,�����l��9�3Ξ���-�,jV
��J��_3�
��dۡ�'��׊���-&
cݑ^z�Rb�$��U ��a�a���Q�T�|�6R -a��u��Ʊ�G��{�G�K��(<��P��~��y2/�,tΓE�ǫ;�5H
y��$�A#S�g�;�`%�y����OL���]��,򯆹c��mV�����
���7��o�u�����W@�͔������e�T�S�.\�_�,�٩e��z��0x�@kU;)+1]�����ªQm+��Up&pۀ�����F�C��Y��r�� �9q*K��J�'6%+P�J@�޹t��R����V����@]pfG��On�H��?uo�3������S�L����d��{i�$��y�4"�k�X7��{8��Ds��x�}���b J�t�/z�v~��w���5�=}<�S�uv�M����$����$������͞9��� n��5��3��z��x�rxo{��� ��}A��k��`7ƾ���x�oá�w�F���)�HgX��؄|�s��8��9R��"���W����a�cO��$QE,6*yp � zg@5�U� �W�4�M�yzۛp���dc��{����{��c�u�j��uy��z���T�� ��"؅�_��\t'����	�"N-w��G!�-,PG�j[s1�s���	��L���lЖ��q�eo�G[F��[�;�q7[L&��s���@}'�[�{:�;mAs �
��|ȗ�|�2$x�Wu�,RW�B%�<�S̅��d�5�d��E�T�����+ѓ��ʈR�Di���xV ��0&�F攟9��r�F�������;'��HX(�}&,�"�ܖ@������r���Fb %�R5��k����~E��v^K�B�!zۗ ��$a�@h����Qbv=��C��M)�.�RĦ.��Q;��;��Z��#yC�[q�Sӻ��lC�͒D�v6��� �c*	=�k��'�S�|��m
����Q3K��K5���L��U��!�3�CP� �)B��)�Н�t��X�"G�v���-��#��FѤ���� ��Ʊ��	�`C*���Q�*��M��9Y�O~�~��Ԕt��@:0!NT��W]���e8�C�`�C�8td��'C3hҷ=�ۥ?����w�b���F���� w �_�۬`0Kf(v�9��\8�N9@��80dD�4J��
k��-s�[���@��*$'Va���T�1Zb�QO�x� �b�֌��u�����1rOKL�O��f[EC�6��x��t=���#���EvO���)f�ZTx=
�=�M�|]��N�b�EF�j�����    '�Fu���Rv���T���*��E�nz��O,s��۱냒 S��l5-g�h��i��tvl�1P��Ɍl�
��J6{��N��Z(���(U�K����=>;�p����K�8��:@���Р�%�����j��qO�؍����T������(�U�`�	�\�Λ�\���<xt��:q����>ʭ2��:v�'��6Crx0Il)�!i�I��0/��^{Pl���G��i��8X칪iS��É��~S�F���J*���C�T���f,�$j�ބ�dn�R�$C�F�Do���#b���=U�P����җ��'��k|�X)M=��a�I��Ç���U�z�м��sgE�C�tlMw7�nR��g*t>O��u>�V�M
M��Tl�]7�&^hzarF#�7�gq���h X�A�Nh2V�;�dw�;�}Q'����Y�l:�'B�Y`�G���S(�d"�ȓ���zƎ����ٛ�U>�"�:&�z�J��:?���k��48Ǐ�=����y].6�}OGY���7���sP�����:��.̑��a+��E�?I���%v���+�a�1�qV�;_�5Tn�m±!R��܍�����T��wj���y���c�^g��k�k��Ό��d��q�
��vE�<��Bv�B��<�{"�M9A��vh�G�ЄQ�z<-��f�Ll �;��匲�|�[�v�=q����*z½h�*J��`�S���hY����oUQJ,���� m�n�pQ�,��&���)i��K��Q�Ht�Y{����5|�u>U�v
��?(5<��#��&X�uY��~s�j˒�(iQv�u�:H;�4')��U
�K1�(\�L�Z��z��I�n�L�\����s~�j/|�+�)}�5@�
���uY����m�U<���g|B<��{ߴ��z3�`�@���� ��˳�أ�שׂ��s}��D�m�ƸVgY��!�����%d�I�2e�.��t�lb�q��]L�N�G�0	����XsW۳BcHz#um���CWA+�l7�0�yS�JR���{ƕ7���L� c JRT�["#O1���vܱH��u�ʘ)�7�@u�_���k�@t�>�o�!D�:5c��46��'��9��TE	�z���p:���/�g,�r����i��J�����6߈��c�,�aQB�>�����$4x�W���,uB���� �ޱ5!�el�REq���O��@���T��zs9S��F��6Nc-
C�3isL}�Y�y\{���{=� 8ƇW0%�(��t^�)'�y�X���3�x��������O%�W�b��9ȍM�pu��Õ�VL�`�e����Viw��J	�����rg�9H6�� �@xA�XN�s����jj�3�|I܃�<��$�0H���ru����KX0�˗�`4���юv�,L��}#ZV��7��E�sײ����C��8tMa{�A��^�w�"t��G�wŁ��=*r=�Y�>3)겟��M���3vD�J`<�&4W8��λ�I�� ���i��SEv��&����v��;���}�Qjh�}f�����q:+s��}����Hg�h��qF�xj��b��D���wI�NSy�!��-)N�����o�#�����e)�^�Ɋ�a3F�ñ�I�Cls����ј �sVo�86(�
�z
��ya�9O���ˆ^{�d<�·�Y��3Eî�i`9S��l�ˀ{��^T���T�ؑ����H��������7�wo$��ij�����������Á�	d������"�W�p�#^��C^}ߊGq�1
П����Ù��l�QGtGa������O��%:o��ɦ�Ƌ���,4FbE��|���b�Ϊ�o��nN,�Q�fN4�T�1�ӌ�r0JWԏڐ(��`���Q����a�G�.n#<�7K�[��};cf :*C���c��<w��y�z���+qD�!�*fe�OE/5���K�v�����%�C��OZ'� �=� 4N�9�Y��Cg0i�n&���R,���K��ؗw�?��!B
�{�?�@�zf����N��a��7C`,ۚ1>��,�P����v$`��FJd]�#"r��H�f8D�P5 z�a�>�-�>q��g~�#�Fl+e{n��R]�ٸ0=q�W�)���p"1j�R$ź��-�-�y����K$���/!ub��&)59f�$~\Ku8���6w�k	Mɞ�����E����v�
��5�t�I�'���Z�\��%m�za�M5�VvA��e�y&m�+s�vKu҂c�}Z��c�j���I�d� 1�f�d}J<��UK�ў�I)�-!��F�Q�0M>X�;���s��	8�[$��j�%T5�+}������K�|l-��$��)p>Ӓx+��|0�pP�����dd��eR��N����P�)2?������AkLE	�F}�$�v���Mtw���&��xo��3�I�|(���,z�n��ۦg��ч��D�\o:)�_����qW}����L���1SEr=g�����i���v��y���&��-sBu?K��̀�nN���dM�v`6�'�`�NQ��&�G?N�K�J�^�w[�SP��쎲K �_\CB���'�9O.�o��"�-T�F�:׽��D�Q�'�ct�|���>[Qa$���	�W�gI�9r^]_��ǗD�H�n�TI�cTH�C+�@�74��'T.�!zsi��k'����3oXe:�G6�"���[m����b �K
���J����*	=�ô̯qn����wm��;y���3�(�q����u�����e��w_��yj�
���ڤM��o&հDۓ,����FK|�m�&��|�8��GZ��]�B��7�b���);�<�lֵ�Ξ�'1�k�jw�[t����9������!@N��
.���K\��J�a�N1E�¤q�!t�+�� �U�!���"��r��J#*���E�:
eW���:H[�ˋ��=ϳ+�S�|"�;�'�8?X$U$ V��
3���^G����0]��g�8}x��-
pe�Q��V�81�L,Ρ��;��G�L�6�Xl��P��'z�Q���:{P�>L(9И�`����K"�V�<ۭ��\���5�omt;(����Β�!9O��	=�P�������7T���E�{(�eG���%�4�֋I("��E6��._ˬ�yӫ"Z���U^8�J<������F)��A��IY���Z�r���j����O�ۡ�Y�� 8��\4-a(��D��z�5)��d�|͈�܂r=�����5��0���|���9]�	C�߬G���(&I�߁j
]���f)�v��� $����
����p	��[د����M��DJ%M����OSPb�mflh�F��-�X9����y�]U��XgB�h���gb�Iw&#X48%h���Y�O�L�֘���֐̴`)hur����+3 V�X�ތ�Ru]>L��7�>�$��0�s3��kA���Ϛ�����'�[ʔ5��(�F
��EgYO�F7}����u~�Հ�	^�1��n�X<����L�%��4q<��+4
��:R'9���I��P���c�[Cq:$����}����@D���>8�e|�c��������G�0Mlf7�#t���|�r���B��B��$��̏�����k���/�G�:�c4�L�8���O����)�O�(�Xy�_DuBL�*ph��Rn��u �Tľ:�<��6�]�����n��|���z�c�'8�ێ-������l/$F��$}�!�%4-�5l���-�)E�u���<�b�p��Q��� ���oOQ��K!�f����=�w�		>\��|3�"B�ڧ�k��M9����"<�}6ָ�l��Lt��8+�̱�Z q?�W�F�E^UO�-��u���|p�m��.��3S��;J�Ed���`}@`�ip����5򴓪�!s�b�Z�*��/Cn5D����}�!�b~7�p��8�-eɃGø    ��X��\��B1%c�T�f23��7}��i��cC76�Q�����{�
����(60�jh���F^_�y"��:Q�H�
ˊ�<�P�Nk��h�X�	h�F�Cw"q�Y�H�<��=�1�(S���x�<:�Y�^lO�Yɬ$d�|��Uq,2 ���o'	�G���>��%��|,+r
���0$z"��%�p���%��Vt����O��)	fx��i�b����'�mQ�M*�T�-+� [�M1��	���ap���C�6�%�ۭ�-��BS�ۤ�2�ϧ �Ji�G�n����ym�M�C0�C���qA��Y+����bK�R�hK�:��7T�����QEcC�]H����օ��x|� 8_�������%=~rS�D�˿JBWwQ��4����i������L��M�g�^�@��k�T�,�ԉI-��	�J(�R�����46 ���<�c�L���L� �;�����=a��\Y���T�#g�Xȏ�P��*0 �&�+���y����*O�#:����j�S���O/����̹Y�FeJ����wp�<���ޕ-7n\�g�+�w'������.����8�\�����P�����s��@�"	��<�@`,���}�s�Q� �Ν�~�-q��2ް�F�:�*}1���"���������o��6�2�M|����G�D�ϒx����I}�2��7����(5\EC*�i`U�1*����B�uo]��pT~��̝�U���e�+b�b�|�q9߁4S�ڼ�i�q�н�}1�Z(�{�qĉ�L���YK�������|a�J���L�;
�	�_�{�k�*�6�7MtE�O-=�R[�J�#��Ԗ�^ٟ�6
lÂ��|x3\>Bc_$m�@�BKY��;�^(�T�/�<�)*ȼ���+8��&�p��U4��CEn�.�/\���������w�������'瀙(d�*����q~e�^���$��c6�!r��N.��|��G#!�G���G��D�!Z 8љ�� ������f��������ϰ�ַhA|�\���HX�ͅ�٣|D@�{dӻ�	��Q�������|��׏����$N�S��YU�|��=�n���.� $*��%QX���f�|�z�(�|�ɤ�]M�,�Ʊ?��p�2����^4�'^YH�XV�Z�F�q�x���8Q�H1\|���֘)��K��a/"3��QQ��"�*�����ã���^�+�P�J�"|>�2nM7\ܔO��'�f�!F�SUi��~�ehb�eF8q+�<���kJ�⇑k���8aU�2�j5L�#O������<�^$a�p��t8i��'��.C?a1B�N��HUD�+�.��#�[���ފ��{�ڡ����y��p��+&�����-x�N!�VOv�;���:'��Pcڑ�
�=�|HYI��®�:p��	��X���U	q�z=[!7�w7j���=5Ԧ������UU��H�^H�h�(���AG��;�X3U�lH,4��H�8,����q�A�#�Yy�À�C���T&�
J�48�A2�;��ko�ߤ�+��%���|����ؖ� ������0l����|qk������O�+Z�4j���H���<xFq���JC?f64�j�'��,��uUl+��j�,���&����7��t�I���j��[��"|6�~�Y}4i�:0s���i�$֙Sk���8ֹ�h��[�5N�8��
���eP��"]�D����ď��w�ƴ�~��2ʡh.����P���V���2�)��+�_a�4]6@���,R�q'G�K���bk�h���tG�Y��ѥ��~o��:?�K��ɘ�H�I�fQՈ�����PhO�S�z{k��8����3j�n=K���V��[[��Kc/�c�F�Y�a;�^F���كYi��T�(a��!>��'�:��rR66M86�q���ȧ�Y憍��I��oy%v�ގѭ]����G�4^�PE�e��i9p��Ә0Tf�����b�^W������q���he���'���1o�~���!�t���z"Ο�ʛϣi�p3�;���T:��By�s��'��x�Y�&
�+I�0͓Q����Q��w�!9eZi�9/݆��?X�E6.m6#N����g_�����~��,�q
�h}����E����u��Or�Q��ը�(�il�N����W��+j?��mVX˗0��N���z2;<�?t�w�$	v��8ܙ6F�p׀�C�'��m�sWF�t���懯Dͯ{�Z;����)g�����p�K����ź�/UI��?��,�&�������jb��ت�b���4�
N^�%��i�E�aw���u����&FM��v��3찦��F�uD,l�t)�p�șФ,���d��z1��s:-x׊ЗE�������KR�j��8�*߅mX�l��^<׮��I�ì�#4����hV�fֶ��Y�|1��0?;���*�Iʡ��S�%{����v��{y^�z��v>�',�dUo�#�+���L��x?Q��|��1	d;���s��f���jJ�x1>5��������O��;�����#���5�s� �h�0��W�C$�����̒��N7nKB�_c����ق~[=`)�B��b4+ypZ��'jY͒|*�i:C��ee@����E|>�4��y���-Q��q�S�b� _@G /�q�tot��=Gѹ#����z�����ɸ�Gc�<3����y��o��v�����z��C� �����ƵqN�f���'��L�s3�́4��9��' #bLg�C:0T�%ݳ���R1�t'�*7�km�4e0M�[�a�i6b �@?�=� ,)�m�LE�V,vjL��V^(l��P�\-�Pnnh�˸�1�B�[��}t󗯯���X�	x���?�r�~�wa�:��fB$({���?�\�@�b�K-ԁ������vf�'H��86���Rx�s̎�?����H�D
sXD߉b	kf��`YKht��,�ٛI5@g���>}Bה�㭅��[�B�c�7־Buߕ0�ۡ 8d8=C8� �W¼��F(Q3GNO��8;�������4���-M63����V�_�Ex��9
��w����䎙%�J�_ꅓ�S�O��;q/�K<�T
��{z��1z�C�nzb��*�����0;�l�-4�~�Ei'+eB$�������Vm��t9*�yL�P�Ħ�W(i7�yCu��9\~:�X��܉�R.g�ؤ����U�5j\����V4�:��L��".�Ъ����4��x ���$gO}Q�׈q�V�M��}E��U�?�|�R��b���v5�73��YJ����&�1H;l� �_v����&,.B"p1̛�f���뻕�=���/6�~��߻���r�h���M?���m��9��C�5q�]P�UAs�fs���%�����l���z�k#'%�l|G3Zm��7s0�X/z����-�E��.oG��w�X"����B�`��;L3�K�Z�l9��6��F[�,�s'+N7�6��i��-Y@��&Y�M�R�Sc��t�4�ѻ���	o^�:1F~n^����.��|6t].$�a��\����fwr-�$�o�o"5Afw��R��QEX���g���(�C�OഖI�s&��"�{֘_J�G1WA#Z��)���8��4��7_�۫zѴI�Z�Mϖ��{��<�K,�~X�F�˫\��7�t9Q-�r�4:&��)#���q�����װ2�+0���;�t�J;���[?�f��l�T�����9���^[�����nT���l<� G�+�ۊ4e�p�S��:�|1]u�u�t�v����w!��T
io����!�z_@������dB&B�
O ������Z��$�+�8״I � �~2m
GM��e��U�:FC~2`��~�S� \Ã�����{�=,\Ҭ�Î�7B��$0.�p�m-�o混.�%��F�(�Asg�� ���0CO5U6� v  QV�.H<Yy�\��Se�ܱsr�C�����~�?�a��ݱ����X{m�[ƶ�
Mb	^����:�rD�~��F�^��n��W:��A#up>��5��{�sC�<-a:�)�DZ����1�2#Yn�ӰP"Lc����y�YG�Nˬ�����[ꉡ�z�J�n�K�ʊ֤¯Y���6H-4��״�N�S�Ut��;x��a���
����fn�M���ݛh4��'�߈qp��ް�]��M�����,o�Y�XGx�M]	�K�ƶ~0�LEA�N��ʶFmy]��OMR ǉ��R��̐D��y"�~�U}[eA�[ڭ��]G���*��)�%�� V��0h�^7���W�)��Y��be�6���˛�rR0QY���s�f�i�u�4�".�T*��V���1��d�� ��z�J&{���c�-��TS+�@��4��Ґ��O��ˍ/�l�cU8L(�1�����D���S�C��3����ջ�XC�����3i߃���S�a�#�Է^���<��CNud~w��o�� <�~�G�Xg�G-���,˓�����9#�Tm{}��:��?FS����p���<Լ�[�|�:v}$!�	=W����t���d��宓��|I�=�˃a~��`��w6�?p��Pي0�:R����V|8� [�hkI,,����,�v�X5�s��(��4��	�$u����j�d�9�w�t41+Aq���r�h�|��� ���A!�h�z����<�<�%D{��@E�D&�.�R�8n�h~uӉM.$�����/A��?�\nϼ��:� �Һ�YuAz�=�V~+fՉ�e,�uZ~��qL��"�<�t���`2�6����oQ��l�      3      x�<�[���
E��f)���a��(���&�p����o�O�lѩ��D-ZW���hU�O���_�O|��_�����u����U-�m��/�����ǍΈ��_���_�N�Z�NF[|���VE���_$�������}��W-�n}�-��4:���nQ���/���$;u���_m�uNu��0������wګ�o��hq>�f=�բMfuFv��Cݦ�*���v7fw�>q[����bwE�/�W��j�N����������}-:m��:�Uy�N�q�ng���_�U�d[|�p��k���_/޾kn���#~�:5;����u|2�C�Z�2Ƚ��zjNf�G��yKz׎֎>��Y-��X$26j���S�}at�o��}����+3ɛ4vrr��(�U��E�2�>��N�d%���y��Ll��yp7��;�g���?��@~��P�;��h��OJ&=��"y䟊@�I�r�8Ⱦ�]Ȣ�*����â��������f�����-�??�j��dW����A�n�eq8JK��If�����g���16��oZs��X(6��t3vߕ8�'�@�RRHJvM?}M?����C<l�����;	ol{,���*oK�WK�}F���4�b})�ۊ�b��F_�å��n�4��Qr������i|�;�O"�~�7�͉+�ŏ��=��O��0�C�Ĺ>9�=0��g�I!��ڷ�קt��}�ӑg��O�"�o�cNƟَ��?$���5�E]�Dc��N+0aК=.M<u�(4�&.���G&��'?7����_Z���!���W�1q���f�,d�o=��;��K�}�����wN�k�/-'�̖�M�h�W�lPz��*0@QTQ�M
~��y�����h�ek��1��5�%rb]T2(���X�E=T~��C+���7�VLL0���.J���pWz��s2�M�n��r��?DW���l��D_}����%%��������,ԉ���e��|�õD�5"[n�=���i��z(;)5��'I�C���ɯ遇�f�@���fD���W�dz������34�s��cd�Q����������w��G.���G�`�x8]k��"��c20F����ޘ�;ȜT2�]�nO��`���b"���8�����?-
i���>��10p���q�Ob\L&�	xSҶQ���3gh��~w�����H�_���wY�ؖ���#-.p�e0�}r�F�t퓉]������n�)m������տ��AA�&}��y��cc���K�0�}�o����H�^�Mh�M���}�O��E�"���|g��KK��ʡ}!�[�G�����������w�dƘ�L2���ԑ�N%`���ڟxX���|�����l�d�J��dpJ�.��yg�t�~���[?q�����oK<"����H������l���$�_�6������1�}�O29w�&]q�?���Y��E1OL
��Ǡ��KF��/�S&��O�Y�2��|�����.�Q��fRh��wP��`���E���'�ج��LV~�l�-'��}X(�Q���'�^��0����������Ӳ�����ĤZb���e����D�-��v��<+����6î�P��[]	e�����������"�Z�Ȼ䡝H����id�n\�l�+���*o�r��:S��+�If��$���#P�`��L_����ȍޢ�V~�0�P�1-�e���gbH&y�=�ƨx�t'�+V]��s��f/�a�xӹM�\�?s��bU����ӽ��W=e,���)j��;��mYj��e����'��1ǫM�����jś��ղ-ڲE����-8��vrG/Z[N��C/���b�V����~.���Nly�jF�>s���b�����j�]�V�Z���_g,&e�i�Dl��N�%�}��~�ۈO�ˡA&�����]
��p���b�X,�V��'G���b^�X}�ԯ�mͰ�X-n�Ż���,E�I�I&?�Z�<��C~q����7���Vk[�_������bѳxӶ�]W�_X<���b�X}/n��ͽX4-f`�A -_V�/-��O&ٕ�C~1�Z��[��X� -�_I3��������e� �PX�0��œz��9Z��>�3����D���$�"�O��L�Z��ba�X�,n���ż�Ձ���
Y-�ū��-5�'y���O&]���� �z Y��''}��	�w�����'����գK���m�h����.���f��͛��Gm\r�z`�b�=3ۼ�޸��u6��O��?6ӯ�S�$��){R;��O���m�oZ����(MbQh��x3�����>����R�D�,�>Gݼ���'x嶹�7+�ͽ��@�-d���*�J+>�K�͜e��߬v/+6��������m�Y[l�%���������}��،�w؛�E�{ZP���߼��,6�����{���O2��?���U���6N�y���q��A}1�������l�o�͒b3�l�c3f��7N���+�͋��˱O���X�Q�3��K�Bj~�;,7#D�N�i�k1Q���^�F���ɢd�Z����'���|�����0l��ú�$i{�j
�����>�lCV���aL8�'�Ü�e����w`�g�kި�Z�����)!��п��jQ���>�D������a�r�tz�~X4<�o��9��>8T�Ʈ���5�����{�aq�����W��n�9L�_tnrp���^�����$8�������b��`����F�0�ޫ���఺>g?}���좼�>̹^xxN��>��aq"�Кh�Ge�}x�|@o���*�0s:��aQ~���gƀ��V̖�a�I�B���e,�8���徿����e,���/�ty�|��t{,��M�L�.���K�����"� M�T���P���IE����T�s���W︬!..qY�_^t]^�]V�{�rG_������2�\F�ˤ�r�_F���4���\n����|b -Ey�u7��7-��` ���/S���2v\ܗ/������̨Z"(��2��ߓB�o�������r�_<��)��8��=�n1�e~�{]n�������2�\��\&���\>�\����$Ə�}~�@�".�����e�t�BzYuߞt]�A�׻����5���~$eD���{� ���Y��E�GYe4��kc��DeU�13,��01���β}H?n~����Z�,������������k�H�88��A~���)�7=%�Pa�3ei�zz�i�z�A�S+��f����&��
>q��o�~a�1j��r�r!��7��.��W�_�?���/w������!9��Bi��E�M�?���0u��*K�a�w�W�S��j��������쩲�~���i�W~���W�Y����W��W�^���f���fT�����~�S���Ϣ??���v�)��n��^K�3�pX��ļrnH�p����;4��?��~0̢ر�~��+�������x��p=���]�o?���������z�^�w�gJ˩	�/��'c�'�$�������LS�	�|�w��xk��'<ǣT<��*,�bm?MM�6��nPu/���,�g��'��k��;B"F<�a�^*�_�L<�N�v�F�´Tz~�}���1�Cz贏 1Ҏ�9�8�TzX(���;�8��0$FY��9t�Q6��]�q$wb�gTO���t���J�ˋ��x,�kyJ�b�'������ 1�ӱ�������3��|�q�#�F�y���3Ks���f���L+�����^o�뵿�q��\�1'�1��s�v��k���&ˎL������G&+�!i���R}H?���f�ylie,"yO��̋1�ۀ��'�C�YJ���]-4���a:�O��0,���ZE?8$Y4�ER���iz
���Ӈ��T���)ZN����J�*�)���gH��5aEMR�1�K�տ#�m3e[@����2�ƚ�Ӂx�۲8����(����UVZt����Lמ�g��9�O���$}H2>�4RZ�&��    � ]cHi�<`}i�
���{�����4�YMyVs�����i���wAC�ǐ�1��y!X��&��1�G��0�ŤRM�4�q�Sfi�Oȿ��1�z`�p=��HMG�)Uj����>�i3��ZK`��z�3����V<^Ŗjf�O�pQ �cH2:�hZ�g�� tƐ�>3�{ %$0�3�o��[et4�T�W����gAL�� �G$�H�YJ��ݴp�z�[���LSx���ÉBH�||I�;�F�a�4eY!���8�� |>�3��1����@��L��H���D��'!��bɀ;2$�4pG�����gh���������j7�e�x"�s�Xd����,"$eƲ{d^�S�X�`q}���塗^ڥ��0<Cb�K������4c{[3	+RUFȟ���|��Ҡ�Q�5�E@Ƚ5�4&|f�ϓ�Q�W���씆�樢��ĵ�}^��pJ>u��A�r�j����ҧB:�H���[0�ĬW�|uh��&˒N��_�ː�2��4Ѐ!��'|�!�e�r!G����Sr_&��l��H_ $/��Z��p�g�L�(�%�d��!#��(����Ɂ4@%-ћS´C~��O����@yf]����Kdi���:x-C^ʐ�B��
%o�!=}�@i����\� ��V���I�Ʃ�K�\r����u:��I��2VH�L��	+�6�S�M^$�|���mg��H���2?q��OSON]8]L��ty�,��4pQ��vf�/׮��R?�k{���<�2\R%w9k��r����	�:qJ�Npo��m墡�k�0C~yCe��һ�/ݷ��r9"/��`�OK�!����>Mi3C��}Z���E�w�z�.��J��wR����NY�該o�����[N��-�ohȧ����r}P�,g�(_�{�ʭt�r��g3��4LS}e��(�����
XKZ._�4�C��/ޔ7P���N^N���|��p}P��{�rl/������3�iA(=�ӑ��pK*�Q��嫂�_�f(G��QR���CZ}Z�4�0m�m�/��}��(/�[�r,/���|�������u�d���w��_�Ԓ��O����r�^���!RXڙ5k�*�[4d�Z@W){��m
Y����Tv�,l9BCb)$�X�K.  ��Ɓx��5����A��'��Һ��!=�<��-�As�����| ,��E����%;�"t?���х�S��\鴋��w7�se(CC�QC�E;��-e+�fī�w�Oiտ,Z�˭�4�4�<�⧅Y�b���ɰ�6��r�]��z�������ZV��zyŘC���R�Su�_���*��D�� -%���*�t�_�ג���&R�rg�B|�f��_.������ 8���$�hH6�H!)��x��LK']����]!K(
�{g�o�wp�Y��!�/���v�u�훮��l�@�C���9�ݎzۡsC�kSa��X:QG���փ$a9-��ݥ��������k�S��W���S�R�<-�������)�!k�K&�N����@��g1�Wѳx���Շ�o�����C�,�������	E)���u���5�^�Wp;vm��[��z��+�vh܎`�P>�k%�<k~�}����M����T ���nkz��� ����HhT$~������:�5�M5`ﻳ�o����D���An���c�C�vL��y?S����/��Q�a�z��?RA~ji�AփW�ZT�T��M:v_���8=NS�/���q=��>�P�&5�UQ*���U��%�sWyN����m�q"{\�J�BY�v/G�S�t�v���=��ᵸԪ!}�!�i"J=�{��k�/Gɓ�����_���!|���Bgin�U̿�:�=z���q$<�O��x|su,���tXN֐�5�NxSC�U�9���u�����)-��ְ��HSe�^�4A��'��Q��GG>����L��rp<�A:��y���h*I�&4������5�y��d���~�W|�`�?NX�g�$�Obҷ�=;�F���	 �ei�rX UZ���qp�?�E�����6�/S������_G��s�����xW��_��(}��%�HA�4���ץ��%�u�zu���_�o��R���ծ#��!�k�R�J%�k�|�����q����2�� 6�va�LY���&l��ì���J_ӕ@�2�8�#��E�SWy_C*ؐ6�����.�q/^y��^_���j��h��n���vu��(x}�t�dr�]�Z��8U�����6aBz��/��m��-���A��^�;_�����VX�u---ͱu��WZ��0M8�^wy�4��?��f��F�Q�,B�|)-����#�������?�C��?��?�	��u�Ǜ[��ʼ��x5Z<����_�e�5|]3%�M�`�-��b!9%�a�RZN-���D� ��_�?<nJkH�^ִ��&���5tuiS��5�{atfq��I���9C���!���_��8��ʫ���������������k�HC)p����O]n0�߲��������31LXxhG.�l��~�	�!��s���ږ�v���?����,�]	�?�cnO�o�V�^-�����������ɸ M S��,S�J^B�� �R�ª8��4p���)�kB%k�*ZjȀߵ��3Q&�RCej���y���U����gegJ ���Au��(����w��+PVe]a]�*de��/��)\ ,5,5��-	2l�AB^ؐi]>S�4���Ad���|�?�ԙ?L�7�����ߦ�6�P��f�$8��[���gѷ��{0��,���\���64��C�L�kS��4����J�����h��n <��Oyi4�P#rЦ4�>��t|�f\�E�,�h,k\^]��m��Ͷݴ-��b^d�L �ϔ�F⧹0T�up�e{�l{�g��	d��i<R�V�?7M�l�hЏXkH�}5���4U�ĵ��v��rަA��zn��D���x=S}�^,yiFZ�n�d�N
y��Y!S�f���Uyq�,ܥt�9��38�3��\a��l��?sx�	Mg!�Ӱ�tYWh9���^ ��/A]�"��z1������qX��� �|��}�����/b��I���ɣ`���)�x	�_M��I=�>���6����	��%q�ң3���6�M�aS�|�:e����:ɘe��*���>,fEɰCsY/�>}L�	�����Ez���S��Ms"4��Ɋ{��@�Ϧ,�)���0oZ\%7�ᅦ�>7�A��y����;K�b6_��h��w� 6e~�JS(S���615�`:�t�i,�i(�it`�������$N��)�!_)��}���y0,���{�=t�4����Z��c�$�)ͫ�/a�'���)0k��JY�Ҽ�ᴔ��A���_��P/���aY�>S�p��濔�����3����1���,���Y���pr��'ch�e	�0͛�sE�X5*44+4�qM�U[��A7_4�vM�Mi_��i����i�D���O�)t7�X-�9��~fS�HmT�)�j)h�����x��zJ�j�����L���eT5L�p ���rh������>�Bh8,����Ȁ�ղ=��C����J��Т��t-I��O�8BC�k+I�A������t�LG�tv�.�!sM�M	^S.Ք�(�� i�L���B��W�ϧq��gD򖻁.����*9[��t,M��ث,�i�O�c���X]�קW�^�p��ч���g�C�]���Cc2�K���l�Y#�rC�>hJ˚ҹ�J�yyD���z��r�/�����B�̶' S/L��Ҧ d����V�pp��%e ��Y9#������X�U��������)�j�hʹ�F B�`о�P-'��;�)Q���%0єm����+}��X��+�*���ě���N+�HDS�ԔZ5�l4j�P��ࠎ����U�T�U)�YӬ�b85�єn5�R�*`[��n���J�1\Q��)=    �Wa��W�T_lyUS��4NR���Yij
���+�)>BMT�XG�6O%p .&�r�(��O��%�2��.����f��w^\�%/���o:u��E�J��Q�'K%�:�0G�tP��S�����P�嚺/�(��m��_�15�Z�	s����
����J��ū7�V-�ǋ�+�r:\��Y:`*_%���uE]Lų������Wk��r�.&���XP� P�8N��n�4��a�6�Ji��_��� ��>L���������ˍ�4a_a��L�}�|��kJ�"kk�*n{��8P� OT�jt9疅5�w��TZ<��#������{j�1uzc?M�Y(���K���9�.���N����^��.z��e��UV�j��P/�u��Jt���E�*S�B7��}�q_�\'���\׋���._fө���2?MXX��g�}��*��J����Ժ�Ѡ���8���q��Q�&��H�,�R8ꞅ�5ƫ�<�����2�SC �	��*X��$�Y�R]Y���R�~&�]�vP޾zں�v���	�� ���/�)�kJ�j*�r�C��������h ��>��� R����8�y�R���+@��lG���������޹u���ݝ��6��EB��̢����#)\Sv�ܾ�5J���	*�)b/;�5�0󸂌�ұȲJ�;m׏��������W�^�p8]t/�G��I��w?E*�ij�WZ�c�e�z�<�i|�)��B��w�6[�3��4�����{`1��O����;L�r���&o���ƑQRf�ă��`t�/�6C��%���&a�&̬I��)	����^�)"n��������A]��Ѩ��+��gb^_	R}3�iקr�����[�5o
���Yz�{u�,�DgT4UA���㛥��&IW�Z��|E>~m6����W�+�)�&F���z\~	ĺ��[���9M�q�n|�{iX��I���RPG���8W>��ך���z�W@�T�Qܙ5���������ä�)�
@Η��O])�+۫�*�i5��ֽ8�W�_h�C�a��
;��)Ô5�)���@�:���)��c��r֔yE�������/�a�2e^5L�9��Y�C��/�$U5t3�E¬PG��F�"K]���i��i�y��)��a
����eH��u��y���k|���D��|�t�I�nM#q�4q �9eV7�Q��:��⼎�2�P����śn�h.ik����&R��bj߭�=����f���g1�)����a#}�����Γ�q���w]�^�l���+��|��c�)��;�Sz��p���{}]u��������,�&���[ؼ��W3vW�@>%5kb0��E٩n[E�_[u����c��6��}<�7��z��������A����(��\d��oP�0-�2-ա�oK����0��b`	?�C���B�y`�	�0^XP�5_%Ϣ kd늉���p�0�`^!{k����4E���YӬk�bS�А.q+1y^�S�p�f�Gؽ�ap�0Ŭ�-Ҭ���'϶��`iW�[p�+E��G.��������]e��N��ܜ�g���E�ك|+�T�Y��Zv��3���0^%Z�Y�����x{�l�ڶض	�3a80�4L���϶���܂���ư4�Jk���9t��0�Wg���,�Ͳ�4��W�5e%�M�!g���V]K߿�5 .��h�F^�����i\����^vk�!1��
���� ⁆}��h�Ԯ�z�ei��V0p9�=��`bl-�A�b��d�����`7��C��><4� "��{ }Ň�
�ܬ���E��	���M��YY&8/7��v7ec��[��[����`_a����L2��-�����0���-�(��e�v�X}����c�M���pW5`�=Qno�[l��\�L�	�����kYZ�\vvz���5��ng!S�!�|Y����4Mp�_2�BV��2u��#�����{�1,�F�뢻ꮗO�ro4�B	?�b��4e���<��l����S�r�4���gb�S��P�Z���zGyv�A��p^$0Lu������4u����Fk1u�9�sL�o���;5�{Z̷����0���[a����КB
S�xǔup��Dߛ��Կ�I-�(-EUz�D�p+5R�IUyl����=]�Lma�
���Kp.,ߡ�*m�|�B7U"i=C����:�W�aĭ0\V.+�=-����
�p����]�5�Bn4wk��F�p�Z���8�2�ù�?�	�v�R����&6p���FMڥ�.G����������n(]*��E�	�
����-�ɷKZ��8@(_��Pe-�.9T�6_��E���&S6��BG���|��Zk*dY5!5H-J���C�R�ճi���p*N���mFߊ�al���`}��9�ʹ��]�(�ܚ�|SCi��A'x
��%�ʾS���ƛ�x[�����Nno[��4�.<y.���Vp�����.qi_0���r�t{[���1�p+7�o�̭0�W��
a�v�3�`V'ܸ-�s�i�oQ���������o��
�\���:@X�xJ�zG�,u�s�<i����)9���a|L�S aa�x���+ o:�`aȯ�F%����p��8]�����99��m����m��9��2:W�F�j�4|�ıY>g�~rD��B�up��H��Uro��9�ۺ�x`ط�zY�x.��dZ���7u�K�B�YC�RO3aM�(}�ӧ��1RB?0���0�2/��Ҭ��G�����?���&��~y*ǫI��i�T�ԱHg2���ӹ�D���E�BΗ5�R�AX�T
�*~���� �+ܩ��ø��!��8_A$0�����&+�,�Ƒ>�ҵ�[�5�<b�}!���p�:�,���������k�LE:YH'w�6���! �Pj꨹��l���;F&�e��տ;�5P�/r�Yx>�'��pZbȰ���i����r��Nx�N*���q��mu����@����j/�c�������g���Er���څ;�a��`��w�y�p?u֘*��}��
9j��g/�a�d�PWn���p^��0��,B�$Uj8��~Z�տ���R<5J�/��|�V����֐�c�X9j�f{A��0�W�l�*�
K��������n�G�L=�����OH�h�L�{�櫪�A���L�XһS_@?k�;�����B���kȥueR������e~��d�>z{ƺ�q˿����H��5yfqq}P.U�W�+���2��-��]a|0,�:�IF-�n�"R�B�Y�F��Ђ��f1>���u��a�|uW��嚿p��i"�{K�3|u�j�aڜ�\�8�BN��	u�Й ����FMZt�,�C��;g��7�X;��^`��=.��b��y�ѼA]T��}S,�ϊ�?S*�`	;��0ǂ�_A<04�n^�3���!��c�ք�Y.��@Y�u�/.�YNZH5k`�bGs7-��Q`i��o���.��5��WY�SaHGk�X�Ww �B��	ia�v�2$�S���ټ��B)�@˫�`�{���r<_�$��rV�x������z�=�^O�05�4��/���&�S�@Rڷ�P�ș��Rò����Oiea��0`X�u�g��9���j���c-�8f]��4�B�Fa=w���ٗ�JKb�i!�-$������5�vP����*��.sgÀ����SZL+�Oia�}G�Kz��K<Xl$ �L�T	�t��LIoa��0"�i�<��Aaǵ��:k�OW�Y�;��{~3o=��f�.dȅ{(�\�0ZYȗw`�F'ӛ�X�\�|�pa�1,�4o�b?aX@iũn�Ԝ�V��gᮋt��j�2R�v̗X�J�Ա�	Z�������?A%��/���)�͝�~�`7���س�ya]�����l;����c�����~�����z}���#`�Yi�a�aV�b} ��� Sܱ��.#+�W��Q��<l�ߐ?�����}l    2�)��9�zS{��2��1��1d�����R�<ݴ�Y�
��w���,c09sd���y�B��%�[B�L�T�p+I
���q^�N1��,d؅��°gA������9����������?ǻ�c�~��ol-\U�����Tw�4�`�Ȁ%��+|�T94W*96�}�tq��ʅ{J��p?I򴤑x�ỂA�Ht����y��A�����g-�ve�)���tXu�6�!�.K, L�;̺�Ѕ�8t�T �����Pv9����@d!�8�05Mi���J��K���9uTb��}���t��茄\���~�ӂ6:�'nT�]�*ӊ�GM��W���u�&�Y��Iwa�y}D�&)��aU��(C��>��TvC��a���Й&�,-��?$�s����$4��+��Q�]�9&��ʟY�˛>w�$k�z����)ۄ������9p�1H����[i6��};��i�/��5�@G��FIk��|�\g��H��ei�*3�8�L�w!)`!��N ������v��w��e���;@C���-5/�ߑJ@é�T׎�~�Gݫ_�/tv������$i/��P���Wji�)��]��7���5pN>Kd������U'��ڦX�x):��F:˿>Ed��= I�>�����+��71M�goB�*��o���n��Fl@���k|7I�^���� �p?Ҡni�����2�H������&_��4&\=��L2�rZɴ	=gHⶥ~��=r�R���Oe�|5�m��4�[���0�/k� U�8����+k"����,W�iG��Kc�5�ii���[��q�R�`�qh��g�ơrXzh9M�)-���P^�~ϗR	� r)��iJe��<��g��*�RZ���<ʰ-]���z�?e�{�4+u4jy�,:gk�m��Xێ�C�)hJL�M)������ظcS�G8�ϱ��1��R�Ytťy�c_o�k��Kx��Ͻ/]wm�����#Ӎ�u��7�l����n�2�.g 6R&��Խ��aU��`x�a��
Hh|)q��Om0���i��4�Z�E��7���?�����~��L� _��*�:tz~�meb���ėl�����U�#���|Ӌ�J� o�c�0�Ѿ���i����̹�[��Q�Bу�}��O8��ļ0�o)7�l�p�bfM�,��7��"e�T�R�N3t/I��3�@�`~�ˎ�y��F��S��Oit�^2���#_�L���\��Y\����?+�<���]^�,Y�н$7���2�yS�JA�оO��gT�5g�.�Y�p�C]_©3�,�쥔�4j)���2�Ҙhi\��̰�e�H���c��!x��D�*��vLx�=��S�3�Y�,�x3n����e��p���g����Jd��2� d�����������0K�~�Y�:+��m\���2�(7�Lw�l��h��+�]gmO	ϐ�����e�@;���7�퍳���ĞX'�k�a�TG���2k�alo�C���?�Ԡ��A׾v0�_�ڰ�U�������+S��a�+�n��=/���PB���)KÚ�{^��;�u%|�j������Z]ʴK#��ĸ��᳟B}g�,ݿ��o<7�l�*�~2FJS�r�����R�\J�Kw�L��L#��$��i����н�gb�e*���O�mU�VLc���eJ�C�򺮴��_j
w������\�,��5P��I(�4�Y��T�i�՗���sR?SӔ@��$�}d~,彥���ܖRݰ�**�Ylj��0��s{���p\tʆ|���8����M�?rS�9S��Z4���v����QRf[�lKw��t�����!��r,]�pe)�,a�@K�l�ye�>�Ur���t?�/���d�Ʉ��rؒ�hi8�4��/��Tz�|�o_G�ҖP�R�Z;���/eJXK(p��W��dJ��ҍ&J���m����F�<+����+S�i?�,u��o�ԏ���R�R�ZB^K��L6�l��40�"�7]T�@#�2-�SgE�T�������r��l���(��a�߲�^�ҡ2���O������i80�ޛ>	r�.��d��K���XK���Q��8jiT5
x ΃WUܪ��d3���8�ʵ��g���H���z�\���Ʋ��7r�iH5Raj���c����c�8�g�`��P�V�ᢖ�j-��L�C�KM>=�ǆ\�4R[��f����w5-e�5�裔O�b�]κ�g�����:�LkW��Aw�L	lT�4��/�],Sb\J�#�,ơ��q��-ᱥ\&a��G�)U}��_���)�-ɖ��P�JS݋�K.8jI4�4�Z��!5�&&@�N'䲡�����xJ�ԕ�x�m�
�|�U��*f 2��4I!�e��m� &�Uh�}�Vyǔ�|�m��҄>�!%[.�������yni��t��tG˔���q��ya]�,���	QN�	��n^��dK��t�t�4�Z]ﬢ\m�o��	$8��������)��[k��X�ڪ��r�`��n���Ԣ��d|I&/�ԫ�b��S}7�Lb�%�h�U��3�s���k�1���k�˷\a�#fC_�Ń��l�u�*w�lB=X�i2M�}n�E8i�;hb��L�w M�<Z�%�i�\H�C�,5/o��*5�g���3yB�K�u��(,>m5��veyq�:$�:����t	t�i�C���Jz&�^�n�-e�a�E����H}ҩ�Q��xl�R�!N�d�O�1U��i���|���4駎�\��r�_.�φ������,�dy���ƄkPW�x�]Lw'̈́8��lKÿ���8q	�.�ԥ;n��〗g�R��XmC�4k��^>؋픩C�7.�^��0oZ���\�Ûk�%���/ޖSYt�X>��:�����3o_ʹ�gC=e�B>���o(�p醝)Q�!M�y}A��� ��۷j�Oc��o�^��	.�4�����"�v��d�%t�tWΔ˖n�IJ��J�JK���<:��	�L�(��tą�FB��01^*�*�J��U�L��lۅ��x�Z����ץ�G˥�e�|u>؂Ů��Eg,�\��O-iX���F�K�ʥ����� si<�dOO���o���x.�5p�"���a��ht�,NW���RV\�mhBhkI1��}lñE�����s�~�tKt7��Pp�ڨr�R�a������U�����-������{F
\��'�4k��*��RX�4���׊��[z��}|�y�6��i�9�/��2+4�9���+��[��t�[��gC��A�H�ńn �q0>z��7R�Γ��b�����)��@Әs)�.eˑ�+�v��@������r(@S��K(&׼�E>������K��L��5(�@��d0��/�xK�ɥt9RӔ�%L�����Hh`U��м�o��L�ɵ�J��AS�\�Yh-�A�2��m�逆�#��o�Y˕����rh�O1#�5��vR���D4R&R��~�2/^jk������>��s�uI.i-ݱ3���1��@Xɳ[V���>���a��hm/-��?`hїK��lw��������,OS��#��ۘ<����n������8��NΥ�����+Iq�u�\v�aK�Mc�a���`~~uc7
%��)�4K�����R�Zr���������Z�k0�jh�*��|�x}>ȟ�b��o��]4e�%�7(���	��<1��])R��=î�1��riк����hI��P���R]J���P�����a*���=�[��Z����% �	��aV?/��eϥ�;���ב�MKӝL8�c%��	o�r� U�A�0�>�Kt�nHaj��t �-�Դ����M�x~�!�J�ʥҼ��e0��c��u�����<u�:f��L���neD;R���|@l�y='(�ie8: ��@��*��q���f�ZL��O�w�V�5B|o���B��J���Z�!-ƫ�Ô�߱[�6+�H�)���@�z+Hl� ���ٴ�G�-h_ڇ&�t�)C��:�0�9ԟ�R�*-ԕ/�qy�eӗ�hy�����v\�C�3_^�e�����0    ���t��S5�} n�m;�wζӶ�8ܼǊ��{�c��7�7�U�c���̯5]���w��/���µ����)-��*tG�r�Ά�4�փ��e乆|&�TX�1e����P94�+!��/�{6����VR���q/�}Y�v���v��.�%ݍT�O�e\/l%���2��Y$05����1�՜Z�;��Re�:��&z1�6?��6�L eY���x0^����$���g��%%e���6���6$=Zz����<ZYey�e'���b�O^�����)Xs?d���C���[tY��<��v���n���/5L�)�c��Ʃ���,���%ޞ���}��ed�r��rcςWF�+6-�ա{��|)����c{���\���?o���஢�^����r�� u%����5�9���8�԰r���W�[��QǞ��K�[ˮ$���x�u뚚h�9�����Ξ��B�:˄v�&+�r_O�,���̶���lW�
z\I����5�_�i���tН�Q�g؝:;x�� ���aT�\�2�a[0 �|k���B�m2�.�ە����z�����pZ���~����G�nqa��ޠ�Z	Sc�h��Ҁu�l�঎^����
�[I�kH�Re���̏�84�hw<��
ώ�g�Ա��]��ck���nǞ����ks��إ�Ά%a�-@1��R��*:��FG�ymܵ��ٓ){o��Q��+7�$���pjjQ�}#9s��3��A�Fhv����'�weE���W�R�A����
+4�.kRvg��'�l��2�ʨv��&ה0��4�*�:��룆u:��a�r"r<�# S��We١���j�����Rv�	����Et��0i��D���Z�vC(+~�eM���et�N����`�����{�(��ʳp:�ť땁�� u%����5hș9���W����nb�;�'���m���v�ӕ����W�(�*_�Jڶ=O�_��b�r�J�`���xe��2�y���;}���?%%�S��g:�9F��'neZleZơk���IeP����pL|5�ij��������.��Dh?��bh?4�WZ��,�P�<h�kz�e|�rӆ>}w.%O�|�fYZ�!�����W�6�� J	��N:`�/j��xW�Z����xpT
)�w<v�N:��$��1	I�2�O�X7T]a�ܷ��RW�+	�%Y��y��ya�z���=e��,`�ӒXF�#�'���Y��!�J�!喖*�Sz�~�H�+wE-Cڕ��Jf `^
��4I˥�B�s|������>��yO:A��ג�fJ�۳�$�������t5��^���t�.����,pw�9�c�2?���� I�,�+Y���-p�[�Y���ף8�1�0���wW�Zn�ZF�#e9��*�|G
9Mdi�M0`���:~«X�h��cԕ����KO��W������ú�d�5LS�T�E��~J�9��4�NK����(p�Ǖ��������R��������������뤐�@�~e_n��`>�re�F��4�{X����.�攅�iaZ�7�R�k�cz�?-��\^�e;׿:�U�̚�PVOK]HȺ+ѕ�>RХ�h������1������^�W����kB7�pனeh�Z�/ɯ��Q%�v��i�W��ʣLS�s�r����$^��R
\����k�r�B`<[��ލX�LtgJ�+�~eP��>[#�Oi����J�J�U�I_7��+��5p�q�ޕl���������C��q�V�X�+�JR��'O���۵�T0�7gt	���`�b��tn ߯d�BN����*���M�q) }����n/O��о|,W��8_>������6eJ���;N/�=UKn]I�#u-'(�J��4رۭ[����i^z�}]�]�k��+7r��f�)�C��roՒ�׀��{7mm��̗�����~���W��+C�5,$��k}�ӕ1�ʽV��x��B�11ͲX�����0�\�45dw��Z��*�2GM�W�_I�k�Z'��אB�����bi�x�CSZ���rWF�+�y}m_(n'{z�:�Q�P�jߔX���J>��m�u�r�J�&�}��MlI�#�E?E�/ �R���U�B��E�� �����G�K�ǹ�ꩭ[�����8E���+J���a\�o}p�zߺ�;�T��>�]�=�7W�kȗ�~�&`�٩
d?����e�M��kI�k��a�@Wn��@q����ʭV� �A���P�*&,M]ι1�d��F6�\�okI�+�˕l;R���N�#2�J�[�Wk���1W�+c̕�8�߉��j��B���G���?`��R����ɹ,;L,��چ��帕�2Z\ǆ?S���S9,��q4'�GsW�2`Mw�|\=��*J���B"�f�`[�*8
̍?���j��JN͹�;�6<]��i�,�J�JSZp�0,K�+�o%��<�������BW0�J"]��NH�˱�x)����o"ҕL���@���v4ͯm�)���j8Ճ�)��������2F]I�k�,tRנ}��c��K�+�}�s���s�醀W;F���d땛���Uy!��ܺ�hײԕ���8p%#�$ᕴ���WƔ+I~e������Γ�V�#�I�|:������:,§+��D��,�� �)�J��N���d��rؒxWƓ+Yu%7����u�34\�d�5,���S�ʺ���}�hp%w��V������kɫ���25�e�?MҔ`V_�fJ����)����	te��r؆Ф̣�|4��D?ޮC�{����J>�!��n�p�{_����n�{+��5l��*S\y��������2b_�߆�+��z_m��:��֒���D��Z̨r�o`Z��r��3W�#KྗPc�����p�:3���D�䘷i�WD�C'���ˈp��2X�2�ے,�0���}���a�a%|x[Fs[��Zj�sĭ��yͲlj���g�Zvi��i*���RUi�]���K>�r�X�
�X����  ��4�;�s	{,<[^�/�s�-`�.�tQz&i��c�H+���I'�v����{��`���'\�Ҽm!,����M�W�Ų��ڒ����'��.�>X�yn<��.	qT�,L���ul{�r��~��BH@�|���R;n�M��~9�{l��t�y��x�wԱ��>�ހ8ܒ6�d�-is�h��{�e%j�}<���e8�妫��SI!��O����*ê��c�{e����%k�a
Ceh/e��}FO�)&t���2�ےJ��tuɍ[���WSK�\�|�K��Y��iV ǬX�h��,�¡EX/_��K���O����z��L�������pP�-Ir�}^R���
�HN��I�#�O��T��`q��� �25�,ʮ�y0|:)�=m��ޭK�ے	�����L�\�������,u����##��$��-���8�`�^�
Kꙇ���֤�<�xَ�u,pl��BO�x���g�ok�!��'�g}=���k|�Z�[��
��G�w��pjQ֜���/Qnɐ[n�Jʼ�j�u�`sK�����T�%qn��B��<�Һ��W�)��sa��ox��fȝS߲�l����4+��}����� $= '�!��ޔ���-��w��p�&0,���58�N�M�{]�ᖌ�e�8` S�����&珞t7`���kCiI%������y뽌G*L��R����~L10�E�^ GeyvK��r[����yn�H<�v{l�ϱ]~���X���Mb�4�e$:R���{`�aq�t�nw��2k	M^�'�u���j�Q�[���JW�:�Q���.C�-9z�4���J�<�6Q@�ma���.w�%�IW��Θe�-c�-	q@C��5���#�e�9�6x\�Eb8�R�i�r�uK�2��°�}_6����6	�V��l��%Mn�0���!�H�L��[�.9i˽Z���6Љ��pa�r�tg�e�8 �g���j0��b[�ƺ$�a����j��I:��Q[�R��B]    ��T}��n7Q��4�BƖQߖԲeع�x���i�Foo*�V�nK��r��%�l���r�S��Z����Wz���G噭p��NcT�_�[�|���JH%�5tw��U�`Kn&C�4/T��'��20`�4��T�������tI*[R���uI*k*�)SKSi��:��'4���n�U��Q���.i_��NIM-̛��~�eX��E���j��r�0���ғtp����L�����p0�,>5�;����+�E8����+�k��"��2�TY�+�l��c:���2Z���̦�K��r��%�C��U�w�L�Ho��lv�2��2��2��rcT��ܲ��nnڀ�����){k�m���2�J!,�a�
S��c�Ku�j��86J�Zl���u���rԆ���p<K�`V�M1��.˫!�+�f��T�����,2
w�Iap-78m���IQ�jk�����o�̲����֐����-b��,U�~</��|��)Papr΅˙n9$�mZmI�Z����H�z�[zV�uvI�ZFd#�Ej�J���y4��ؖ5���i��\�6�e$�N�y�ٖ;�����i�|�=W�E�ĭ�)p�E�8�6ۂ����F)��p��T
ؒ��@�}�T۳�ݘ(������R���ؖ�o{u4�h�<�mJ�;�.	^K.גĵdl-c�-�_ˈm�|5U:g��(Jr��
/giVzyZ�#�8lK���w�B�U!���.���Y����4�<OS�p+��t�m��Z�Ԭ�n����Z��x����������䆡�b>=���5�)S��rT��ղ]G�]_����嶥KR`^{�1�H�ML`h�]Xq��F_����?���,:4m�i>*�﹖3p�#]Fa[�Q�����n5�f��,���k�3��'-�a\/�w��2��ٖT��k������lhf�W9��0�<,$����;��G�6t����P�-����ס�z��ږt.RG0�{�19j/ݞXnk�
��h-9�c�հ�@=��w���]L�d1@i��q���y�c|�qm��)�����vV.=���Y�&�:��~���+�C���Sۙ�;�\��S����`��z´��X7K�Z�� -B�'�SB�r��%�j��j�}eey-ï-ï�Ғ���etQ�r�
XY�R��z����v�v[ӆ���پ�f��e�����(�V�����6f_S	}��ߎ]7�;aTB�����l/�I7�ar}�~�5<�ɰx1|����׷�ۇ.L�O��+R��G]O0a�>��>YG�T�(32��̡��6������:'壍��R>�H�<�m =�C�d��`k� ����Yv�ۻ�,o�����[���}�e�pi�t���l�O��`�]���>A�b	�O*����-��G	��K�.���}	�����	����p�K�F�O�!�T���5�e�����}��~R��z��"Q��U����Vy
���v�Cq���L��/�f̱ԑ>n�����5(��g���ՏYe�/o�ܣ]f|<�U�$$�e��;�ܦ��JsW���A�F�W޼q�t�3"���3r؇8�����i�!�}X_�W�P�o��o�r����{��]�}�1��8��d�]|٪�D�!�}	��%ۇ�����C6ه5���?e�LWyK#Q�;�G�a�}��~�e�W~�*T��O�Ofц\���>��>Q�����D�O��O"І>��j�r�ŲG��T�8�!����d-�������r<ߺ�c���n�$�м>ܯO�����A��p�>��4����K˱|����}� �f ��˶mه�I>�%[,4�&�7[��y<�C��O�0��dW@�C9��^7����7j��>|�O�� �`�K����#��>Ht�Ď��iq3_ѽ>��>��⧊0�ĢgIB��\�m�g�1#�&����~ɒ-4���{ ҫ��\U�_���2����ML���:en <�I?YGc׺|-;&m"�u�ig'-�g��`�`ӱ{4�Q��GۿpE6
�Dm��	������;�k�5�\�v�(m���������	�X��[Wx���8������>���4���Iۈ`^�s���/7� �B�����6��p���a���y��p]F�ib>��w�b���0���Mʙ��Ґ�L:��m��S��1�}�霦����py���m$����|X>?Bç����s3|�/��3ޟn}��s��Q����{-�K�l^o&�)nw�vR[��(og��s���ζ���س��PS�z*#Q�'�;e��Ԑ��<C[� ����l]��-r�7�7�1.G���l�E7:��-�&�d[�� l~����K�"�m�6��-JB�^}k<����4�WD��-<��Vۈfm���|����KI�[��}��m[��@�G�CחFt�-:��-��s�|��hg[.������nt����6�b���{�̻���3��n� bm>?�4�\�#f3�:����>���XDa��i�֑r��Q���w`i~�2��\9=+��_��̽ӿ�m�J�n�@���������������W���<��4�G:�^9e0��u�-���g�����u�&���դ��t#�mԳ���}��ˢ�v �t�#��z�'���.k��\j�^md4mx���d���C�f\��RNB���"����G�}.�W�����?�Ex �x�]�������o�hG-ʿҳV���	<ꖺ�rҍ+���? G�a���'�y�؂�ma�ҁ��NɳXRӆ�n^�؁�j]�>�����֠̈-��?�T9�r�]�e <��p�0U�8t��-y8������^<����b�n�����m��5T�E��EJ�=�%Wݘl�!a1|�A59(�٬AnK���m'�q�vxh1g0I)�T@�����\�r��;�~_��-$��-u?u����FAL��[��+m�0�����@����)]���ܗ�uc�����68MNi9���C!�\�rP)*v`*�^`������<�C��@�&�o�[c ��C�kH�6�	ж�۶��U�����m��ŋ��=��7�G~q߂�5̔,Ҕ��pm3.�Z��Dȷ�������-��Ə۸p[(�-4[(?�� ��'a^�k@�g�`7"�F�ۉ�a&ݵ�Lk��1>��Z �(_m�=̯W1hi3�r0�����r��[-���[���R�<C�cl���umX����B2��+�@m�~���|���r�,P���P��_�~�g`�m�\~t�pz��A�"�$���R��ۉ��e�,���-p���J͋��%i�	��1�)���I�6�F��HyEh���m�ٶ�`�t��{ fv	���=x�̞��$F��B�H9��Sf8��~�!�l�`��px�<�����M�g6�3�RMCN1_7Rݖ`uˬ��Zۂ������(;l�V7��N��.+e���.Yk�����f�]�i�-s)3I��-��F�u-y@O� D�-0��,p-��U^�Cv�r�4o#>�6��ٿ����n�K[��/��n��nT-���Ibӝ�[�ҍ��Q�(f[\�HP�x2.�%-X��/�&�I���=/{��t�V�pMH�%���s�"�ݴ�/��n���Gۂ�5d�L�e�a�mYK#}��%��RM��P\^���Xi�m�F�0/L����'�io�m���U�dW,��mc�5��E��Xr�5Q���Y.���2��f������2��)�Є�y���{��u����C�I�N�w�Tl�-��Ə��������F��vU�������%NݫXf"'��Ơk��P:�5[���kא[ʹF��R�FJ�`ޚ�����U���8�S~�ߟ���z�4�;t��[���}���oQ_&/�!�� ������r�<(?+�g�{k�t������/��#m�N�0/�@��ܖ�tKO��-k�	�y�~^ڑ�b	����,��o��2���e-�L�,�    ���w����f��9�7���v�r].B������?��n�P7��m�ҥ�4�:�Y���\�3���ż�r�n!�bI�P*_U�r�m��v�q[��j�+�!������
T�(Yh07�f�]��n��b�E�|>�4s^Ĵ2���[�������u[��-���ۈs�`x!%ߕ�]|Q��V}�K��k���bq��3DQk��?�� �E9��{lP��p�Z�n[��Zh�W��wca̶�hёr0��v��lK_K�!t��m����?���{~)����wi��6�ܖ�to�g���U�\�W�xL=���!=uwfSҔv��LR�D�n�+uZ�U3iJ7"]�]���b��d{��y�ݙ|�#��aR�?6�Ғ6�虳����m4�x/�\��]���װSf <�
m���S��q?v]�q�;m��)א���w�r]�(����miN��g�x@.��YۓW��(��V^u��d��Rn*���V�҉6�On+j�նԤ�9�2��l[�Gy(s	o��m��������a�>��`-�;0R���/�>ry��j����[�t	���/Zy���m�"��{�K��az���d%ݲ��/ݘtR��B�m��-r�/�!=�]n����޶l�n�^��������m��▒]���A[��hu����&��m��8�X>�	���*�R�L��x���]^�+��Jmc�md�H�yu�3��A2�v�n[��H_�U�=t�A�I�a��/w,�����Sy��=v\��M�l�2��_6��{�4VYQ*?��-�{ȡ��:w�� �n��'���c��W֘��nK���b����Q���!7�'�k[�ԍ���k�I�/�����uW��Z'����ۉӶ�O\�
��_����,.���!�_벣6�R���Nf:�]�@_-����Zlő��k����W����I��=��eG�sJ��4��V�c7��O��A�9>���E��e���;P��������x�r[�ҍ\�1����f�a�@�0@U�`��D2�nqآK�,�v�¯R>�o;����:�]���y���6^]�_ʾGQ�vxu]f(��1���~�?ÇIz`�{t�6Z\Cz��t8rQ=�����"�m�6��Ʒ�Җn$�X2Z�Lr��X�r�q[��-�+-��yZ4{��4��Jh��w�dm��L�UWR��_Wx��y���\����t�s^�����8g�4씓�ap�~�^@I���Sz�)W"����)�ux��`1('ijyݖo#�&��C�\��*�(�<`Q����,���/�y}��Tq��U�S�R7�	�d9��a���]>�5�,��5a�'��d�B���֐��T]��ֻ�;g��SC�p�t�\�W*�C+<��n�DNk�֪�>L����6�F\"���h��E�a1���� �W��q����&v��ɦ�A�W
����+��>�P�RE��"�[$�}���V8q�d+]�h��Vb���jQ��P�w�D�%�Y	tV8f%�Z���\�.ܴn/X�S�����Oީ�SUz�/�XS������JD�J���J����Ð�#]7R�j(j%oh�H9%�]�J��B5kx	 �/vK��ݰ�Jl��L+�EKܵ�F+����4��ϰ�Ϧ���F�Bz���z�-%!��m|a�U�o��V��*𦤊Sf8�Zäˉ���0X�`i�Z���^�b^�� 4U-�$R�_�Z�,�m�WXoi����Mk��6���ḁ��������^Z|���J҆n��Xa�Aՠ/����|P��_��k��i]���对/�Za�U⫥J�T����x�`���z��֐�䍼`-UEw�����-�Z��a~���/Rm]>t���zQ>׹[��)�Ù0}_�q�JK4�Ba�r�ӰXC�/�d;-���(��P5U�"���뙍���גY�Y	�Vh��)������}����}b/ r[%�i!��A����7�m@LQ4��e��r(J��y�	�V�u��Nk���}6 �i����)�j�n����Q9�|�+!�
[���
��0�*\��F+L�d��dK#���P>��{ �R�Q0�ETk�aC:+4�����/HXg�M�p���6�7c��UB�U�|�i������� -q�J"��-ʔ�?�_@�h�J�B�/���뒓�d(-�H?� �R�{h��ƣ�^���2�&��(/ݕĦ�Ħ]f��vk���`��������Vҋ6�Ԧ!
E-&�X����\X�r���J��-�V��&�-J��/����Ƶ �]rZa�Y��U�e%mi	�Vb�2[`kC#=�ue|&�
���k�Cw��/$\���Z	�V¾����r6^F9�2C���
����,�%.\	�V��Fb���\!K���Ӄ�1���.�ZWҊ��Q79P��~��I��#���|+q�
Ŭ�M���~�;L/�Ӟ��SO^W���&��V�6��I�s���J��Bx+����Pآ��
t��.�WG�J��Vb��[���)��������V�� �[C߄B�ER~������%��0�̖_>ђ��$'P�#�	HSw�v@�+e���8����s]fX-"��[IG��j2�~���^��H�.�T�z�3�b��Z�+��N̫<\COD��]�H/�����(��o%�g �_�x�68�����ZѕXr%�h�%�y��"�]a�5�I��i/�י4�RS���/�haՕ�q��pR>W�rеu~!/��"��1]��\%`\t���ʄNx�r���t�̾e���Z��UR��]�{%0)��V���m��W�y�MI��̾~��R\���;���[����+�(I��C�)�J�ц�hv��p�lWu�e�p�T='e�f�.b\C�A��Zz�����x��ӕ��k�nv��k%5h�$ڐn����Lj�.�^���1S���+^\�e�l�P[�af�*��>�\a�Ez���9W�MWHr�W�Mʍ��K�π�����5\7Bn ��.����,��>�;���/{��.0�T �}�s��+�IK��Jv�� ������N�Jj�¹Kէ
,u=Q�S�C⭩E�-�����I:Z�ϕ�t%_h ���b~x��i^�`?��2'Si���g��^-Zn>�ȗ1�a0 }E>/	����������e�!
^CdS�}̻����ˌC��}%^C_?)I��dRf� ߕ8vK�C7/i]��� ���`|~�����6���<�i ����a%��P|�?�]I[%�t�;�����]eQ���L��P�e�H�hV �%w��m��O�4�����Y>����+!�J`�(d��W��݂��-��J�ђ�4��cHJG�>���!A�
+������T�u{{�v���U�z��W(z1T�[5=aB�+�� �B�+�Oc��GK�ֵ�C�5?��J����z�#�Ŏ��	�9�~Z|i���Fz�ٮ�<l�ŮD�k�	�AH\eʟ�	}���]�y�Mq����+a�J�ђ��DċT���`0�����!P]	l���\���p�2Z�D�bZb�R_!V��u�R�ܒ���+4� ����lK0�jg� {iC��<�Ea�% ��ةy���\��_���w�I2Ҿl�}��%�]	^W�5|���
t��pt��������
}/n��7�~؁H������ð\ �큏�W2���w�{�4Y���n�2��	�Vk[(��`���4Xe� �]�I�w`�4�G|����������I��Zh��6uiwʂP~)@�T�!l���P��<���n��ð ���I/�j@�{��&�E�ܓ�l
��Ҕu@BՒ��PK��(^���Z\I#9����^D���+q�J�Ն�0�-B�e��W�x��WI���d��gQ�O��+����91�E�kxA�� �+��*�Qo�!��9��ኒ�6��r�6�\����
ɮĴ���R[��n������ٞ��!�H.�Bы!�r�V��<T93�	�^��\6e?��W�uK].�ͅ�Q^��   C�nQ��\�x�G�d[m�	)_���.�L�WMP�:f� y��%����*���f1�J��r5�8���s����_P�
ӯ�U-�����+��}�����>> �����M�n�%v<�M�kr���6��2g�Ǐ�R��䪅�W!�UX{%�^R��C��������
��W"�ĩ%h^L6�/0Y���͏ �zb^ɆZ��u�!�+�|�%"^�4Ž���/�{a1�0���>m�	��˜Q�(w%Aj��4��,@^ë�6D�����U��=$eN,{{����/����%�jø��GX�#�ݑ�4@b�7YNR�t����p�3���Ŀ#�ޑg�Ⱥz͋I��g�5p9����Y�@��b\�ޛ����{��c1U5��3��#��Al���&�I/���s[V����΍�d�6�R�SÁ��C������`F����x�x�q� 3���fNe�AHL�a)�2�<�0x]��d1��{�[�i�ݗ`��h!�nR�����ԁ�:����t����sI>'����� $6R7�{;�m�i�]��';���B��D�Y�-^���(��,��+W���ҟr���n��Rފ��<ZZZznK׹H,���夏�9ṇ�'�9�,r��HS�����S.k�Iz�#�A*<���U�Iw��]�ă�x0�c��<f�����x]� ��H�k��'puH��������@�x��:3�Ɠ���6u�\7M�������0���-��HO �YP�@|��d���k��e�:��u,���w��.V^�PNUSդ�	,����@�`����KI�,����ȷz�OX�]��}:��/��Ow?ǵj 86d��A`��u&�d��[�ǳ]5�Rb���9�m��C�{BZ�Un�ҷrU�A�=��1�W�Rz��);�Y�$�	��$I�ߵa�~A/P��1��,�G��HܧF������7�$�'����{����"�`�ܯ���E��5�5>�^�D��C�k�o�t}^O�7�?�E"�RN}�z�`Fw/�"�I��#8^C_���L#=4�#�T��'9��0P�)Lǟ��A.l�)�:���y��m8,T�"-].��y���Ý�%���2�	�w��;Ȉ'�ă�P�K:��:��{�������d��#+����w����8g�<�e|=8�S]�� �����{$�=	�w��r9)�﷜��-�^,9<`�V8�ܕ��ܣ����F1<h��*���K���:
qw0�|��O]�C�cG��A�w#�4<L^n}���z�r=��Q�v������~�N�+�����h!g��;<�Gf��4�6���wx��|Z�tSK����d݃u����p�V�K��6�#��4{ɋ�m�����5�s�K���lÆ��	0�[c��'��n/�g��,z��ox9H�Ƅ������2*˨��ȃ��@2y�H��+�R�����o�r�yH���v'0��ū��$W�|���VAD���ʕ�x6k�`í���nS�����\��e�#����X�'��TK��)�I;Ma��H�C7���0@ߦ��}����OnՕ4�j��8M���I�#��A�k������hx��f�^�rRjbj�A_�gNʜ���*��r0m��?��A���ԗ��HM��H�m�p�t�#�^$-��ޔ�=xs�,:�Cz�?��M�8hq���W˽^J?{����G2چ����Q�p^U�PL����������IY)s�mp
Oh��0����e�KE{d����ԝ���[����6���'�R3����>`#yh���U��n�r�����x�)<���D�0O��U`�ʥ�(��h� `�ϲ9_����g/�_�C������=�R<�{{�L[_ރ���Kd������~w��.6�̋>�a�)��Ѓ� �g�.��P<���`/4ē4�]>�z-X�P�Q�[���<�y�}K��t����*�9]/�؈C3rq�6�I��.����C�A]�]tZzIC�q[l����^��+/︋G�#����H�{�#����ȂO��נ|.�I�:`��$F9(>��zv��Ir�<���dă�x	c��c�%�=b��侍�m�4��]UF�s}U���_�V���oY�w���?f�Akl�1��"<Zr��.C������!�j��ʣ#a��x�G������ ��&�G8�`��nP�HL�r}��}&��|C�O�RM_����3�?��ȁ�0��xH�V�A�m�U�~���f �3Za�����Yyǰ˓r�~����y����τ�`����0'�C�����AV�#�2��?�uc�Pҥ[���i*+�7�����+���+��*�ÃI�'��`_��~G��~,�&�Ov��@O�χ�/|�#���@<���>�Y�y���w$�m�t��K9��z�Y%�+U@��dj�o ���W4Ć�����۸����/¸UݰW�ؐ��u@[L������;"�Q�z�Ǹ��Q.)ǅ��l·� ;��m���f����0����	 F��:]k��S?%��b�A�k�ea��ۆc�$��7���R���`��k�H{{p��G(�(O`��k2�6hd޶�����d_����v��I�>��<�Q��ȀE0W�0������Xޖ)s�ߡY�,�˰����{����X(����U�2�4��Lʌ���a�ϵ`�Q�'��tM~�&)��g��!���G܆���.�n����N���}��c{w�f��'iq���ٰA͸v,�'k���iJ��Q��p����#t_�_`2I|D��K�rܺ	H��p��a�������;���K�^��Ez��nj�u�2��Ѱš�* �_�^�`����a��`�0�rN {��q���%����k���&����L�y6��,�fS�����(P�e=��;���zO��}�|݊�Ðۼ���Gx�R�="F���d>�=��2�y,.v=2�}� ��h� 6�[�-g�DN�x����<��T���},�#�����'ƒ3�[�{���O���x$�=����D�1Y�H��.lc����@n8�����R�Ͳ!�_üm�"<�3>��w�;��K��4���,x��.��an(K���_U��u�w���#B��Gf�؍@w�d��1</�{4ߗk�a��a��7��N�/�b��G7y_�n��H�G�ރ:��K�Ľ����)eq��a�ap����^C�_/����"��#�o�*�*AF)|%�sJ�t۬Or�?U�n ���dGlx�V`ұ{��y���C��#7oLn˜����_���(+���t��c�@B<"ꦺ��<�lHǲ?8>#�FG9�ཆ,2քc!��9��b���O�,�0U)x��bϪq�|�c������r���G��x#���{d�m8����(�=ık�U����n]����'�n������+]�������������\�      4   >   x�3���,H-�2��I���2�KMO-IL�I�2���OI-J,I�2�t�K-Jd&s��qqq �U       5     x�}W]��6|�������I
M
$hq:��Yˢ!ɹ8��Cȝ-��݃=�s�rvvO���oM��N�e�g55�g��J���Uc~���Ц��&���d>S��Ix��f�(ʐSZ��k�rߧMj:�Ӟ>���};d�4��d4���5�f������f�Ŧ���i���̆@�{
F۟��<�8?n�q*IN����:�2�S�v�S:�q�!g�;��P����$��m���v\f�Ap�IHC^X�
Z'z���;�|��=0ˬCI�$%�\�k���s�)Q�:J��6���0$���՘5n~��>�K����dDyb�^c�\�(��!�KL�PL0�%ʀ_^nr�V�%�����ۇ_?B��0Y�I:�n�J�bKl7�c���,�S+�/@%M���3=�}����Ɠ��t��[�B`��4ၶ��?�C��ޒ�pQ��pA�y7"�(�!pȧ|W	v�;��}j�������im��yk��
�g��j�G�(7��a,��WH%1�.��+���pM!�T\���]Z��KDA�p�:�u@�F�C7grƩW����~A*yx�C����j'�1Mi�)B5�(��$�B����B#uq����.�� ң��P�їb�Yv�9������py�V;����>N�v��@����d[��6��˅�r㫅9<(�q��иb��n!`��Z��W�<�O�)���NH6L߅!�^!	��Y���ݧ�L�x�P(��L5������S,GZMPPN�`��ߝ�v��	�.�[�*�uW$���	�ҵ�s%��������;�B�⢽79M���Z7;|D�jfL�������<�«ˣ�ǰ}��0��:a$��Ѯ�
�e&C4�8E����q9a��+��	��W�����7c�����|W�e�=������Nh
��$/H%�,��=�qU�]	���TI,-3M��4n��Le����� ���j�#*g�v9���-]g�d���hq��
,9]��� ��X�AE�^c�\3��7�A$0y_Ƹ�$u0�`%]A���1xध� 0'�����
�E��Ώ�p]̄$=lwp���8�-�I�3�y8-)��ߴ��iN�� �A���s������d���x*i)�p������)/���� �2Fn�
�g�i�#~���h���T�xQ5���ը
_`��8ħ�,�pqt,2���.����������]Z��?o�Mcs@��Օ�\v���k�_��˛���� �T�+      7      x�3��M�I�2�tK�1b���� :��      8   9   x�3��̫�2��M���2��MM�,��2��(���K�/-�2��I,JO����� _��      9   #  x�]��R�0��ڧ����k��P
L��6L���M������Ҽ}���@o����$eK���}�c��-]�e	�f��0DNINLR�8�Q�&!�A�Z|D�G�YK>ireݑ�8��.�h>���-�0w�مls� Ws\;x��dT��k��-��8�{*�7u���
`\��Nll̒2��>��(_����;�Ҟ٨�qNbQ��Z�M�	�X��i���'�J�W���;-䑣�8�`��0E^L1ò�+������NU�ߪm69���J��.S�����@Kظ�=OjD9�<_�_�$�k��U�������po'Ӈ�*�߇'��h�����V��aU��bU�}І�*P>H�F��V�1����N�AC`�]��H�2M�k}��3���n�����_��&�W��x��W� ��_@��p� �d=��j0�G=��ІN�^�� ��XSg�u�8�,�e��\�y��S�']�����(O��[�fM�fs�I���@��N�ӳ��8v�X�:³=����������V`      ;   9   x�-ʱ  �:�1������[QQ�Q�hܣ��6��n4�����j�������`      <      x�3�4�2�45����� n      =      x������ � �      >      x������ � �      B      x�3��4������ 
��      ?      x�+I-.�,���1~\1z\\\ L�b      A      x������ � �     