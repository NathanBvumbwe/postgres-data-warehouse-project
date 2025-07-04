PGDMP     ,        
            }            data_warehouse    15.13    15.13                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16656    data_warehouse    DATABASE     �   CREATE DATABASE data_warehouse WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE data_warehouse;
                postgres    false            �            1259    16677    dim_customer    TABLE     �   CREATE TABLE public.dim_customer (
    customer_id text,
    age bigint,
    location text,
    salary bigint,
    race text,
    gender text,
    education text
);
     DROP TABLE public.dim_customer;
       public         heap    postgres    false            �            1259    16687    dim_date    TABLE     �   CREATE TABLE public.dim_date (
    date timestamp without time zone,
    year integer,
    month integer,
    day integer,
    quarter integer,
    weekday text
);
    DROP TABLE public.dim_date;
       public         heap    postgres    false            �            1259    16682    dim_product    TABLE     �   CREATE TABLE public.dim_product (
    title text,
    category text,
    brand text,
    price double precision,
    stock bigint
);
    DROP TABLE public.dim_product;
       public         heap    postgres    false            �            1259    16692 
   fact_sales    TABLE       CREATE TABLE public.fact_sales (
    sale_id bigint,
    customer_id text,
    product text,
    quantity bigint,
    unit_price double precision,
    total_price double precision,
    date timestamp without time zone,
    region text,
    sales_rep text
);
    DROP TABLE public.fact_sales;
       public         heap    postgres    false            �          0    16677    dim_customer 
   TABLE DATA           c   COPY public.dim_customer (customer_id, age, location, salary, race, gender, education) FROM stdin;
    public          postgres    false    214   }                  0    16687    dim_date 
   TABLE DATA           L   COPY public.dim_date (date, year, month, day, quarter, weekday) FROM stdin;
    public          postgres    false    216          �          0    16682    dim_product 
   TABLE DATA           K   COPY public.dim_product (title, category, brand, price, stock) FROM stdin;
    public          postgres    false    215   �                 0    16692 
   fact_sales 
   TABLE DATA              COPY public.fact_sales (sale_id, customer_id, product, quantity, unit_price, total_price, date, region, sales_rep) FROM stdin;
    public          postgres    false    217   A       �   �  x��YA�5=���7�8��i�R�T.�jŮX��[�?�L2�q�,獾}q�{~�����2����_\"�������p�t���}z�z���˛wr)���~~�"�9���_�>�������^�޷�9RqH�������~�������O�����r0@K���|�t��S@�8`���/G�#��?�����O��O+��bX�'0����ȯǃ'�pC�>9h��<^тI��EZ=��r�죃�ʝ�ˍT��z�bqo��.����\#(!I������+9z�X+|������J�0�Cp17�����Ae���@N�0՚� W�3J�"����5fʹ(���y��ql|*�|�'r�*[g�#�W���lP_�E����0��A4�e{�t[��9��,�K8S"��*�����J��^}d�e��>�2WH�MtV��x�0X�M�-����%V��:�%I��W��D{�����J�K=�d&��Ӈ1���<8��>�D���k)l��;��r�g?1�h�q�t�I�K�r�$��}D��8�F�2��ݱ�Zu��C�)RPgX��'�$%7�_'?%7���Yk_���%�U�K����,��Z����!��k�	sER�ޫӔ�PBoaN 6�;#�>ja	9kH3� 
�zm'I�T~���b�5�l9�nX��3p,�Q8�gq��p��&�H�{��t�2ik���	b���;R���(�b�Ba Ǳ��~�����/�!�8�#Q�.�IGO�7��#7bu��d�fȪ���e�l�,j^�ff�d��4RR�Ԗn��1ӆ��������bP�mF�7���n�c�{���H#����xj�$0�LYl���sP;��=��7���o%rNY5S�,LAmy[��Ͼ�Bj:��o�-���٨J+�M�&�|�ܷ���!��.��x��l��"B;���_��d�Y. �=	�a�0�sG:��+�.l��
4���dv�׷�(CXϔ�R@'�:F�1��|�ml��4R�3~MQ�`m !�0�i|Q2���:f�ˮ�җ67[��̶I�foh�a�\�� ��mP������1�'���h6�]$,���7M�D�"Qn�f�:MH��4��?��6̼&�J7}杹5@����f��`7���i͇S�K>��X�]�����F�QW(�_���IpI-��mF��]峹1*�m7��W���d͒�XS8&���K�M���r��5��S����y��ꫠ%��*)�Ӥm2=Kr��{2��b�R�7Yj�e��mO�]t�XZ����{���W�=�P�'���E��[�M�:�$Ոy�4>�ΣP�/�NWeü�tl~p���1po00͠K��dc_�r�:�uk���:C�}�؅������8�e\53���I'�6p��M�%viAKC4�,�°��C	�f�35.�t��׌�"2�?I�$iu�~E�A���{U�vt�w��E3�>r���	D�G�Mv79n��n�cG�ͮ��N�T��Y��F&�Qs�qaq� x�1�any��96��|Y&��Ɯ@E�e��	w!��|K�Yq��Q|Z6�u4�#������b����fQ�=;㭎~��.q� ���a�P�j�d��C��`���jW�d����[�[��q�4���U���@nm�s����$3j��ݛ7o��6]�          �  x�mX1�\7��O�<C��')p��Ҹ1`v� ��"��F�IV3�.����Dr�ʣ�����[���o��_0�B���x�����{E���҃{�����������N�ô�������O�m?��[ox�>>���elV���(�qn4=�Ʊ��~m��xq?g�q��)���u��=-~��ǎ$ߜ�rY%���S߿�xN�s��Ɛ���-�7Tx�����1�7ĐT�r�b ���Q�a98,p����]�ݢ��g˰i�co>�'�(�m-J]-��|����_U�W >ѹ�g|�8��f;!��R������P�\�xc ꧖!�C�H�>�i��-#�F�%��9�a�� /ҁ�)������q���\�Q��A����d�ܑ6s@�6o�ơ������$߳�1L�������X8�@�c�n���5]Q`��TJJ�*�R���MA��'�]�Sf3:Н��HOT��0�
ü`Ȁ`�7p�-��nd��C郆F(�9(	�5Y7h���̵(�v8tV�)��}�2�RVo%p7��m�Wu)w,��1i{Hh;�q0߰�4ؓ�:-ն��+Q��9��ļ���&m�ިBb��k��c�Kt�����N:fZR��fmM�='E�eA����.����	��NEsE�)�kc�9�~� P��y����ԣ�v�Lj�ծ���W���V� �Eج�)��Y�����{���~�o.L���t���)��@��-�L�Wa�����0&2ɡiJ��jM)���CO�ʍMZ���	��I�i�!� ߘr"��U���g_EOk
&R+���<d�̃x��)<l�s5^	� qd�j��ZD��lF۱vо��/�CveǮ�fp\G�N�R����P�8K��M03�*��m�#��i*Pn.�Y,֪S�Z6Xr#,o"�{�l8�fi)��瀠�T�d]���S6>6N�O�I��à��]pL/�Y�ك�'�;��*K��E6�wM^U�k�����b	Yf��ЯS����@¸�03�����;�0�.<���6>�n�|��X�WE�#.ID�bWV''A.@�kef���	̐G/�ΕVYtc.X��#�>Ȑ�ֺ�پĬv��|�%)!*���f3+*s��T����w///� ��~      �   h  x�}TMs�0=K�bO�-���H�6�	����^�!1�ʿ�Z@�	�z����]&ޓ)����W0s�߼9aS��dO�U��4���
K��j�k���+xR�Yw�k\�����găX��$�k�K�E��jx�MQ�(n�I*_��G��*VGfV�2��į^D�PU�Ϩ4̬V�:��Sf��q$��;Je��S�j��l
/�����a۸8�E*ﳨBCm��³U&��mW(\S�\'�VY��,�!���`(�YV��2��]n@��=�9� ��}S
n�����r�w�ƨ����k��-ϥ���9�E��A�$_�s���i��^;�I��UI��9��
d�+rnw����c\��{y,��jsD�H20�MES�ϖf����ʝ�
q(�?��֖����r�UseV�~����-�8l�ٹ`$Ǜ�&�t� ��؏gg�9Z��&\��a%�!�Yw���%��E^qeO�u���Hf֮�Y�]B���'��h�9_�Yy1��y���G��W$'˥�B�S�w|>�
iG�y�ZG�g3���k�>���@�6�����khx�?�;�u�n���C��������Tm�y�q����R���<            x��[]�%�m}���])���;68��:ȋ_z�w���bv �>��UU7#�g��D�j:~�����s�㻿}|���_~�<� �t�2Vvމ����s�X��}�����|����.!f�vq��p��ֶ��w�ɿ}��M�������m������_�}��(��pr>8s>#�����?>�V���S�p��������/�*��Ώ�]Žs�^��_?~���Xw�He����)�;Q<K�s�f��}��&�n9���9�:�H♺E�;=o��6R8�ۤ����G�r�0.��I�On��.�����}�z��	gQ���V�4������?���V�e�\<���Q9�o�9�7 CEZ��1"�a�rD.�q�ջ+B~�ߟoD�38�����I�(�-ʶ�bjXM11����
v�C�җf~'���[�P���#�/��1d�W�,�ғE\K�����O�M�-<�p���g�RCk�!�����o5�N�y���԰��B\�~�ݰ��8JCkY�������N�����5�fXnD^���gVH�&Ns�:��К��s�|R�͝2x�Vc�e;�t"���rv{����Z�L���O���{ͫj6b-����̠��F����ߡ�ƩExB��*�cg�����bX��?|~��b�W\���(�(�u�w��p���P�q�!�bL�$Vq�5n��Nh؅|�
W���qq�Vnp�����i�ۅ��$n���R[���+F�YO�6vV��[����a��ą�����L'���2����o����s�[��3-)�������w��f�}�w�h��1���\i [,,�?��"�[�,IO������ܚ���;F�t�x�y9���$�Q�{�'��?~�x�&B]ր�SCP
<�8mG�[t�xC+�{� ��ӑ5��gy�H���3wd@:A���<=��/�l@�vpIb������IF�Q��T�2	Čs�eG�\��[�kFF�Yx�8A�Xrg5�z���61���կ�6�T���rGk՜F�4��8�S�l��e�'�l�!Vmt���A�?�ĸ��y���X��U"p��G�8�zD�P�A ��w�Mg����z�z�)�f�|��W=�k\J��V���]��I��@�J�M��WS�=V!,G��
 �'��2R�[����ьLK�xDA�<���[�Y�J=�q�?D �(���lM���B�-�/����Ab���J����B>�v�'tD�h@�l"�<rK�&���`wCz5l)��28]Tr�<}�6t��N���}\��F��֌�ޯ�<,�z�	%*��ؗ����:6iX-	�y�E�%f�%�S�Y�i`�aT��̞�Jg-¤���WqF�{I�� �U�(�Lz���V`3S�{�d����s�e�-��А@
�%���̙W�@o5Z�/( U��(��4�z3j��XC �����*�3�@bڻ�o� ��Úl��5���%t����`d�%�R&:�j3vWJ3�$�䗂T�BB�$d�ߋ=��� ��I�ZlB# 7�D��QL��V6�8#�tX��E�Kr��6�%M�Xҹ�3�XԶ�݀wf$������AH7�g����C���m�L�F�G�]�8*��<������a^�[S0.R=ag@�uv��ky&�[��y%Y��L���dS$�E�C��-��dP�k�Z�����݋Ee��P�$�6�e5CP�1l̼�a�Tg��@+�@�k��gѝ�c��b��&���Q�����t��(�����s�6�RL3d��X��M���U��b7	��#��n�����!��8�H�^���%�(b�7���1�L����!Myb{շ���Xub�m���dH��dۗ�X5%{iX��s�����.�>b���ڲF��4֡�n}�jX�1m�Jq�ď��e�����ɴ�/��?���i�/�!5����	X�i��svUn��@VzI����ȡ�UC �4�U=��/T���>$J��ͨ�����iŠJnvV!�҉ڵ��'�r����V���ٸP���eI�H1�xY��ju� ���2�[�~w4��� �U{Q!p6}�f��}�E�ڡ�P򰑏u�ѫ�uni0%�a�{�sY�[?���]�������C�$��=1<��b�4/��kCi?���t/bV�~�bɳ�P1 �O	��J;
s�7�����vA��.�܃et�)���KN��(-%�5X�]�(�w����:��G�\bUA�;��r�k���47���*�OS���ˡ\�i��]v�<�1+㟖�WA�i�U�RA\�U��!6ZC'im�z�c^3�S�7X�MS	�<D��"&�c�X ��;�2�n���zX���d�X%m��[kr�2J�λUۼ���E���%��,*A�hD�dU����{�w"K�s&��nf�$O6�J�	�����͒�?PR7�q�,��9�����J�AbOz�:�����]
�AK{��v1�z1�N�*�x�f~=� ^y�`�H�ہ�yɡ�h��,|�>B0PԩF�~:i�J�$ط��*��]U5�����P@��I����h�z��0dE���A��C}���_�Pl�Ո!�����Հ��`�C�]�����%�^��7�� YE���p$���R]3G�#�l��%CרNÇ�1�-zJlxUB	�?�T_A��$i�T{d��R4-�T����B�M�q.����^yE��}tu$7�]�+I% ���/�u�
�l����*��ZL�*�D�͙�z�����W9�}��=W$��h0v�r�fm�U<��s��$�2`|�o�����ߛ�u]5h�B]J��� �a��TG1��9����܆l�%�x	���H;%<�	(t_Ŧ��T�q�J���A���pbS,�4ҳ�2[����]j1j�O�A��@J���A�]������^?H�g�'S��Zp���i2��'Y)�Z�)� �e�t���>�R��Sh��cl��s�/|�б9Cl#(P����������&YT�;�)<���m�$���ZF��g��ۤe�/!�U����R�*��k�~PZk��&�S�>�"Դ��VV�&��b�ZM״p��^�:ӻA��E�%�n[���-��P�ȉi#���;l�sH���'C�)�$~�J�f�bՠ�M���h_�nz5M&oIJ�Lr���m����d�-��VNї)�>P��d�˦%�|KP�-I�� 3c��Z�:�Ul��w��uDf�vv��j��>�p+"C�C��a� �7X�M���R98m�%�݋�}�#9�,/%.>��>q)��j}k�r���N<�oAG�#k<a�&[�6��Qn� �p����줟���4-ʠ�Ӟtaw.���-�>�rir����5��(/�����V�|}�٦P�����֖�l��l��37&J]g�=m�ڷ1a ��i����
&P��hK�������4W���H�ӿ���eB�]�p���1��~kr��ٟ�!_�>����Ͻ�:�����-�C�M�Bk��^ɵ+e��ԃ��h�8!���<��,�6BbGߪ�Hn��)Uـhȫe`���-H�Vp/ޒM���Y]f*(�z7�9��[EgK$Ё�,�����}N�x�2(۠LT��n���o�0V��L�CZ�{}�q��S�;�dӮ�2p{G��{���<��u?�X]��R-})�rg�����H����@�;�^B)���x����Z�ܧ�v����S%k��iʲ]g����6�`�S+�b������_�!q�}��׀W����5�٨�Y��qV,�&�����ڌ�M���k��V�C��`<$�w�T��Z8��	�o��`�&Z��M�:'��s.}�E�� LTW��Ţ�#����;mRȽ��a�pp��ĵ�?<��lB!|��	x�v��{��Im�ͽ�Uh�nD"}��f_�	��0�w7��H'y�l�%��~�m�u�2�?�g}Hk��֗���(,��;h�k��@��2�x� �   �6��g�>�N�l���l�\d#1.�CG�Lt�,�C����κ;dl0RZg�zY5F�k�T?�P��o�X<;�BC��D��j�Wq{.�6�dĀ�m�|M#ݸ��*6��]�j$��+��0��d��ܞ��}D*��\:���Vۡ��"���1��f\~�h	����q*_�ƫTx��MV�������rDci     