PGDMP     
    #         	        |            flowers market    15.2    15.2 ,    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    16399    flowers market    DATABASE     �   CREATE DATABASE "flowers market" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
     DROP DATABASE "flowers market";
                postgres    false            �            1259    16415 
   Заказ    TABLE     C  CREATE TABLE public."Заказ" (
    "Номер_заказа" integer NOT NULL,
    "Номер_телефона_сотрудника" bigint NOT NULL,
    "Номер_телефона_клиента" bigint NOT NULL,
    "Дата_заказа" date NOT NULL,
    "Итоговая_стоимость" real NOT NULL
);
     DROP TABLE public."Заказ";
       public         heap    postgres    false            �            1259    16489    test_id_seq    SEQUENCE     t   CREATE SEQUENCE public.test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.test_id_seq;
       public          postgres    false    215            5           0    0    test_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.test_id_seq OWNED BY public."Заказ"."Номер_заказа";
          public          postgres    false    221            �            1259    16535    test_id_seq_1    SEQUENCE     u   CREATE SEQUENCE public.test_id_seq_1
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.test_id_seq_1;
       public          postgres    false    215            6           0    0    test_id_seq_1    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.test_id_seq_1 OWNED BY public."Заказ"."Номер_заказа";
          public          postgres    false    222            �            1259    16538    test_id_seq_2    SEQUENCE     v   CREATE SEQUENCE public.test_id_seq_2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.test_id_seq_2;
       public          postgres    false    215            7           0    0    test_id_seq_2    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.test_id_seq_2 OWNED BY public."Заказ"."Номер_заказа";
          public          postgres    false    223            �            1259    16567    test_id_seq_3    SEQUENCE     v   CREATE SEQUENCE public.test_id_seq_3
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.test_id_seq_3;
       public          postgres    false    215            8           0    0    test_id_seq_3    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.test_id_seq_3 OWNED BY public."Заказ"."Номер_заказа";
          public          postgres    false    224            �            1259    16462    Заказ_цветок    TABLE       CREATE TABLE public."Заказ_цветок" (
    "Номер_заказа" integer DEFAULT nextval('public.test_id_seq_3'::regclass) NOT NULL,
    "Код_вида" integer NOT NULL,
    "Количество_цветков_в_заказе" integer NOT NULL
);
 -   DROP TABLE public."Заказ_цветок";
       public         heap    postgres    false    224            �            1259    16432    Клиент    TABLE     �   CREATE TABLE public."Клиент" (
    "Номер_телефона_клиента" bigint NOT NULL,
    "ФИО_клиента" character varying NOT NULL,
    "Адрес_клиента" character varying NOT NULL
);
 "   DROP TABLE public."Клиент";
       public         heap    postgres    false            �            1259    16439    Поставка    TABLE     �   CREATE TABLE public."Поставка" (
    "Код_поставки" integer NOT NULL,
    "Дата_поставки" date NOT NULL
);
 &   DROP TABLE public."Поставка";
       public         heap    postgres    false            �            1259    16449    Состав_поставки    TABLE     �   CREATE TABLE public."Состав_поставки" (
    "Код_поставки" integer NOT NULL,
    "Код_вида" integer NOT NULL,
    "Количество_цветков_в_поставке" integer NOT NULL
);
 3   DROP TABLE public."Состав_поставки";
       public         heap    postgres    false            �            1259    16400    Сотрудник    TABLE     �   CREATE TABLE public."Сотрудник" (
    "Номер_телефона_сотрудника" bigint NOT NULL,
    "ФИО_сотрудника" character varying(100) NOT NULL,
    "Адрес_сотрудника" character varying NOT NULL
);
 (   DROP TABLE public."Сотрудник";
       public         heap    postgres    false            �            1259    16425    Цветок    TABLE     �   CREATE TABLE public."Цветок" (
    "Код_вида" integer NOT NULL,
    "Название" character varying NOT NULL,
    "Количество_цветков_на_складе" integer NOT NULL,
    "Цена" real NOT NULL
);
 "   DROP TABLE public."Цветок";
       public         heap    postgres    false            �           2604    16570 "   Заказ Номер_заказа    DEFAULT     �   ALTER TABLE ONLY public."Заказ" ALTER COLUMN "Номер_заказа" SET DEFAULT nextval('public.test_id_seq_3'::regclass);
 U   ALTER TABLE public."Заказ" ALTER COLUMN "Номер_заказа" DROP DEFAULT;
       public          postgres    false    224    215            %          0    16415 
   Заказ 
   TABLE DATA           �   COPY public."Заказ" ("Номер_заказа", "Номер_телефона_сотрудника", "Номер_телефона_клиента", "Дата_заказа", "Итоговая_стоимость") FROM stdin;
    public          postgres    false    215   /;       *          0    16462    Заказ_цветок 
   TABLE DATA           �   COPY public."Заказ_цветок" ("Номер_заказа", "Код_вида", "Количество_цветков_в_заказе") FROM stdin;
    public          postgres    false    220   �;       '          0    16432    Клиент 
   TABLE DATA           �   COPY public."Клиент" ("Номер_телефона_клиента", "ФИО_клиента", "Адрес_клиента") FROM stdin;
    public          postgres    false    217   �;       (          0    16439    Поставка 
   TABLE DATA           d   COPY public."Поставка" ("Код_поставки", "Дата_поставки") FROM stdin;
    public          postgres    false    218   0<       )          0    16449    Состав_поставки 
   TABLE DATA           �   COPY public."Состав_поставки" ("Код_поставки", "Код_вида", "Количество_цветков_в_поставке") FROM stdin;
    public          postgres    false    219   M<       $          0    16400    Сотрудник 
   TABLE DATA           �   COPY public."Сотрудник" ("Номер_телефона_сотрудника", "ФИО_сотрудника", "Адрес_сотрудника") FROM stdin;
    public          postgres    false    214   j<       &          0    16425    Цветок 
   TABLE DATA           �   COPY public."Цветок" ("Код_вида", "Название", "Количество_цветков_на_складе", "Цена") FROM stdin;
    public          postgres    false    216   �<       9           0    0    test_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.test_id_seq', 2, true);
          public          postgres    false    221            :           0    0    test_id_seq_1    SEQUENCE SET     <   SELECT pg_catalog.setval('public.test_id_seq_1', 11, true);
          public          postgres    false    222            ;           0    0    test_id_seq_2    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.test_id_seq_2', 7, true);
          public          postgres    false    223            <           0    0    test_id_seq_3    SEQUENCE SET     <   SELECT pg_catalog.setval('public.test_id_seq_3', 18, true);
          public          postgres    false    224            �           2606    16424    Заказ Заказ_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "Заказ_pkey" PRIMARY KEY ("Номер_заказа");
 H   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "Заказ_pkey";
       public            postgres    false    215            �           2606    16476 4   Заказ_цветок Заказ_цветок_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Заказ_цветок"
    ADD CONSTRAINT "Заказ_цветок_pkey" PRIMARY KEY ("Код_вида", "Номер_заказа");
 b   ALTER TABLE ONLY public."Заказ_цветок" DROP CONSTRAINT "Заказ_цветок_pkey";
       public            postgres    false    220    220            �           2606    16510    Клиент Клиент_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Клиент"
    ADD CONSTRAINT "Клиент_pkey" PRIMARY KEY ("Номер_телефона_клиента");
 L   ALTER TABLE ONLY public."Клиент" DROP CONSTRAINT "Клиент_pkey";
       public            postgres    false    217            �           2606    16443 &   Поставка Поставка_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."Поставка"
    ADD CONSTRAINT "Поставка_pkey" PRIMARY KEY ("Код_поставки");
 T   ALTER TABLE ONLY public."Поставка" DROP CONSTRAINT "Поставка_pkey";
       public            postgres    false    218            �           2606    16478 9   Состав_поставки Составной_ключ 
   CONSTRAINT     �   ALTER TABLE ONLY public."Состав_поставки"
    ADD CONSTRAINT "Составной_ключ" PRIMARY KEY ("Код_поставки", "Код_вида");
 g   ALTER TABLE ONLY public."Состав_поставки" DROP CONSTRAINT "Составной_ключ";
       public            postgres    false    219    219            �           2606    16523 *   Сотрудник Сотрудник_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Сотрудник"
    ADD CONSTRAINT "Сотрудник_pkey" PRIMARY KEY ("Номер_телефона_сотрудника");
 X   ALTER TABLE ONLY public."Сотрудник" DROP CONSTRAINT "Сотрудник_pkey";
       public            postgres    false    214            �           2606    16431    Цветок Цветок_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Цветок"
    ADD CONSTRAINT "Цветок_pkey" PRIMARY KEY ("Код_вида");
 L   ALTER TABLE ONLY public."Цветок" DROP CONSTRAINT "Цветок_pkey";
       public            postgres    false    216            �           2606    16457 -   Состав_поставки Код_вида    FK CONSTRAINT     �   ALTER TABLE ONLY public."Состав_поставки"
    ADD CONSTRAINT "Код_вида" FOREIGN KEY ("Код_вида") REFERENCES public."Цветок"("Код_вида");
 [   ALTER TABLE ONLY public."Состав_поставки" DROP CONSTRAINT "Код_вида";
       public          postgres    false    216    3207    219            �           2606    16470 '   Заказ_цветок Код_вида    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заказ_цветок"
    ADD CONSTRAINT "Код_вида" FOREIGN KEY ("Код_вида") REFERENCES public."Цветок"("Код_вида");
 U   ALTER TABLE ONLY public."Заказ_цветок" DROP CONSTRAINT "Код_вида";
       public          postgres    false    3207    220    216            �           2606    16452 5   Состав_поставки Код_поставки    FK CONSTRAINT     �   ALTER TABLE ONLY public."Состав_поставки"
    ADD CONSTRAINT "Код_поставки" FOREIGN KEY ("Код_поставки") REFERENCES public."Поставка"("Код_поставки");
 c   ALTER TABLE ONLY public."Состав_поставки" DROP CONSTRAINT "Код_поставки";
       public          postgres    false    218    219    3211            �           2606    16465 /   Заказ_цветок Номер_заказа    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заказ_цветок"
    ADD CONSTRAINT "Номер_заказа" FOREIGN KEY ("Номер_заказа") REFERENCES public."Заказ"("Номер_заказа");
 ]   ALTER TABLE ONLY public."Заказ_цветок" DROP CONSTRAINT "Номер_заказа";
       public          postgres    false    215    220    3205            �           2606    16511 5   Заказ Номер_телефона_клиента    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "Номер_телефона_клиента" FOREIGN KEY ("Номер_телефона_клиента") REFERENCES public."Клиент"("Номер_телефона_клиента") NOT VALID;
 c   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "Номер_телефона_клиента";
       public          postgres    false    3209    215    217            �           2606    16524 ;   Заказ Номер_телефона_сотрудника    FK CONSTRAINT       ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "Номер_телефона_сотрудника" FOREIGN KEY ("Номер_телефона_сотрудника") REFERENCES public."Сотрудник"("Номер_телефона_сотрудника");
 i   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "Номер_телефона_сотрудника";
       public          postgres    false    3203    215    214            %   O   x�����0C�3��@(f��?G�,��|x��Maw���X;��@9��P�ڹ�{���}L�j�i�ߣ�?�'�      *   *   x�34�4�44�24�4�f@��6�4�4�2��H��qqq ���      '   X   x���4547��460�0���[/l������.lR�0,��b#Xh���3.l���bXݎ��� �;��@uv(q��qqq �3Z      (      x������ � �      )      x������ � �      $   m   x��A
�0D��9�����x���,��)�����޿���7�&�C�o.�T�e��Hd��խ�(2�jdy�c琵���,e�E^����d7xEaw�7�3��ݫ@�      &   K   x�3⼰�b߅�{.쿰��ދݜ�����\Ɯ�_�qaD�̀�ː�����8�8��b���� ���     