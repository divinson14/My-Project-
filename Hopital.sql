PGDMP      1                |            Hopital    14.5    16.0     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    66553    Hopital    DATABASE     ~   CREATE DATABASE "Hopital" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Cameroon.1252';
    DROP DATABASE "Hopital";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    82937    dat    TABLE     o   CREATE TABLE public.dat (
    docteur text,
    jour text,
    month text,
    annee text,
    service text
);
    DROP TABLE public.dat;
       public         heap    postgres    false    4            �            1259    66607    doc    TABLE     �   CREATE TABLE public.doc (
    nom character varying(15) NOT NULL,
    "specialité" text NOT NULL,
    jour_prise_fonction text NOT NULL,
    fin_prise_fonction text,
    nationalite text NOT NULL
);
    DROP TABLE public.doc;
       public         heap    postgres    false    4            �            1259    91129    password    TABLE     �   CREATE TABLE public.password (
    id_matricule text NOT NULL,
    password text NOT NULL,
    fernet_key text NOT NULL,
    password_encrypt text NOT NULL
);
    DROP TABLE public.password;
       public         heap    postgres    false    4            �            1259    66596    patient    TABLE     �   CREATE TABLE public.patient (
    id_patient character varying(10) NOT NULL,
    nom character varying(15) NOT NULL,
    maladie text NOT NULL,
    soins text NOT NULL
);
    DROP TABLE public.patient;
       public         heap    postgres    false    4            �            1259    66614    prise_en_charge    TABLE     �   CREATE TABLE public.prise_en_charge (
    nom_patient character varying(15) NOT NULL,
    nom_docteur character varying(15) NOT NULL,
    maladie_patient text NOT NULL,
    date_debut_traitement text NOT NULL,
    date_fin_traitement text NOT NULL
);
 #   DROP TABLE public.prise_en_charge;
       public         heap    postgres    false    4                      0    82937    dat 
   TABLE DATA           C   COPY public.dat (docteur, jour, month, annee, service) FROM stdin;
    public          postgres    false    212   "                 0    66607    doc 
   TABLE DATA           g   COPY public.doc (nom, "specialité", jour_prise_fonction, fin_prise_fonction, nationalite) FROM stdin;
    public          postgres    false    210   �                 0    91129    password 
   TABLE DATA           X   COPY public.password (id_matricule, password, fernet_key, password_encrypt) FROM stdin;
    public          postgres    false    213   �                 0    66596    patient 
   TABLE DATA           B   COPY public.patient (id_patient, nom, maladie, soins) FROM stdin;
    public          postgres    false    209   �                 0    66614    prise_en_charge 
   TABLE DATA           �   COPY public.prise_en_charge (nom_patient, nom_docteur, maladie_patient, date_debut_traitement, date_fin_traitement) FROM stdin;
    public          postgres    false    211   �       r           2606    66613    doc doc_cc0 
   CONSTRAINT     J   ALTER TABLE ONLY public.doc
    ADD CONSTRAINT doc_cc0 PRIMARY KEY (nom);
 5   ALTER TABLE ONLY public.doc DROP CONSTRAINT doc_cc0;
       public            postgres    false    210            t           2606    91135    password password_cc1 
   CONSTRAINT     Y   ALTER TABLE ONLY public.password
    ADD CONSTRAINT password_cc1 PRIMARY KEY (password);
 ?   ALTER TABLE ONLY public.password DROP CONSTRAINT password_cc1;
       public            postgres    false    213            l           2606    66602    patient patient_cc0 
   CONSTRAINT     [   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_cc0 PRIMARY KEY (maladie, nom);
 =   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_cc0;
       public            postgres    false    209    209            n           2606    66604    patient patient_cc1 
   CONSTRAINT     b   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_cc1 UNIQUE (id_patient, nom, maladie);
 =   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_cc1;
       public            postgres    false    209    209    209            p           2606    66606    patient patient_cc2 
   CONSTRAINT     O   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_cc2 UNIQUE (soins);
 =   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_cc2;
       public            postgres    false    209            u           2606    66619    prise_en_charge prise_cc0    FK CONSTRAINT     �   ALTER TABLE ONLY public.prise_en_charge
    ADD CONSTRAINT prise_cc0 FOREIGN KEY (nom_patient, maladie_patient) REFERENCES public.patient(nom, maladie);
 C   ALTER TABLE ONLY public.prise_en_charge DROP CONSTRAINT prise_cc0;
       public          postgres    false    211    209    209    3180    211            v           2606    66624    prise_en_charge prise_cc1    FK CONSTRAINT     {   ALTER TABLE ONLY public.prise_en_charge
    ADD CONSTRAINT prise_cc1 FOREIGN KEY (nom_docteur) REFERENCES public.doc(nom);
 C   ALTER TABLE ONLY public.prise_en_charge DROP CONSTRAINT prise_cc1;
       public          postgres    false    210    3186    211               �   x�u��
�0ϛ�)M��G�x��z����]\�O������Y�3�=�VO�V
څ|�	��i���@�XC���y8vp4!Z��c��:G�Yѹ��ـ�~�n�X���t���.�}��-�����	��^�0�І��+�!�En����R�            x������ � �         �   x���
�0  �>��NʴR�l�´#X�fNm5u
�ۇ}�ϲƮ�ڊ([N�y*���rI�7X&E��V�g�v�4�k5��=�  ��r�|�q��]C�s2����+��1�t.���1��Ci"�G�w�A���c�69?��Ё ��S�}k��/�{�H���� @�8C         �   x�]��JA���y�>�졔^�B-z�Mv7�g��]�<�k�B���̘3r���{T!I&�H�d��p҅�V�*���*���vf�f�10�VC�"�d����Z焛`��洅h�M�W}!��K���4�y	\
��o�8�'�^�-��=�)�Irz��cM۶8�Q�1|pѫ.���I��9���R�Tݡm�6*��+��B�(;D]�S�{x��������F����uJ�(�<n�u����2{�            x������ � �     