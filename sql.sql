PGDMP     8    
            	    v            racqdevelop    10.4    10.3 <    `           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            a           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            b           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            c           1262    16597    racqdevelop    DATABASE     }   CREATE DATABASE racqdevelop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE racqdevelop;
             DBUser    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             DBUser    false            d           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  DBUser    false    3            e           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO "DBUser";
GRANT ALL ON SCHEMA public TO PUBLIC;
                  DBUser    false    3                        3079    13920    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            f           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16712    hours_change_request    TABLE     E  CREATE TABLE public.hours_change_request (
    hours_change_request_id uuid NOT NULL,
    user_profile_id uuid NOT NULL,
    new_minutes double precision,
    new_day_minutes double precision,
    new_night_minutes double precision,
    old_minutes double precision,
    old_day_minutes double precision,
    old_night_minutes double precision,
    reason character varying(100) DEFAULT NULL::character varying,
    reason_type character varying(10) DEFAULT NULL::character varying,
    created_on timestamp with time zone DEFAULT now(),
    updated_on timestamp with time zone
);
 (   DROP TABLE public.hours_change_request;
       public         racqdevelop    false    3            �            1259    16725 	   last_sync    TABLE     �   CREATE TABLE public.last_sync (
    last_sync_id uuid NOT NULL,
    user_profile_id uuid NOT NULL,
    sync_timestamp timestamp with time zone DEFAULT now(),
    device_id character varying(300) DEFAULT NULL::character varying
);
    DROP TABLE public.last_sync;
       public         racqdevelop    false    3            �            1259    16620    location    TABLE     �   CREATE TABLE public.location (
    location_id uuid NOT NULL,
    post_code character varying(50) NOT NULL,
    state_id uuid,
    suburb character varying(50) DEFAULT NULL::character varying,
    is_manual boolean DEFAULT false
);
    DROP TABLE public.location;
       public         racqdevelop    false    3            �            1259    16737    log_book    TABLE     �  CREATE TABLE public.log_book (
    log_book_id uuid NOT NULL,
    user_profile_id uuid NOT NULL,
    log_book_name character varying(100) DEFAULT NULL::character varying,
    submitted_on timestamp with time zone NOT NULL,
    approved_on timestamp with time zone,
    is_approved boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    is_submitted boolean,
    updated_on timestamp with time zone
);
    DROP TABLE public.log_book;
       public         racqdevelop    false    3            �            1259    16611    states    TABLE     q  CREATE TABLE public.states (
    state_id uuid NOT NULL,
    state_name character varying(50) DEFAULT NULL::character varying,
    sort_order character varying(50) DEFAULT NULL::character varying,
    created_on timestamp with time zone DEFAULT now(),
    updated_on timestamp with time zone,
    operation_type character varying(20) DEFAULT NULL::character varying
);
    DROP TABLE public.states;
       public         racqdevelop    false    3            �            1259    16684 
   supervisor    TABLE     A  CREATE TABLE public.supervisor (
    supervisor_id uuid NOT NULL,
    user_profile_id uuid,
    first_name character varying(50) DEFAULT NULL::character varying,
    last_name character varying(50) DEFAULT NULL::character varying,
    nick_name character varying(50) DEFAULT NULL::character varying,
    licence character varying(50) DEFAULT NULL::character varying,
    issue_state_id uuid,
    phone character varying(20) DEFAULT NULL::character varying,
    school_name character varying(50) DEFAULT NULL::character varying,
    email character varying(200) DEFAULT NULL::character varying,
    pin integer,
    is_accredited boolean DEFAULT false,
    overseas_state character varying(100) DEFAULT NULL::character varying,
    is_overseas boolean DEFAULT false,
    updated_on timestamp with time zone,
    change_pin_id uuid
);
    DROP TABLE public.supervisor;
       public         racqdevelop    false    3            �            1259    16661    target_hours    TABLE     T  CREATE TABLE public.target_hours (
    target_hours_id uuid NOT NULL,
    user_profile_id uuid,
    total_target_minutes interval,
    day_target_minutes interval,
    night_target_minutes interval,
    total_approved_minutes interval,
    day_spent_minutes interval,
    night_spent_minutes interval,
    acc_remaining_minutes interval
);
     DROP TABLE public.target_hours;
       public         racqdevelop    false    3            �            1259    16777    tips    TABLE     �  CREATE TABLE public.tips (
    tip_id uuid NOT NULL,
    title character varying(250) DEFAULT NULL::character varying,
    message character varying(2000) DEFAULT NULL::character varying,
    image_url character varying(200) DEFAULT NULL::character varying,
    created_on timestamp with time zone DEFAULT now(),
    updated_on timestamp with time zone,
    operation_type character varying(20)
);
    DROP TABLE public.tips;
       public         racqdevelop    false    3            �            1259    16750    trip    TABLE     �  CREATE TABLE public.trip (
    trip_id uuid NOT NULL,
    user_profile_id uuid,
    log_book_id uuid,
    supervisor_id uuid,
    vehicle_id uuid,
    start_location character varying(50),
    end_location character varying(50),
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    duration interval,
    night_drive interval,
    start_odometer bigint,
    end_odometer bigint,
    acc_trainer_minutes interval,
    is_drafted boolean DEFAULT false,
    created_on timestamp with time zone DEFAULT now(),
    reason character varying(2000),
    trip_status character varying(20),
    is_deleted boolean DEFAULT false,
    day_drive interval,
    updated_on timestamp with time zone,
    approved_on timestamp with time zone,
    rejected_on timestamp with time zone,
    is_manual boolean DEFAULT false,
    is_email_link_valid boolean DEFAULT false
);
    DROP TABLE public.trip;
       public         racqdevelop    false    3            �            1259    16632    user_profile    TABLE     +  CREATE TABLE public.user_profile (
    user_profile_id uuid NOT NULL,
    user_id uuid,
    first_name character varying(50) DEFAULT NULL::character varying,
    last_name character varying(50) DEFAULT NULL::character varying,
    dob timestamp with time zone,
    licence character varying(50) DEFAULT NULL::character varying,
    phone character varying(20) DEFAULT NULL::character varying,
    street_address character varying(500) DEFAULT NULL::character varying,
    location_id uuid,
    device_token character varying(500) DEFAULT NULL::character varying,
    contact_method character varying(10) DEFAULT NULL::character varying,
    created_on timestamp with time zone DEFAULT now(),
    racq_membership integer,
    is_licence_approved boolean DEFAULT false,
    updated_on timestamp with time zone
);
     DROP TABLE public.user_profile;
       public         racqdevelop    false    3            �            1259    16598    users    TABLE     �  CREATE TABLE public.users (
    user_id uuid NOT NULL,
    email character varying(200),
    password character varying(50) DEFAULT NULL::character varying,
    verification_code character varying(10),
    is_verified boolean DEFAULT false,
    is_active boolean DEFAULT false,
    user_role character varying(20),
    access_token character varying(500),
    salt character varying(50)
);
    DROP TABLE public.users;
       public         racqdevelop    false    3            �            1259    16671    vehicle    TABLE       CREATE TABLE public.vehicle (
    vehicle_id uuid NOT NULL,
    user_profile_id uuid,
    number_plate character varying(50) DEFAULT NULL::character varying,
    vehicle_name character varying(256) DEFAULT NULL::character varying,
    is_deleted boolean DEFAULT false
);
    DROP TABLE public.vehicle;
       public         racqdevelop    false    3            Y          0    16712    hours_change_request 
   TABLE DATA               �   COPY public.hours_change_request (hours_change_request_id, user_profile_id, new_minutes, new_day_minutes, new_night_minutes, old_minutes, old_day_minutes, old_night_minutes, reason, reason_type, created_on, updated_on) FROM stdin;
    public       racqdevelop    false    203   `Z       Z          0    16725 	   last_sync 
   TABLE DATA               ]   COPY public.last_sync (last_sync_id, user_profile_id, sync_timestamp, device_id) FROM stdin;
    public       racqdevelop    false    204   =^       T          0    16620    location 
   TABLE DATA               W   COPY public.location (location_id, post_code, state_id, suburb, is_manual) FROM stdin;
    public       racqdevelop    false    198   ;a       [          0    16737    log_book 
   TABLE DATA               �   COPY public.log_book (log_book_id, user_profile_id, log_book_name, submitted_on, approved_on, is_approved, is_deleted, is_submitted, updated_on) FROM stdin;
    public       racqdevelop    false    205   d       S          0    16611    states 
   TABLE DATA               j   COPY public.states (state_id, state_name, sort_order, created_on, updated_on, operation_type) FROM stdin;
    public       racqdevelop    false    197   *e       X          0    16684 
   supervisor 
   TABLE DATA               �   COPY public.supervisor (supervisor_id, user_profile_id, first_name, last_name, nick_name, licence, issue_state_id, phone, school_name, email, pin, is_accredited, overseas_state, is_overseas, updated_on, change_pin_id) FROM stdin;
    public       racqdevelop    false    202   �f       V          0    16661    target_hours 
   TABLE DATA               �   COPY public.target_hours (target_hours_id, user_profile_id, total_target_minutes, day_target_minutes, night_target_minutes, total_approved_minutes, day_spent_minutes, night_spent_minutes, acc_remaining_minutes) FROM stdin;
    public       racqdevelop    false    200   �n       ]          0    16777    tips 
   TABLE DATA               i   COPY public.tips (tip_id, title, message, image_url, created_on, updated_on, operation_type) FROM stdin;
    public       racqdevelop    false    207   Ts       \          0    16750    trip 
   TABLE DATA               h  COPY public.trip (trip_id, user_profile_id, log_book_id, supervisor_id, vehicle_id, start_location, end_location, start_time, end_time, duration, night_drive, start_odometer, end_odometer, acc_trainer_minutes, is_drafted, created_on, reason, trip_status, is_deleted, day_drive, updated_on, approved_on, rejected_on, is_manual, is_email_link_valid) FROM stdin;
    public       racqdevelop    false    206   gt       U          0    16632    user_profile 
   TABLE DATA               �   COPY public.user_profile (user_profile_id, user_id, first_name, last_name, dob, licence, phone, street_address, location_id, device_token, contact_method, created_on, racq_membership, is_licence_approved, updated_on) FROM stdin;
    public       racqdevelop    false    199   ^�       R          0    16598    users 
   TABLE DATA               �   COPY public.users (user_id, email, password, verification_code, is_verified, is_active, user_role, access_token, salt) FROM stdin;
    public       racqdevelop    false    196   J�       W          0    16671    vehicle 
   TABLE DATA               f   COPY public.vehicle (vehicle_id, user_profile_id, number_plate, vehicle_name, is_deleted) FROM stdin;
    public       racqdevelop    false    201   ��       �           2606    16610    users email_uk 
   CONSTRAINT     J   ALTER TABLE ONLY public.users
    ADD CONSTRAINT email_uk UNIQUE (email);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT email_uk;
       public         racqdevelop    false    196            �           2606    16719 .   hours_change_request hours_change_request_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hours_change_request
    ADD CONSTRAINT hours_change_request_pkey PRIMARY KEY (hours_change_request_id);
 X   ALTER TABLE ONLY public.hours_change_request DROP CONSTRAINT hours_change_request_pkey;
       public         racqdevelop    false    203            �           2606    16731    last_sync last_sync_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.last_sync
    ADD CONSTRAINT last_sync_pkey PRIMARY KEY (last_sync_id);
 B   ALTER TABLE ONLY public.last_sync DROP CONSTRAINT last_sync_pkey;
       public         racqdevelop    false    204            �           2606    16650    user_profile licence_uk 
   CONSTRAINT     U   ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT licence_uk UNIQUE (licence);
 A   ALTER TABLE ONLY public.user_profile DROP CONSTRAINT licence_uk;
       public         racqdevelop    false    199            �           2606    16626    location location_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_id);
 @   ALTER TABLE ONLY public.location DROP CONSTRAINT location_pkey;
       public         racqdevelop    false    198            �           2606    16744    log_book log_book_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.log_book
    ADD CONSTRAINT log_book_pkey PRIMARY KEY (log_book_id);
 @   ALTER TABLE ONLY public.log_book DROP CONSTRAINT log_book_pkey;
       public         racqdevelop    false    205            �           2606    16619    states states_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (state_id);
 <   ALTER TABLE ONLY public.states DROP CONSTRAINT states_pkey;
       public         racqdevelop    false    197            �           2606    16701    supervisor supervisor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.supervisor
    ADD CONSTRAINT supervisor_pkey PRIMARY KEY (supervisor_id);
 D   ALTER TABLE ONLY public.supervisor DROP CONSTRAINT supervisor_pkey;
       public         racqdevelop    false    202            �           2606    16665    target_hours target_hours_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.target_hours
    ADD CONSTRAINT target_hours_pkey PRIMARY KEY (target_hours_id);
 H   ALTER TABLE ONLY public.target_hours DROP CONSTRAINT target_hours_pkey;
       public         racqdevelop    false    200            �           2606    16788    tips tips_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tips
    ADD CONSTRAINT tips_pkey PRIMARY KEY (tip_id);
 8   ALTER TABLE ONLY public.tips DROP CONSTRAINT tips_pkey;
       public         racqdevelop    false    207            �           2606    16761    trip trip_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.trip
    ADD CONSTRAINT trip_pkey PRIMARY KEY (trip_id);
 8   ALTER TABLE ONLY public.trip DROP CONSTRAINT trip_pkey;
       public         racqdevelop    false    206            �           2606    16648    user_profile user_profile_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_pkey PRIMARY KEY (user_profile_id);
 H   ALTER TABLE ONLY public.user_profile DROP CONSTRAINT user_profile_pkey;
       public         racqdevelop    false    199            �           2606    16608    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         racqdevelop    false    196            �           2606    16678    vehicle vehicle_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehicle_id);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public         racqdevelop    false    201            �           2606    16656 $   user_profile fk_location_location_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT fk_location_location_id FOREIGN KEY (location_id) REFERENCES public.location(location_id);
 N   ALTER TABLE ONLY public.user_profile DROP CONSTRAINT fk_location_location_id;
       public       racqdevelop    false    198    3767    199            �           2606    16707 "   supervisor fk_state_issue_state_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.supervisor
    ADD CONSTRAINT fk_state_issue_state_id FOREIGN KEY (issue_state_id) REFERENCES public.states(state_id);
 L   ALTER TABLE ONLY public.supervisor DROP CONSTRAINT fk_state_issue_state_id;
       public       racqdevelop    false    197    3765    202            �           2606    16627    location fk_states_state_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.location
    ADD CONSTRAINT fk_states_state_id FOREIGN KEY (state_id) REFERENCES public.states(state_id);
 E   ALTER TABLE ONLY public.location DROP CONSTRAINT fk_states_state_id;
       public       racqdevelop    false    3765    198    197            �           2606    16762     trip fk_supervisor_supervisor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip
    ADD CONSTRAINT fk_supervisor_supervisor_id FOREIGN KEY (supervisor_id) REFERENCES public.supervisor(supervisor_id);
 J   ALTER TABLE ONLY public.trip DROP CONSTRAINT fk_supervisor_supervisor_id;
       public       racqdevelop    false    206    3777    202            �           2606    16666 ,   target_hours fk_user_profile_user_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.target_hours
    ADD CONSTRAINT fk_user_profile_user_profile_id FOREIGN KEY (user_profile_id) REFERENCES public.user_profile(user_profile_id);
 V   ALTER TABLE ONLY public.target_hours DROP CONSTRAINT fk_user_profile_user_profile_id;
       public       racqdevelop    false    199    200    3771            �           2606    16679 '   vehicle fk_user_profile_user_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT fk_user_profile_user_profile_id FOREIGN KEY (user_profile_id) REFERENCES public.user_profile(user_profile_id);
 Q   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT fk_user_profile_user_profile_id;
       public       racqdevelop    false    199    201    3771            �           2606    16702 *   supervisor fk_user_profile_user_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.supervisor
    ADD CONSTRAINT fk_user_profile_user_profile_id FOREIGN KEY (user_profile_id) REFERENCES public.user_profile(user_profile_id);
 T   ALTER TABLE ONLY public.supervisor DROP CONSTRAINT fk_user_profile_user_profile_id;
       public       racqdevelop    false    199    3771    202            �           2606    16720 4   hours_change_request fk_user_profile_user_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hours_change_request
    ADD CONSTRAINT fk_user_profile_user_profile_id FOREIGN KEY (user_profile_id) REFERENCES public.user_profile(user_profile_id);
 ^   ALTER TABLE ONLY public.hours_change_request DROP CONSTRAINT fk_user_profile_user_profile_id;
       public       racqdevelop    false    3771    199    203            �           2606    16732 )   last_sync fk_user_profile_user_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.last_sync
    ADD CONSTRAINT fk_user_profile_user_profile_id FOREIGN KEY (user_profile_id) REFERENCES public.user_profile(user_profile_id);
 S   ALTER TABLE ONLY public.last_sync DROP CONSTRAINT fk_user_profile_user_profile_id;
       public       racqdevelop    false    3771    199    204            �           2606    16745 (   log_book fk_user_profile_user_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.log_book
    ADD CONSTRAINT fk_user_profile_user_profile_id FOREIGN KEY (user_profile_id) REFERENCES public.user_profile(user_profile_id);
 R   ALTER TABLE ONLY public.log_book DROP CONSTRAINT fk_user_profile_user_profile_id;
       public       racqdevelop    false    199    205    3771            �           2606    16767 $   trip fk_user_profile_user_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip
    ADD CONSTRAINT fk_user_profile_user_profile_id FOREIGN KEY (user_profile_id) REFERENCES public.user_profile(user_profile_id);
 N   ALTER TABLE ONLY public.trip DROP CONSTRAINT fk_user_profile_user_profile_id;
       public       racqdevelop    false    3771    206    199            �           2606    16651    user_profile fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 G   ALTER TABLE ONLY public.user_profile DROP CONSTRAINT fk_users_user_id;
       public       racqdevelop    false    196    3763    199            �           2606    16772    trip fk_vehicle_vehicle_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip
    ADD CONSTRAINT fk_vehicle_vehicle_id FOREIGN KEY (vehicle_id) REFERENCES public.vehicle(vehicle_id);
 D   ALTER TABLE ONLY public.trip DROP CONSTRAINT fk_vehicle_vehicle_id;
       public       racqdevelop    false    206    201    3775            Y   �  x���M��F�לSx�P]]�9C6�;�Wl�.���r�5[Ɇ���׏�^����2SMk@�Ő��{Cil�jMR-)��*�Z�k��ڪ�m�q{�֯���7�Ɂ��!�Iwœ2��/��7T+9�'�}��`�
��A����N���nM�����	�hA��[+]��|�����q�+��sp�X�t�|����֩���@m�&�	愋�g�o����O�HTo�/T;��~dA@g�Pf.�ͭ���T�<�'����T��%�W��d���G��I��˄;��x*J&��Z=���FӼ�w��H���0��K�$LY6i\-γ4�HO@�m��86�3QƋ�w��x��2��m��=����+�KU���hl�3�A렣ep*	f*�Gñ��9�1�(�:F�甈�y/4�9�X̪ߏ�������xy��t|Rdg��REҡ>u��=��������5�y���8�}��+�ô��\��eH^ɒ�����~U��&�����f�Ю��#�R��m�q���s<�����Q1nzRe�{��3�92=s�ن6#i:��.k^��y��aտnp�w�G�\oq/�t��US]`��:��V�B�h���s��5��8C�~�(oO^`-�T�J�e���3�<:��X�'S��&W�9�-޼�(3v��$�	i ���m��cY�n&~�4�p����=�/�sk��*ˢy�� �U�n�����9�S�j,�B�}';y�Tn��J=�xe�F̱�F����L<M^�d��♸\�{�h�rC-�c>y�X	�����%�D�ڎ�7	갰y�"uh��j퉦B�5�a�Aj�Z�d����#�R���|lAb��8�c�E+�������i�i�hi�s�Y��"R��k��4>�":����48���Ԩ�_����~d���eٕb?gիM�F-/��������Iw      Z   �  x�]�K�,7E�٫���~B�k�D��%��r�_;"'9�p"��X&��pÐ��M�,�8����LM�CbK�al3�*ͼɁ�^,��Cv��2��x}m��g� M#p��r�4Ӊtws�}��7H���[�T����x�or���y�y>au�!�4حyW��[��8�wd8�X�`U� ����L? y>��w2�a��g��ՑM�I� ۉ1��Ѿ��-=lW5�a�X0�����@�E�G�F64��K_��1W�$a�;#����,����!�w[j��}V�̭'K�~�����یB?��)N�<{�AYwT�ٜ��|U�C+#�Sa&�)t�����Z=$w%DҾA��5u�����\��D�8;�5��<���*ꅬ��������x!>Z��{9D��&�F8����袬�l�$rZ^�������UF�<��6��g�Y��(���a� ��Y�u�5��5=u�M��G\4�j�
֥�S.��2Fױ�-�OP�]�$|���T~� `�]���,	��ӝg�2��ZY�J� zl@d�G6���Dm%�dX�]�k۵��k��&g-)�]k���1�z�Vfk���<2��!?�1������zX�����r����	ʞ0ޫ;CX���ξj�
�V��{t�&��+���*�_�2�2�7QC�XW�X�k;�TI=xs����~�^��z=A��~ו)������ct�����4>O������?v�Ab      T   �  x��TK�G]���`��"�t�� qvِU�g��4���a��X�Zj����}�[�0�N����A��Y���t�L�@m+O�а�8Y��̊V�ܤ�c��]>����$B���@�#c�Q=1/��Б��CVKmZK@�3�p_�H��j~|���`���50[�����
ռ�p�0�A��9�_�_���w�~	�Vs%��#( Ֆ��4��F\����NB�2T��,��)�{��\��/��5��8h�![��%D�:�v9�s:|�Ϸǿ�J��IJ:C���@�ZB����H�w��u*���@R��m��� �b��Pd�)�VqkEdI]�8��L�8{� N|����+�u}�M�q�5�\��� I�=׮��#��sR|��]��-�#ɵ�\�r��zX�kW��c}2s�^�n*{����m�.�i�1S�a�}��H�ɌT�)GaN��y�r	�o��z՝��)*"=P7�\�S&R	��$��^�o�����,Q����4$��ˁS���m0E]��K�/���f7qG�uH=.������SO+���}G[��������ߠ�M$(I�)^~��BMZ��#OEt���j�j�薎�˞�im1�zkiZt/bM-)bh����c��O/����r�l�.iE�
�?d,���}�t?ȳ|�G����b%!�V:F�oVC�ʌk����z�����&+�������?
��\      [     x���;n�0k��:�J�� {�m(Q�S����ܤ�$�<p0#QH� �����<B9Iz[Zhτp��:Z�5��k����3ұىe���^��_9�G�h�G�ԲW35zC\��{���o��d%g���R��)Ѝm��Zi����I��%��7M�f��C�B�8����O���)zұ�Z�ߨ\[�	��@E���$Ur�������Ƚ�2@lcx��;a��V}��^b�w�����}_���t�[      S   c  x���Ao�0��ί�M4;;�����B/��㱺Ғ��l���Z�'�ݞ�=�g"�ѣ�K9��R@�$p.	�9��y^u��;���z���hm��Z����Bx�h�LR���l7z$ȩ
��-\�A��ϗ�����.�v�)#����
~��4��2�uڛ�˲�r:�Ծ���*�7��
��9cp��K�"UPu9�H�9�{]��>?����%��;����Ȫ�V���\x'r� 9�l�)*�;Y�ȴ%����`Z��Y�Ee1�ߙ���¿
�g}�bn/��r���w�tu�(u�����o�������q�A[	�Wq~u�g��k�C�4�w�܇      X   =  x��W�n#�<�Bw��z?t�k`���a�}00��z���1fS��Ϳ���8�G�X���(6�fwFfdd���%�&������9�,C�]w�s�U0�ӫ��t�g�LEF���1YD�z|؋��w�&1�l�-�w�?�8VS8ɨ��.�,s2]�f9xe"�*�S�j�\��;������7���f���,{rV���N�����hLHJA��w�F����2�
~6��3�����`����2��~������Շ���/a�n��/��%k���g倎I6W��7\+�/����+����3��_H߀��۾Q�u�����l�������Tl�E�C�Ja��k(��2W�%8�47��ߊ����'CJ�P�"i33~I�K�,��9)�"� �m:����=��<`�6���L�j�I2�dc��SQZ煎�7�(�k�g�+ ��"S
�lG�B'FQ��i%�oAr61[|##��C��c��������PyV}@dkl�b;MWg&�nn��ޜ*��u��F��69Yqq�bEe|(��I�6�y0v�B?A8>�n;�8ݏ�ο~�g������w��d�C��XQ����"�D�x%{T�^pF�^:c|lH��"��e=�/͉'�F����h���@si7Q��v��3
p���^zW}���>�;�.a�޵惗�;�\+ȿ.�6�!�V��b�� ��>	�H�
=RɺYc����G�� u��)B��g�Vz�`�%��F80P��Sӣ���������E{�mZ��nt��
�9���6�x5J�ɕ��J�k�U\����R"�歭7-8FB��Ba{�R����&\�%���GzW:�T�A�q?�Ļ���� ����?�W����}��6G�0�l- FU���42mR��-|V �l�g�/�-�����nl�<�������+����ֿ�w����,�o��Z�~TG6k�S��o�Z&GF�ZK �]S�A�!B)�o	Z�m�~�,Q@�	E�-�祈���_]�����갞��6��vӚ7���;�b_+H�Ʌ���ը��2��)ֺ�����X��IQ3�����U���@���^O��oj-q&��zq�s�\�cMY�>L6H G�`TuJ�0�^� MOa7��dӤ�=�D�$��|��z'��tW�8��ʄh���z��;=;��[݀�U�{� �����@�x��"(���l�ǑG�� 0d� R�55���JL��$V����uР��x�IE�ɍx۲|�o�k�w�#o:T;,3�7S��?'�Q�Y���t�ݸQ�1ڙ��0�� �y����G�L���͖����R|h�~s\�wө�K�~Ra}�͵��:,�Mޘ!ì�Q�8Y� ��ʨU(�&iXP��i�I�,�g�v�%���Ӽ� P�޳F�2�L �mP���l�MƄA�WJ�j�����>��t�}�M:�u��
� �fq�K�g,5����z�b�k4��������@o���*�yᢩ2����v�}"�Z6����#�gA�cQ�!���T�ݐ��$[���>��0.���v���?'���v��$���7a�kLi((F��eֶJͥT�_�\��xLH�\g0/J4�EG����s�?�r�� �b���ɤ]$��ds�y�eÂ)OS�*d7S�*�F���^Ge�6�ژ�P�O��;��!��3����3��ka[��in'��+�����54§0C��re�E�V<i��+�e�<�y2Ű�_ڻ�{�i)����iR�K�1WJ]wm�҆�i?���o]c=+]���x^1�l
��"�ֱ��mT�r�T{���%��5�u����Cpv��zQ������`�U���x�����c�x�1ɵ|��u��k���z���3#Ł������ к%/m�������hw+~���a�,��o��/�ø�P�I�
�f��E���lS޷��5�a��0G.3ʂf��L����:�4��z�C}m��Ke�K�����iMe�XR��ȒH)ЪZ)�m�z��dBjZ���X�)f���	�_we�.���~�_.14��^�_.�[�c2      V   Z  x��VKr+7\�N� E �Y��*�O�-����U��U^Ɛ�lt7X8'Ond�iA^�Ӑ�������3K�թ$CS������E�9l�C_f���K�3%��Vg��9������K���ֻ��Y)�5I]���L�����jOG�m�
%�H�&ꉃ$���,C��mp����o/�ȏV=9���U9�ϒ��oɫ;W#�KI[�Q�� ��2��C���TRݍz�A5�zh�vp�+`��*>��I�'
w�f˩�3�k�"j&1eT�^6�(�1Dj[�T���Ց��ʝӼqοi��o��2��ة�J�_,>Y�[U��E ���/:<�Y���8�octJK1�7�)���z����V��,��j��z&��ZMu��*�̛4ۤnE��sS!�̈��Ā� LwPW�;���m�x���(�w�����)��3P��~5�C�4m7VP�%)��Ė���HМ��G8��	_�R��,����m_���<]9x՛�VGv��P�J�q�6b�2W�Kx�*`PY�-R� j�w�)��ړ��.y��S}w��W��J��V4s}�wA�Ov	S5�T�aR:<���ču��c���b	��XJh������=���ڧ�ۯ����u~����7)�¬�4��?�=8��P���}&�9%�)wj��F�F-�����VI�+�1���k�!M�����N~����0AN"�)%Α}��? �;�H�)�����;H�o�U�{T��/0�R&o�H�n�c�s�>�g�h=�?�
7�Z�D��1�|um�ș�@͚��z�-�ڜrE�[�+�a�Hq��������  |�5��g���Ա֤���%�p7O�a��/�!�u�����αT~��l�{�5�pO1��d�.�a��~d�O�I��eeΨL���1��gl<F?�3p�c*�HC���p�Z����kq ��[�Q� 6L42�D���_L^���]J],����9~�M�8��ɕ+�}�Q�~�ݜgI:�j %	<;G�ٜ�O��c�\у��j�,��u�}9�����X0Gv]?3���e�>Y.��ڻ��vQh�wT�Y�J�Kރa�o��'�XeX믠����v��K��      ]     x�E��R�0Dk�+�ْ'�;~�t47����HB''���}�v����?�^L��^ʝ�~��`Hi�$�6�K 2lL��#CHm�L��&��u+�I���rǷ�Ar�	��ď�.�ki�"�����m��%�߽B�������u�r�J�-���yl[.ǣక9�����+7S8�	�/��ED3CZClOOϯ��Ne��~��T�PR(r?����F)5t�A�:���N�]�tC��Ý�G��ꏦ����k�      \      x��\ˎ$��]����2����]ƅao.��S3z��Δ$����zdef����x��]�l�*O#�	F�W�1��"���E��qF�`�N�m8�<jڨ�V�5��LW���cn&:�������`�1�M+��*�.�<��p�>zM���T�!(��T��+&���і��m_�������ѳq�Z�o�6�am��Y^������u&�43<�?��I��_�x��?|��So��m".�_�0�r)�dp��F�G�ٵ���`��U��a(tz�v��<����?̐�}�8ak�-�5����?��k������5�1�"<d�Ż��$��p[���C�_5�%�.LE[���ڳ����(��r�=�p(��TN@�H��\U��\�%�M[��=4()n٫\L�-3�̚l-��I{�k�JcU�.���jL%k��yn��`�>[�v�m������_�ϧ?�\.M ��g�G�@̗����?\�~���mt��MG�-{����6�{��F���ҳ��*��8`V��0&m�P��7���s�Fa�M{�~ɪsKWJk�e��S�6�;��7�T�3�s"֏��r��i�-������_�Έۃ��Z@�;��`��m���if�u��1�%��*oBU�+B�(F��UL��yҀ�ᓵ�;#,�K6�T�ƗT���.�@iXUHί�V){|L{�Xm�zh{�}V^s��!��Tn����3M��\~,�wϬw��y�����v��c��#��^"������4�Z_��	�D\���� c*� �������|o��&<�y���֨�J¶?�nq�]�&{��{�4��1xB�܍�S
Xc��cXƙ�������Q�����.�"�����9"�b��W%����g�:�)��^���xU4L�c%Go�v���`[��#7�t*E�,�S���_���2�!o22�:������w��,��z����1>���!���&�eZ��Q$�����$L&vZ�Ύ�p��c�j�a�0K@ bc\�����!-wR}8�r���è9���<(XG�ˑ3��J�E0��\2����>���]�ٱ"�5��n��w��e�O�Dv����X�`1*��h�(�m�������HT�FĊn�H�,冴�E��8A�a��۰����x�ቭ���[$Fs�wM;n.��q�i�I�D�m%�B2����@X�[`�p&gk(]�kk|�n}��N����O�P����W����� >_� �3��m���7{��6 Vp�ur.<r�i�s3	�M�	"�Ҩ�L������}�@�0�Fm��[��
�,)���;��յ�][���A3�]:n��:g�5Z�c�4��]�^o�|�@���ѥ=�N�Q�ik���-ܮm��)�]�$���:}�K}��}퇿�oz=-y�=ýZ��4�`��%ư�@�^/�sG�)�j�U�`���r��d�*�m���i��(�xa(����qA�P2�@ ��>�\.1p\2Ds�9gS\mq�H�5 �9��c�7�܉�Y��J��EPC�ɤ��Ķ%��d����p�����[�LR����):K�)q!�.̥��_��u%F�-�j6�ˇ��=��Z��$Rv5��N�Yt�W��ݫ����+�}�h�(J������� �fs�B��7i���_�;|��}�4�Rh�[Y�L�s���ԭ��)<� �a���2���:�N�`���Y��T�O�_e�0���z&Ki�&����_�bh�0�h
�QD'hVHE�W��.�����`�	ʪŵi
�"����X%�QU>V��5�q��5@DՖ�9�Q��u�j��p�YLFYW����?#lÓ�K��ޙ&^��^g[?����Q�dSګ���,��7�JR+4֋��*� ���/-���\j��EVձ������'�����>IH��Ut��a�pf��ӓ�FJ@���_�\�8Y��[޿^t����d����\q�����h�5t�ٵ�%�az%��^�.�8�@z�Z+��oȖΩy7C���8k�Z.A��Ŕ]���,�� ��p���s��r0m5)5 �(�|��E��w�U�_8z����*� ѓ����d�+<��ڈ�T�kk�ɾ�r	�8����Kkl���u!J��/P+Z�`�����.;�p1�Cʚ�O��T�*������)[�q��w�_�ӟ���t�z�R�\�=�a������V��e�]����d�yD�̹"t#V���;�:Ω�T-��|����&7�n��	��.b���ᒙT�[�6�=�ڏ6��c��9�0(F٭���� =G���\uqgWs�bV21���p�����d���K��}	���&��ʧS����ދ-�no�C��l� ��r��ۥ�ΰ��BtH}z�����a�Y�:/��X�{�i��*�	�X��h%��m�7�4!`ݪ����L�	���Ф��M��4��ۇ�?=�%���/_��y_'�I�]�9���rG��,�����h.�>P)Z�����>����y�M��<1.��A<b�6����f�	~�@�Mg0��&7ï�?��l������B��ܪ1B��Y8�WuR����6�h��v���-V;�:������MbRUg�'x%��j1����їi�����q�X5�E�dm���I?"�a��rxl��m�
�Qto�9����B	ȁ$�8�a��)jS���s+�g�%ȆD�hV�.�6����}� ��u��7{�B�ECG|lv�/�B�@�޶�p�tDh��A�tF���޶��\���S�/����O�������NnHO 5vI��=�d�w�N",�G��A�[��r9}Յ���o� �L�#�ꨙ�]�����Bq�(�#4��A!�'qG�2=��̘�M��Ҵ�49��lTm��L�;<��=C��K�9�|�4e�,�_~<��K}�o�����>|<�ݷ�z��6���|����n��Czd?wZ�������~9���z%t6A�A��e�g�r�U �夹xr�m���by�nj��5��0���A��<���F���ǰ�5��y�õ�$�����	9Ǯ
E���x�	��CX���R:�hκ� ����k��A�dw{���hk��<���?#ߐc��Plu.�b��]A��l�#�"h�ǢMV�z��\�E�� 5�Z\���@��x���8d�z�-�1��$��墼6�]�|��>~�_��;����Ri��RZ�����&ùH�[�;���ļ��Ll�5�a?����,��&w5��K=r����!�8�H&�!m	|�!�^��_e��.%F�́7�!Q���p)���1 ���#��d9m:j��lʁ�۲یp��8.!$���j^m�
��*��:�c�Q��x����Qz�үWTM�%��I��џ�w����w}u�z݅q���l9�+3�V�]]��g�MP�Q+�<񎇂��TrW�5�X�y�����>��x�i�1	���:�
E�O/�,�&p��TK��D�E08w�=��D�I��y��s�JVZ�B~!��A��j`��[�h����ݸ����+�� �6l�ם�%����=IG�e��~?u��j+Κ�q.vSS'�[z:����N.��9���# �X����0@*��8�y�F�L��"�xk�<Cp���Ԧ1[��k�	Hs�Ұ�wp]vc�˼��zH��	A�>�l��!72�{�ޤn~�@
{9r����	-��恍���X����:����nKn��y^�֚��#6�-�#� ��LP��Qb���&+7�򟩕��:��aZv�����}��;X�YN�7���۴m)b�礖���Q�	��h�AAZV��ղ�h�л����I`긠MIt���D�O�iu1Fa:?t~75X�#Y�i?ȃq����p��2eNCՑ�8�r�3����f�L��0�dS���x�g�t>,�{)��MH�cڑ��5�lh����Q]��A5��{�P �  ��+k�������=C<,��D?�֘���xF}��<p��D��:��Qd*�+�y٭�y����̬iꡦ�F�n�98`�� &��k�"�&N귒@��e��-9|�_��N�&!;N{I�fB��a��d�g��:@��(�B�mP�<�gc�߶�b�x~�hs���]E�&=+2�?CK��X{t� �	J�ۢ+\���y�����ƭ�q�͐�����czh"�-��(�K���7g4�n��Jܧ���9���l�Ѿ��R�<�]�I�γN畦3|,��γ��)�I'4<S��rF*X�U;�klw���^V>X R�b�*r@"���W>e�TZ��g���X�NҝM��f:�Z���V�&=�`�B�����\B�HZ�������}q���05o�W{A.�膮u9�^��en��w���U�3�ޢ\r������¡ɽx5�rF�K�|Q�Z�K�ɮ�r�=s:j�l�X�s����^�@���rw���5�a��I#oW�Į�G��I���_�?˗HWxGV�M}��|��`�a4�8+/���:��� ��ϵ���$�ȑ�tK�kħ�=���j�R��X���Gh,ܚڥ����ħ֝ v����u�6��4Hؖ�J�L}i%��F������&wn��'��Ժ�n5�c�l���U���`{��C����=�������'��>l��e��g�FK.�DK�K��WD�.�T�]4~�H�#�N�$�����m8�?�	ڴ.����4<.{��^0o��*7�
��6��n�<_��7�<$�JUX�������-(3dRko����ϧw>��^\	�g�Ǚ��ȬNS㙿9i�t��ǵ4#��L� ?sK�f`�k켛�(,5�I�9�3�<&q8H�� S[�G�׹~��|��iU�MY��VU�}��R��sI�BLA4ڰK)(Ҏdv�o��?^�}����'yl�,�M��`���d9|�_m�đ����C)���Z���o�s����$ϴ�g������*�!T\����,=�I��߇�z�!��vkX�c<�Í��E�g��]�x���8�%�n�q���]O��Wy��#&��tP�J�l���-_�1�i`��a��d6����N�<|&D��q�����L��6�nb뱃�x�{%�%
g��X} �y���Z�S�ݔ����:��4pZ�(i]�W�m��a�L������W_�Wxi�      U   �  x��WMo[�<��!�{z�xK�{
��`/�)�^SI'�O%ˤ� �@K�����z���aT�)x��O[[#5��#�0��×�S�e���Em�Aַ�B�T�|~�L�b8G��VtC�#݉�BdX��S&�{�N��c���8�y����[�MCC���h�6����;�����#��2�g�y��c�eO��K13qѧ�O{�ݖ�U���Z��o7��q0!Nm��J��Av�=�A|\nj��>|7�������9�����.�߾)%ǚ4�h������u�RB���w4��������xC��n��֩䘮�iK��U4tX�<m�u	jn�\�q}�~6�V�:[�[})B�(7o�1N�qT�x<������/�?Q%�����k��+@ň���s�(3���� ̃;�[f��73��-��\���f�I\�i�1���� �ڂM�����;��S��r<�͗�ӡ�������o]($ɤ�sf�T��6�w`<mLDW�B'�fp$DH�6s�U�K�Ȱ[e1E�1�2[�$v&�HԒ )��̔J�$l�K����&4"䂁�>�O���?<����Ku�Ж��d�KY��|�f�1"nb� $X�
HE׬��wAj�cފs9��8Ra���E��b���C\��̠^���s��<��I�UI��y�?��N�o���������O����W�����($�Ml#����R2�tq��4�W�h�2@����fH0�|j!�3�ڛ0.�4Wm�eaC���+�e$Y�V��@^��+����U?[i(̲JL@��,��\�׏���4.F�ko,)�DY,ǈ��e KG%����2�� �Hw[��#(���\[pl�}�M_��*�o���w��x�2�CM��TO���l�
5��m����&Z:����d���x!��I�5����\,<�$`��@����l"�`��ļl����ԅ�[k��P���k�ub���fbo-k�a������Ş���ef�:�Y�%		�o��e��m
.ǋ��2v�	v2T�`�S8^��b#8�J�&yW{t	�����D	n��}�,��S3�,�ǅJ.�����`�.␛��i-l�m�g��y�QL�F����2��|��m#����#ah
K�6'9_�bdSa��G�>^KtL5��L�5e�p���������҄,����"[؂F�y�������l.q��bl��`����mj��FP?A ���bC�-��WGoX2�ǵ�U�ᰶCj�����Y�*:�Q��Eڰ� ��Q�����_[{��^�w=;��o>}:!�">W��[�ğ�أ4l�Z?�@���#�U�����"Zw�pZ^Rm^��P�o⇙�r�XusM^S<�s�`6�/s�텕�����\��UV��+ni�[eB��G�i��?&�|݊�[|
�pѭyjC\�T�̆ �J��naK��1��1͂
 �;�A%+�Ǽ;AI��`����ݝ�ML)�H�_Lv-�Y;���D7�ğ��]T?�.oXV
��2��M�$AM�P����[�in�:(9�c*�l��WC#��"{v��$����-���f�w���/���o.�/ߦ�N��.6A�(8���,Yb���w�^�E���	.�$@u�K�nF!T�T���2�,�͎G�}sxr�~:�pI�-'�o(���d��������yx} �,�TK�������r���|�Z����ۀc�)t��N���s�C(�����XL��tϑ��h�8n16Dp���Е���3�6�~�A4��mH��٭p�nM�.��%��n��6_���ҹ����V���ܱ�"9v��x����da�:I�_���k��bo��ۊ�H[�v�A�f��\�Si[=�x)�'�͉%����G�c�� ˛���8��nDb)�QE��ox(aP�S�������Kx�[X�&���O��<��      R   '  x��Y[s���}��<��H��6|�6`0CMUJ 0��~��3���=ӳO�LW*8�B������<Ab*`��$^b�X�,*�)"O1E
C�_��Ͽ�������qq���j�i��m]�|����PU�x��
�hMӨꉙ9c�bZ�sk�+���<�%�],0�U�qt�D3D�:��B�B�m�M�Ё�tE�6�5X[�í<��u���P7��<��J����`�U���8���礵ۭ��9��iU���.��3#m�Um��]D�埋�蜖�>���,�+����T��t_��=D�ϔ��'����(�"�m��:���m`߲&���Nz�::o�j��Y��Z�X+YR�e�#�)�S��l��uٵ:��Zi�R�m�Ӆ7JE��8KX�G���q��,�S�&1�6m������^�0��ő�E��Ic�/\rךq.��P�e�A��j�A�w��������T;��~�9�ewN��.S{��<ǧ��
�Bh	��S!f��OPH&�9�|��Y9����{���.�q�� )<}h�o���[#��0�b�C,Od�nP�L�e$U2����]qr��$M�l�z<
vwֶ�k�k��Lx��p�[1��1�����|T'����6΄���w�v|������ @@x�~�&1]TX�nJX�	ɘ�i�������'9I��OT���֢������3J?��}�rBĳ
J+$
��c�?�Y4��yn���ѽҭr.�.�'���ץ�����˪`�1��?�����E�d^�W���<�&��s�tZ�[L�p�SWQ]X�?�oZ���FY�z
bn���2�e����t�v� �sx���L��Ð���s@檸�&F]|~O8G|�\|=������Mq=�re'�۾���cJ�@�6l�U�����W�rQ�>�Q��]H|���7X�����W�_�� e�ylL�A2U�Dbg�I�<�J;��.J�U�b�H;]��[�X�Sb�JW��Y��sJٛ��G��[,"}QR���rO�2*��&�xΨRQn���X�C���r�Qu�Bh¿(�ߙzՙ�_%�{_b]�Ag�{�+�jߞ��ۤ���z0��[�q��q_��=���5�#wх����	�DĬ�)��Dde(�,Vx�e(�|�̓H
P���Լ�7%�w�]����f��.�;��s�R��I��jԳ�]�)�H.P���&��Ω&��HP� �c%S��La�8Q��$��8)�$�k�p%C��ۉ�b��ĄKV����%	�J	�Qv�H���3�1������jmx^H����j��f�p�ym�3�rk���=�3�֜u{ غ[S��,4i� |D�s�3cK����h�7��t�?>&G��&?j՜=�J���"~���']�P@�I����ї{g%t�[�/ۉ��nӥ(�֝�g�bw�[�ؘ��g���F)yQ�)���G�ʂ�</X���@	&�Q�M�?^�{�v�59�VLϽ����B���P�����T%�]�煌����dH���$��$�G�c1���ț-�/"��:�$f��,�����A���'|-G���^O;�Kc��м�B��e���ky��|4e��r*}G��[��t^n�f��lXWҼY/��O��~$JԆH�)Nh1�
��qXEDB,��cߪٕukIv�1���n�����l��=3݂i��:�E��޸8�w�l�����R�?���K��,��!�"(�JRAHD�+l��q�'�߃��1�YA���3Hۻ+,���I$��Lf.UY����K\�9��[/j!� ������M'���VE��sl-�2��ٴ�h��Ƀv����6��������G%��r/D���N��>b� gn����ϦC�[�C�5d�?M��@V帗6M�P8���~ۖ�}j�!�jע7�g^��,��{"sV���Nj��>�j�؜�d�2�wR9e!xJkS�$����BcZ��~��r��[�T�<o��,���>���� u���+/�?�ޣ�����x���a���p��b*���&2�$��� �j�|p �d���^Q�5�_��'��u�6Y�O�q��[���6��ΓE0��A;��ٕ�`P�&�^k��l\���\�2ټ*~ۏp��"�+,/�"U[9��'��LI+�&I$>�J�o����2:�/����<F�;��5���&3���s�ʣ:�s����?�Ͱ�gE�-���A�V�Q@����1�t8��T��E�?O8��=a�+h=M�`��s�g�����B��3���)�,`��1�9N�X�?�˜/�;*���%_O3!����(6�]�>�����\aOe�hA�	�t%��k����]�����^������U���"O}OXQ�21I��+@�ԫv������2�����MxΟ*���_��Y���1��<���d���Q���<C�>��UZ�U���hz?����Y񡭛�V��oV�锽X�7a|OCcZ���f�ۛ�R�ذ�
��x��y�0���T�����G��%�:��8�v�j�Hb&���~9�.Y ��^�H��1)�w_����1��j}�R=�Wt�5}���q.1�$P��)p�N���&N{(80�='ݯz��w<D�ә��:���	&�-�y�
iW|`�z�y:FK�g�����i��p[S�e*��g��!�6/�C�����G�}|M���!�Q&QIS$j�:4j@�8��У�h�H�2�:Gp��eI<�e��n�h,Ѿ������@cg������|J���
��AT<�	��k_�t����94��f��D�?�6[����H�m�$�Z/�c����X�7kӶ:Y����y���e�4���`m�d>���+�H!p�×�#A�8@��	��1
�@��,��`r$C�����|^���v�qwY�ȹ�z��E�ӃG\U��A��9�@+s栧�3�m�l>4�����Mb�!����B�T��� ��shO�M���9����-�Me���X�NwXf���M���R��A�d?���u����r�A�=B���튯u�b�QF8p���#(Xb��ì�!��i������9�򣫋^����X.�I����vS���z����S�<_�~�P�n>�ٴ65X�3_x�`�V���p8���`p�3��쯄"����qA���&�w�.�Uo�;>�c�nn�����q�pu���m�>|���!;7������'F����&�:��qU����*��6�2��ͧ1�H/�x�eI�a�!�~e%��]�]��1'3�0-V/㴙��F�3Suٟ�B���ԭ��Ѣz��ڡ'?��o_Q=y�CE}z�	t�A��)��@�r��h6"��q�A���7�fC�u�y�7A¾Mv<#M�mp�������y|���w�#	q�М���$�n%�e�e�{~񑚿���z��6��YHʍh���xyI��i��3f�ЌO%�ԷETh���n�x:�vCj�rm � �^�̟ d�@u!�/ ��j1�[9�W��/OW��B��V����� I2����w̚��6�������
���Y���_F���|���      W   �  x���Mn]7���*���a;q��E�NH�
��v��2��������A;������xxn[5/[���rU!��e�Y���L�ދt�F9�Af:�)^�l*��W�8��������x
��g�i�BkC8W�D�AS5�������_�J�K�:Է�Nz�����S�J5f��^�ˆ�.KUڨу��ǜFѳS�	�.)�����s2���o�ߥp�����|^z��r�>�¿9���E#ڦ�R�E��8lZ�ZkĪ�2�Q/^���2�+��?^]q���a� n�P�8�' �:Q_��s�bS�ꞭE&��I}���=b��ĥ�&-��#tG�:՞�9Ӑ�iM-e0�Tͻ&.��!�kf��
e�Ҝ��ͯHBb����Գ����(R��υ��������P�J:A95��-"(x��L3b��&���}���������������~�eZ洕6O����v��D�ޗ����Sjfj�O��I_Kv�		�_����q�KrZ��Eߑ4���$ᖞ7��J�#������4o[1�M�x����$�J����Դ�HJ���n�`#��f��d��X�g<�)��� �Q�7��q*(v�$b��i��A����u����lW���5@P:s�i���:2�z��׾����ׄ�>5���]���ϑ\�[��p��_N��`��$��)�#��J�>�;�ٞ������?x���ݑ���ӿw̍�Q�E[��0�L>z�W�ֆ%��iX�>�R��|��3�Wz���W���*�`��㚔M��D�x�����X	&��팆�Fȇg+���"����Xo[G�I+B�P�
�Zd�N�>CR=R<"�Q�l�j�:����6�H&�5��G�
*j�X.��b,de�L��ދ�����V�b�0�	Ǧ���E��!�����XH�v�&Z��V�ߓ,ׄ��-p�R��D5t���� Gù     