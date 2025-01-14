PGDMP     0    (                 z            sql-challenge    14.1    14.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16852    sql-challenge    DATABASE     s   CREATE DATABASE "sql-challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.936';
    DROP DATABASE "sql-challenge";
                postgres    false            �            1259    17775    departments    TABLE     z   CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying(30) NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    17782    dept_emp    TABLE     t   CREATE TABLE public.dept_emp (
    emp_no character varying NOT NULL,
    dept_no character varying(30) NOT NULL
);
    DROP TABLE public.dept_emp;
       public         heap    postgres    false            �            1259    17799    dept_manager    TABLE     x   CREATE TABLE public.dept_manager (
    dept_no character varying(30) NOT NULL,
    emp_no character varying NOT NULL
);
     DROP TABLE public.dept_manager;
       public         heap    postgres    false            �            1259    17768 	   employees    TABLE     9  CREATE TABLE public.employees (
    emp_no character varying NOT NULL,
    emp_title_id character varying(30) NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    sex character varying(2) NOT NULL,
    hire_date date NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    17816    salaries    TABLE     s   CREATE TABLE public.salaries (
    emp_no character varying NOT NULL,
    salary character varying(30) NOT NULL
);
    DROP TABLE public.salaries;
       public         heap    postgres    false            �            1259    17761    titles    TABLE     r   CREATE TABLE public.titles (
    title_id character varying NOT NULL,
    title character varying(30) NOT NULL
);
    DROP TABLE public.titles;
       public         heap    postgres    false                      0    17775    departments 
   TABLE DATA           9   COPY public.departments (dept_no, dept_name) FROM stdin;
    public          postgres    false    211   �                 0    17782    dept_emp 
   TABLE DATA           3   COPY public.dept_emp (emp_no, dept_no) FROM stdin;
    public          postgres    false    212   a                 0    17799    dept_manager 
   TABLE DATA           7   COPY public.dept_manager (dept_no, emp_no) FROM stdin;
    public          postgres    false    213   ~                 0    17768 	   employees 
   TABLE DATA           l   COPY public.employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date) FROM stdin;
    public          postgres    false    210   �                 0    17816    salaries 
   TABLE DATA           2   COPY public.salaries (emp_no, salary) FROM stdin;
    public          postgres    false    214   �                 0    17761    titles 
   TABLE DATA           1   COPY public.titles (title_id, title) FROM stdin;
    public          postgres    false    209   �       t           2606    17781    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    211            v           2606    17788    dept_emp dept_emp_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_pkey PRIMARY KEY (emp_no);
 @   ALTER TABLE ONLY public.dept_emp DROP CONSTRAINT dept_emp_pkey;
       public            postgres    false    212            x           2606    17805    dept_manager dept_manager_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no);
 H   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_pkey;
       public            postgres    false    213            r           2606    17774    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    210            z           2606    17822    salaries salaries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);
 @   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_pkey;
       public            postgres    false    214            p           2606    17767    titles titles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public            postgres    false    209            |           2606    17794    dept_emp dept_emp_dept_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);
 H   ALTER TABLE ONLY public.dept_emp DROP CONSTRAINT dept_emp_dept_no_fkey;
       public          postgres    false    3188    212    211            {           2606    17789    dept_emp dept_emp_emp_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);
 G   ALTER TABLE ONLY public.dept_emp DROP CONSTRAINT dept_emp_emp_no_fkey;
       public          postgres    false    3186    210    212            }           2606    17806 &   dept_manager dept_manager_dept_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);
 P   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_dept_no_fkey;
       public          postgres    false    213    3188    211            ~           2606    17811 %   dept_manager dept_manager_emp_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);
 O   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_emp_no_fkey;
       public          postgres    false    3186    210    213                       2606    17823    salaries salaries_emp_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);
 G   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_emp_no_fkey;
       public          postgres    false    3186    214    210               �   x�e��� ����`�^��7M�l�:���&���X5uy�I௄�B)��65���a��4
��>��d'�lp
��s88[�5q/`�=6�ޢ��p�������_�Y6�5Г(���U�&t޶�3�^��xʁ���r�w_���1�t�v&[���&\���ۊn��4�4��$ɸ��˄1��f�            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     