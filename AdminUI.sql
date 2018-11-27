PGDMP     9    $            
    v            identityexpresspostgres    10.3    10.3 �    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ;           1262    180453    identityexpresspostgres    DATABASE     �   CREATE DATABASE identityexpresspostgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 '   DROP DATABASE identityexpresspostgres;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            <           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            =           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    180535 	   ApiClaims    TABLE     �   CREATE TABLE public."ApiClaims" (
    "Id" integer NOT NULL,
    "Type" character varying(200) NOT NULL,
    "ApiResourceId" integer NOT NULL
);
    DROP TABLE public."ApiClaims";
       public         postgres    false    3            �            1259    180533    ApiClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ApiClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."ApiClaims_Id_seq";
       public       postgres    false    211    3            >           0    0    ApiClaims_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."ApiClaims_Id_seq" OWNED BY public."ApiClaims"."Id";
            public       postgres    false    210            �            1259    180461    ApiResources    TABLE     �   CREATE TABLE public."ApiResources" (
    "Id" integer NOT NULL,
    "Enabled" boolean NOT NULL,
    "Name" character varying(200) NOT NULL,
    "DisplayName" character varying(200),
    "Description" character varying(1000)
);
 "   DROP TABLE public."ApiResources";
       public         postgres    false    3            �            1259    180459    ApiResources_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ApiResources_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ApiResources_Id_seq";
       public       postgres    false    198    3            ?           0    0    ApiResources_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."ApiResources_Id_seq" OWNED BY public."ApiResources"."Id";
            public       postgres    false    197            �            1259    180798    ApiScopeClaims    TABLE     �   CREATE TABLE public."ApiScopeClaims" (
    "Id" integer NOT NULL,
    "Type" character varying(200) NOT NULL,
    "ApiScopeId" integer NOT NULL
);
 $   DROP TABLE public."ApiScopeClaims";
       public         postgres    false    3            �            1259    180796    ApiScopeClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ApiScopeClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."ApiScopeClaims_Id_seq";
       public       postgres    false    244    3            @           0    0    ApiScopeClaims_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."ApiScopeClaims_Id_seq" OWNED BY public."ApiScopeClaims"."Id";
            public       postgres    false    243            �            1259    180548 	   ApiScopes    TABLE     Y  CREATE TABLE public."ApiScopes" (
    "Id" integer NOT NULL,
    "Name" character varying(200) NOT NULL,
    "DisplayName" character varying(200),
    "Description" character varying(1000),
    "Required" boolean NOT NULL,
    "Emphasize" boolean NOT NULL,
    "ShowInDiscoveryDocument" boolean NOT NULL,
    "ApiResourceId" integer NOT NULL
);
    DROP TABLE public."ApiScopes";
       public         postgres    false    3            �            1259    180546    ApiScopes_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ApiScopes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."ApiScopes_Id_seq";
       public       postgres    false    213    3            A           0    0    ApiScopes_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."ApiScopes_Id_seq" OWNED BY public."ApiScopes"."Id";
            public       postgres    false    212            �            1259    180564 
   ApiSecrets    TABLE       CREATE TABLE public."ApiSecrets" (
    "Expiration" timestamp without time zone,
    "Id" integer NOT NULL,
    "Description" character varying(1000),
    "Value" character varying(2000),
    "Type" character varying(250),
    "ApiResourceId" integer NOT NULL
);
     DROP TABLE public."ApiSecrets";
       public         postgres    false    3            �            1259    180562    ApiSecrets_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ApiSecrets_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ApiSecrets_Id_seq";
       public       postgres    false    215    3            B           0    0    ApiSecrets_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."ApiSecrets_Id_seq" OWNED BY public."ApiSecrets"."Id";
            public       postgres    false    214            �            1259    180580    ClientClaims    TABLE     �   CREATE TABLE public."ClientClaims" (
    "Id" integer NOT NULL,
    "Type" character varying(250) NOT NULL,
    "Value" character varying(250) NOT NULL,
    "ClientId" integer NOT NULL
);
 "   DROP TABLE public."ClientClaims";
       public         postgres    false    3            �            1259    180578    ClientClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ClientClaims_Id_seq";
       public       postgres    false    3    217            C           0    0    ClientClaims_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."ClientClaims_Id_seq" OWNED BY public."ClientClaims"."Id";
            public       postgres    false    216            �            1259    180596    ClientCorsOrigins    TABLE     �   CREATE TABLE public."ClientCorsOrigins" (
    "Id" integer NOT NULL,
    "Origin" character varying(150) NOT NULL,
    "ClientId" integer NOT NULL
);
 '   DROP TABLE public."ClientCorsOrigins";
       public         postgres    false    3            �            1259    180594    ClientCorsOrigins_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientCorsOrigins_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."ClientCorsOrigins_Id_seq";
       public       postgres    false    219    3            D           0    0    ClientCorsOrigins_Id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ClientCorsOrigins_Id_seq" OWNED BY public."ClientCorsOrigins"."Id";
            public       postgres    false    218            �            1259    180609    ClientGrantTypes    TABLE     �   CREATE TABLE public."ClientGrantTypes" (
    "Id" integer NOT NULL,
    "GrantType" character varying(250) NOT NULL,
    "ClientId" integer NOT NULL
);
 &   DROP TABLE public."ClientGrantTypes";
       public         postgres    false    3            �            1259    180607    ClientGrantTypes_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientGrantTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ClientGrantTypes_Id_seq";
       public       postgres    false    221    3            E           0    0    ClientGrantTypes_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ClientGrantTypes_Id_seq" OWNED BY public."ClientGrantTypes"."Id";
            public       postgres    false    220            �            1259    180622    ClientIdPRestrictions    TABLE     �   CREATE TABLE public."ClientIdPRestrictions" (
    "Id" integer NOT NULL,
    "Provider" character varying(200) NOT NULL,
    "ClientId" integer NOT NULL
);
 +   DROP TABLE public."ClientIdPRestrictions";
       public         postgres    false    3            �            1259    180620    ClientIdPRestrictions_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientIdPRestrictions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."ClientIdPRestrictions_Id_seq";
       public       postgres    false    223    3            F           0    0    ClientIdPRestrictions_Id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ClientIdPRestrictions_Id_seq" OWNED BY public."ClientIdPRestrictions"."Id";
            public       postgres    false    222            �            1259    180635    ClientPostLogoutRedirectUris    TABLE     �   CREATE TABLE public."ClientPostLogoutRedirectUris" (
    "Id" integer NOT NULL,
    "PostLogoutRedirectUri" character varying(2000) NOT NULL,
    "ClientId" integer NOT NULL
);
 2   DROP TABLE public."ClientPostLogoutRedirectUris";
       public         postgres    false    3            �            1259    180633 #   ClientPostLogoutRedirectUris_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientPostLogoutRedirectUris_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."ClientPostLogoutRedirectUris_Id_seq";
       public       postgres    false    3    225            G           0    0 #   ClientPostLogoutRedirectUris_Id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."ClientPostLogoutRedirectUris_Id_seq" OWNED BY public."ClientPostLogoutRedirectUris"."Id";
            public       postgres    false    224            �            1259    180651    ClientProperties    TABLE     �   CREATE TABLE public."ClientProperties" (
    "Id" integer NOT NULL,
    "Key" character varying(250) NOT NULL,
    "Value" character varying(2000) NOT NULL,
    "ClientId" integer NOT NULL
);
 &   DROP TABLE public."ClientProperties";
       public         postgres    false    3            �            1259    180649    ClientProperties_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientProperties_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ClientProperties_Id_seq";
       public       postgres    false    3    227            H           0    0    ClientProperties_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ClientProperties_Id_seq" OWNED BY public."ClientProperties"."Id";
            public       postgres    false    226            �            1259    180667    ClientRedirectUris    TABLE     �   CREATE TABLE public."ClientRedirectUris" (
    "Id" integer NOT NULL,
    "RedirectUri" character varying(2000) NOT NULL,
    "ClientId" integer NOT NULL
);
 (   DROP TABLE public."ClientRedirectUris";
       public         postgres    false    3            �            1259    180665    ClientRedirectUris_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientRedirectUris_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."ClientRedirectUris_Id_seq";
       public       postgres    false    229    3            I           0    0    ClientRedirectUris_Id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ClientRedirectUris_Id_seq" OWNED BY public."ClientRedirectUris"."Id";
            public       postgres    false    228            �            1259    180683    ClientScopes    TABLE     �   CREATE TABLE public."ClientScopes" (
    "Id" integer NOT NULL,
    "Scope" character varying(200) NOT NULL,
    "ClientId" integer NOT NULL
);
 "   DROP TABLE public."ClientScopes";
       public         postgres    false    3            �            1259    180681    ClientScopes_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientScopes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ClientScopes_Id_seq";
       public       postgres    false    231    3            J           0    0    ClientScopes_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."ClientScopes_Id_seq" OWNED BY public."ClientScopes"."Id";
            public       postgres    false    230            �            1259    180696    ClientSecrets    TABLE       CREATE TABLE public."ClientSecrets" (
    "Expiration" timestamp without time zone,
    "Id" integer NOT NULL,
    "Description" character varying(2000),
    "Value" character varying(2000) NOT NULL,
    "Type" character varying(250),
    "ClientId" integer NOT NULL
);
 #   DROP TABLE public."ClientSecrets";
       public         postgres    false    3            �            1259    180694    ClientSecrets_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ClientSecrets_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."ClientSecrets_Id_seq";
       public       postgres    false    233    3            K           0    0    ClientSecrets_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."ClientSecrets_Id_seq" OWNED BY public."ClientSecrets"."Id";
            public       postgres    false    232            �            1259    180472    Clients    TABLE     V  CREATE TABLE public."Clients" (
    "Id" integer NOT NULL,
    "Enabled" boolean NOT NULL,
    "ClientId" character varying(200) NOT NULL,
    "ProtocolType" character varying(200) NOT NULL,
    "RequireClientSecret" boolean NOT NULL,
    "ClientName" character varying(200),
    "Description" character varying(1000),
    "ClientUri" character varying(2000),
    "LogoUri" character varying(2000),
    "RequireConsent" boolean NOT NULL,
    "AllowRememberConsent" boolean NOT NULL,
    "AlwaysIncludeUserClaimsInIdToken" boolean NOT NULL,
    "RequirePkce" boolean NOT NULL,
    "AllowPlainTextPkce" boolean NOT NULL,
    "AllowAccessTokensViaBrowser" boolean NOT NULL,
    "FrontChannelLogoutUri" character varying(2000),
    "FrontChannelLogoutSessionRequired" boolean NOT NULL,
    "BackChannelLogoutUri" character varying(2000),
    "BackChannelLogoutSessionRequired" boolean NOT NULL,
    "AllowOfflineAccess" boolean NOT NULL,
    "IdentityTokenLifetime" integer NOT NULL,
    "AccessTokenLifetime" integer NOT NULL,
    "AuthorizationCodeLifetime" integer NOT NULL,
    "ConsentLifetime" integer,
    "AbsoluteRefreshTokenLifetime" integer NOT NULL,
    "SlidingRefreshTokenLifetime" integer NOT NULL,
    "RefreshTokenUsage" integer NOT NULL,
    "UpdateAccessTokenClaimsOnRefresh" boolean NOT NULL,
    "RefreshTokenExpiration" integer NOT NULL,
    "AccessTokenType" integer NOT NULL,
    "EnableLocalLogin" boolean NOT NULL,
    "IncludeJwtId" boolean NOT NULL,
    "AlwaysSendClientClaims" boolean NOT NULL,
    "ClientClaimsPrefix" character varying(200),
    "PairWiseSubjectSalt" character varying(200)
);
    DROP TABLE public."Clients";
       public         postgres    false    3            �            1259    180470    Clients_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Clients_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Clients_Id_seq";
       public       postgres    false    3    200            L           0    0    Clients_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Clients_Id_seq" OWNED BY public."Clients"."Id";
            public       postgres    false    199            �            1259    180712    IdentityClaims    TABLE     �   CREATE TABLE public."IdentityClaims" (
    "Id" integer NOT NULL,
    "Type" character varying(200) NOT NULL,
    "IdentityResourceId" integer NOT NULL
);
 $   DROP TABLE public."IdentityClaims";
       public         postgres    false    3            �            1259    180710    IdentityClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."IdentityClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."IdentityClaims_Id_seq";
       public       postgres    false    235    3            M           0    0    IdentityClaims_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."IdentityClaims_Id_seq" OWNED BY public."IdentityClaims"."Id";
            public       postgres    false    234            �            1259    180483    IdentityResources    TABLE     [  CREATE TABLE public."IdentityResources" (
    "Id" integer NOT NULL,
    "Enabled" boolean NOT NULL,
    "Name" character varying(200) NOT NULL,
    "DisplayName" character varying(200),
    "Description" character varying(1000),
    "Required" boolean NOT NULL,
    "Emphasize" boolean NOT NULL,
    "ShowInDiscoveryDocument" boolean NOT NULL
);
 '   DROP TABLE public."IdentityResources";
       public         postgres    false    3            �            1259    180481    IdentityResources_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."IdentityResources_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."IdentityResources_Id_seq";
       public       postgres    false    3    202            N           0    0    IdentityResources_Id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."IdentityResources_Id_seq" OWNED BY public."IdentityResources"."Id";
            public       postgres    false    201            �            1259    180494    Log    TABLE        CREATE TABLE public."Log" (
    "Id" bigint NOT NULL,
    "Message" text,
    "MessageTemplate" text,
    "Level" character varying(128),
    "TimeStamp" timestamp with time zone NOT NULL,
    "Exception" text,
    "LogEvent" text,
    "Properties" xml
);
    DROP TABLE public."Log";
       public         postgres    false    3            �            1259    180492 
   Log_Id_seq    SEQUENCE     u   CREATE SEQUENCE public."Log_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Log_Id_seq";
       public       postgres    false    204    3            O           0    0 
   Log_Id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Log_Id_seq" OWNED BY public."Log"."Id";
            public       postgres    false    203            �            1259    180503    PersistedGrants    TABLE     m  CREATE TABLE public."PersistedGrants" (
    "Key" character varying(200) NOT NULL,
    "Type" character varying(50) NOT NULL,
    "SubjectId" character varying(200),
    "ClientId" character varying(200) NOT NULL,
    "CreationTime" timestamp without time zone NOT NULL,
    "Expiration" timestamp without time zone,
    "Data" character varying(50000) NOT NULL
);
 %   DROP TABLE public."PersistedGrants";
       public         postgres    false    3            �            1259    180725 
   RoleClaims    TABLE     �   CREATE TABLE public."RoleClaims" (
    "Id" integer NOT NULL,
    "RoleId" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);
     DROP TABLE public."RoleClaims";
       public         postgres    false    3            �            1259    180723    RoleClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."RoleClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."RoleClaims_Id_seq";
       public       postgres    false    237    3            P           0    0    RoleClaims_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."RoleClaims_Id_seq" OWNED BY public."RoleClaims"."Id";
            public       postgres    false    236            �            1259    180513    Roles    TABLE     �   CREATE TABLE public."Roles" (
    "Id" integer NOT NULL,
    "Name" character varying(256),
    "NormalizedName" character varying(256),
    "ConcurrencyStamp" text
);
    DROP TABLE public."Roles";
       public         postgres    false    3            �            1259    180511    Roles_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_Id_seq";
       public       postgres    false    3    207            Q           0    0    Roles_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Roles_Id_seq" OWNED BY public."Roles"."Id";
            public       postgres    false    206            �            1259    180741 
   UserClaims    TABLE     �   CREATE TABLE public."UserClaims" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);
     DROP TABLE public."UserClaims";
       public         postgres    false    3            �            1259    180739    UserClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."UserClaims_Id_seq";
       public       postgres    false    239    3            R           0    0    UserClaims_Id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."UserClaims_Id_seq" OWNED BY public."UserClaims"."Id";
            public       postgres    false    238            �            1259    180755 
   UserLogins    TABLE     �   CREATE TABLE public."UserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" integer NOT NULL
);
     DROP TABLE public."UserLogins";
       public         postgres    false    3            �            1259    180768 	   UserRoles    TABLE     b   CREATE TABLE public."UserRoles" (
    "UserId" integer NOT NULL,
    "RoleId" integer NOT NULL
);
    DROP TABLE public."UserRoles";
       public         postgres    false    3            �            1259    180783 
   UserTokens    TABLE     �   CREATE TABLE public."UserTokens" (
    "UserId" integer NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);
     DROP TABLE public."UserTokens";
       public         postgres    false    3            �            1259    180524    Users    TABLE     F  CREATE TABLE public."Users" (
    "Id" integer NOT NULL,
    "UserName" character varying(256),
    "NormalizedUserName" character varying(256),
    "Email" character varying(256),
    "NormalizedEmail" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text,
    "SecurityStamp" text,
    "ConcurrencyStamp" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL
);
    DROP TABLE public."Users";
       public         postgres    false    3            �            1259    180522    Users_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_Id_seq";
       public       postgres    false    209    3            S           0    0    Users_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Users_Id_seq" OWNED BY public."Users"."Id";
            public       postgres    false    208            �            1259    180454    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         postgres    false    3                       2604    180538    ApiClaims Id    DEFAULT     r   ALTER TABLE ONLY public."ApiClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."ApiClaims_Id_seq"'::regclass);
 ?   ALTER TABLE public."ApiClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    210    211    211                       2604    180464    ApiResources Id    DEFAULT     x   ALTER TABLE ONLY public."ApiResources" ALTER COLUMN "Id" SET DEFAULT nextval('public."ApiResources_Id_seq"'::regclass);
 B   ALTER TABLE public."ApiResources" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    197    198    198            '           2604    180801    ApiScopeClaims Id    DEFAULT     |   ALTER TABLE ONLY public."ApiScopeClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."ApiScopeClaims_Id_seq"'::regclass);
 D   ALTER TABLE public."ApiScopeClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    244    243    244                       2604    180551    ApiScopes Id    DEFAULT     r   ALTER TABLE ONLY public."ApiScopes" ALTER COLUMN "Id" SET DEFAULT nextval('public."ApiScopes_Id_seq"'::regclass);
 ?   ALTER TABLE public."ApiScopes" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    212    213    213                       2604    180567    ApiSecrets Id    DEFAULT     t   ALTER TABLE ONLY public."ApiSecrets" ALTER COLUMN "Id" SET DEFAULT nextval('public."ApiSecrets_Id_seq"'::regclass);
 @   ALTER TABLE public."ApiSecrets" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    215    214    215                       2604    180583    ClientClaims Id    DEFAULT     x   ALTER TABLE ONLY public."ClientClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientClaims_Id_seq"'::regclass);
 B   ALTER TABLE public."ClientClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    216    217    217                       2604    180599    ClientCorsOrigins Id    DEFAULT     �   ALTER TABLE ONLY public."ClientCorsOrigins" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientCorsOrigins_Id_seq"'::regclass);
 G   ALTER TABLE public."ClientCorsOrigins" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    218    219    219                       2604    180612    ClientGrantTypes Id    DEFAULT     �   ALTER TABLE ONLY public."ClientGrantTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientGrantTypes_Id_seq"'::regclass);
 F   ALTER TABLE public."ClientGrantTypes" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    220    221    221                       2604    180625    ClientIdPRestrictions Id    DEFAULT     �   ALTER TABLE ONLY public."ClientIdPRestrictions" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientIdPRestrictions_Id_seq"'::regclass);
 K   ALTER TABLE public."ClientIdPRestrictions" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    223    222    223                       2604    180638    ClientPostLogoutRedirectUris Id    DEFAULT     �   ALTER TABLE ONLY public."ClientPostLogoutRedirectUris" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientPostLogoutRedirectUris_Id_seq"'::regclass);
 R   ALTER TABLE public."ClientPostLogoutRedirectUris" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    225    224    225                        2604    180654    ClientProperties Id    DEFAULT     �   ALTER TABLE ONLY public."ClientProperties" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientProperties_Id_seq"'::regclass);
 F   ALTER TABLE public."ClientProperties" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    226    227    227            !           2604    180670    ClientRedirectUris Id    DEFAULT     �   ALTER TABLE ONLY public."ClientRedirectUris" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientRedirectUris_Id_seq"'::regclass);
 H   ALTER TABLE public."ClientRedirectUris" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    229    228    229            "           2604    180686    ClientScopes Id    DEFAULT     x   ALTER TABLE ONLY public."ClientScopes" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientScopes_Id_seq"'::regclass);
 B   ALTER TABLE public."ClientScopes" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    231    230    231            #           2604    180699    ClientSecrets Id    DEFAULT     z   ALTER TABLE ONLY public."ClientSecrets" ALTER COLUMN "Id" SET DEFAULT nextval('public."ClientSecrets_Id_seq"'::regclass);
 C   ALTER TABLE public."ClientSecrets" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    232    233    233                       2604    180475 
   Clients Id    DEFAULT     n   ALTER TABLE ONLY public."Clients" ALTER COLUMN "Id" SET DEFAULT nextval('public."Clients_Id_seq"'::regclass);
 =   ALTER TABLE public."Clients" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    200    199    200            $           2604    180715    IdentityClaims Id    DEFAULT     |   ALTER TABLE ONLY public."IdentityClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."IdentityClaims_Id_seq"'::regclass);
 D   ALTER TABLE public."IdentityClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    234    235    235                       2604    180486    IdentityResources Id    DEFAULT     �   ALTER TABLE ONLY public."IdentityResources" ALTER COLUMN "Id" SET DEFAULT nextval('public."IdentityResources_Id_seq"'::regclass);
 G   ALTER TABLE public."IdentityResources" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    202    201    202                       2604    180497    Log Id    DEFAULT     f   ALTER TABLE ONLY public."Log" ALTER COLUMN "Id" SET DEFAULT nextval('public."Log_Id_seq"'::regclass);
 9   ALTER TABLE public."Log" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    204    203    204            %           2604    180728    RoleClaims Id    DEFAULT     t   ALTER TABLE ONLY public."RoleClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."RoleClaims_Id_seq"'::regclass);
 @   ALTER TABLE public."RoleClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    237    236    237                       2604    180516    Roles Id    DEFAULT     j   ALTER TABLE ONLY public."Roles" ALTER COLUMN "Id" SET DEFAULT nextval('public."Roles_Id_seq"'::regclass);
 ;   ALTER TABLE public."Roles" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    206    207    207            &           2604    180744    UserClaims Id    DEFAULT     t   ALTER TABLE ONLY public."UserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserClaims_Id_seq"'::regclass);
 @   ALTER TABLE public."UserClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    238    239    239                       2604    180527    Users Id    DEFAULT     j   ALTER TABLE ONLY public."Users" ALTER COLUMN "Id" SET DEFAULT nextval('public."Users_Id_seq"'::regclass);
 ;   ALTER TABLE public."Users" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    208    209    209                      0    180535 	   ApiClaims 
   TABLE DATA               D   COPY public."ApiClaims" ("Id", "Type", "ApiResourceId") FROM stdin;
    public       postgres    false    211   �                0    180461    ApiResources 
   TABLE DATA               _   COPY public."ApiResources" ("Id", "Enabled", "Name", "DisplayName", "Description") FROM stdin;
    public       postgres    false    198   �      5          0    180798    ApiScopeClaims 
   TABLE DATA               F   COPY public."ApiScopeClaims" ("Id", "Type", "ApiScopeId") FROM stdin;
    public       postgres    false    244   �                0    180548 	   ApiScopes 
   TABLE DATA               �   COPY public."ApiScopes" ("Id", "Name", "DisplayName", "Description", "Required", "Emphasize", "ShowInDiscoveryDocument", "ApiResourceId") FROM stdin;
    public       postgres    false    213                   0    180564 
   ApiSecrets 
   TABLE DATA               k   COPY public."ApiSecrets" ("Expiration", "Id", "Description", "Value", "Type", "ApiResourceId") FROM stdin;
    public       postgres    false    215   �                0    180580    ClientClaims 
   TABLE DATA               K   COPY public."ClientClaims" ("Id", "Type", "Value", "ClientId") FROM stdin;
    public       postgres    false    217   �                0    180596    ClientCorsOrigins 
   TABLE DATA               I   COPY public."ClientCorsOrigins" ("Id", "Origin", "ClientId") FROM stdin;
    public       postgres    false    219                   0    180609    ClientGrantTypes 
   TABLE DATA               K   COPY public."ClientGrantTypes" ("Id", "GrantType", "ClientId") FROM stdin;
    public       postgres    false    221   B                 0    180622    ClientIdPRestrictions 
   TABLE DATA               O   COPY public."ClientIdPRestrictions" ("Id", "Provider", "ClientId") FROM stdin;
    public       postgres    false    223   l      "          0    180635    ClientPostLogoutRedirectUris 
   TABLE DATA               c   COPY public."ClientPostLogoutRedirectUris" ("Id", "PostLogoutRedirectUri", "ClientId") FROM stdin;
    public       postgres    false    225   �      $          0    180651    ClientProperties 
   TABLE DATA               N   COPY public."ClientProperties" ("Id", "Key", "Value", "ClientId") FROM stdin;
    public       postgres    false    227   �      &          0    180667    ClientRedirectUris 
   TABLE DATA               O   COPY public."ClientRedirectUris" ("Id", "RedirectUri", "ClientId") FROM stdin;
    public       postgres    false    229   �      (          0    180683    ClientScopes 
   TABLE DATA               C   COPY public."ClientScopes" ("Id", "Scope", "ClientId") FROM stdin;
    public       postgres    false    231   5      *          0    180696    ClientSecrets 
   TABLE DATA               i   COPY public."ClientSecrets" ("Expiration", "Id", "Description", "Value", "Type", "ClientId") FROM stdin;
    public       postgres    false    233   y      	          0    180472    Clients 
   TABLE DATA               .  COPY public."Clients" ("Id", "Enabled", "ClientId", "ProtocolType", "RequireClientSecret", "ClientName", "Description", "ClientUri", "LogoUri", "RequireConsent", "AllowRememberConsent", "AlwaysIncludeUserClaimsInIdToken", "RequirePkce", "AllowPlainTextPkce", "AllowAccessTokensViaBrowser", "FrontChannelLogoutUri", "FrontChannelLogoutSessionRequired", "BackChannelLogoutUri", "BackChannelLogoutSessionRequired", "AllowOfflineAccess", "IdentityTokenLifetime", "AccessTokenLifetime", "AuthorizationCodeLifetime", "ConsentLifetime", "AbsoluteRefreshTokenLifetime", "SlidingRefreshTokenLifetime", "RefreshTokenUsage", "UpdateAccessTokenClaimsOnRefresh", "RefreshTokenExpiration", "AccessTokenType", "EnableLocalLogin", "IncludeJwtId", "AlwaysSendClientClaims", "ClientClaimsPrefix", "PairWiseSubjectSalt") FROM stdin;
    public       postgres    false    200   �      ,          0    180712    IdentityClaims 
   TABLE DATA               N   COPY public."IdentityClaims" ("Id", "Type", "IdentityResourceId") FROM stdin;
    public       postgres    false    235   #                0    180483    IdentityResources 
   TABLE DATA               �   COPY public."IdentityResources" ("Id", "Enabled", "Name", "DisplayName", "Description", "Required", "Emphasize", "ShowInDiscoveryDocument") FROM stdin;
    public       postgres    false    202   �                0    180494    Log 
   TABLE DATA               �   COPY public."Log" ("Id", "Message", "MessageTemplate", "Level", "TimeStamp", "Exception", "LogEvent", "Properties") FROM stdin;
    public       postgres    false    204   �                0    180503    PersistedGrants 
   TABLE DATA               y   COPY public."PersistedGrants" ("Key", "Type", "SubjectId", "ClientId", "CreationTime", "Expiration", "Data") FROM stdin;
    public       postgres    false    205   �      .          0    180725 
   RoleClaims 
   TABLE DATA               Q   COPY public."RoleClaims" ("Id", "RoleId", "ClaimType", "ClaimValue") FROM stdin;
    public       postgres    false    237   �                0    180513    Roles 
   TABLE DATA               U   COPY public."Roles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") FROM stdin;
    public       postgres    false    207   �      0          0    180741 
   UserClaims 
   TABLE DATA               Q   COPY public."UserClaims" ("Id", "UserId", "ClaimType", "ClaimValue") FROM stdin;
    public       postgres    false    239   (      1          0    180755 
   UserLogins 
   TABLE DATA               g   COPY public."UserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
    public       postgres    false    240   E      2          0    180768 	   UserRoles 
   TABLE DATA               9   COPY public."UserRoles" ("UserId", "RoleId") FROM stdin;
    public       postgres    false    241   b      3          0    180783 
   UserTokens 
   TABLE DATA               R   COPY public."UserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
    public       postgres    false    242   �                0    180524    Users 
   TABLE DATA                 COPY public."Users" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount") FROM stdin;
    public       postgres    false    209   �                0    180454    __EFMigrationsHistory 
   TABLE DATA               R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public       postgres    false    196         T           0    0    ApiClaims_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."ApiClaims_Id_seq"', 2, true);
            public       postgres    false    210            U           0    0    ApiResources_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ApiResources_Id_seq"', 2, true);
            public       postgres    false    197            V           0    0    ApiScopeClaims_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."ApiScopeClaims_Id_seq"', 1, false);
            public       postgres    false    243            W           0    0    ApiScopes_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."ApiScopes_Id_seq"', 3, true);
            public       postgres    false    212            X           0    0    ApiSecrets_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."ApiSecrets_Id_seq"', 2, true);
            public       postgres    false    214            Y           0    0    ClientClaims_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ClientClaims_Id_seq"', 1, false);
            public       postgres    false    216            Z           0    0    ClientCorsOrigins_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ClientCorsOrigins_Id_seq"', 1, true);
            public       postgres    false    218            [           0    0    ClientGrantTypes_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ClientGrantTypes_Id_seq"', 2, true);
            public       postgres    false    220            \           0    0    ClientIdPRestrictions_Id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."ClientIdPRestrictions_Id_seq"', 1, false);
            public       postgres    false    222            ]           0    0 #   ClientPostLogoutRedirectUris_Id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."ClientPostLogoutRedirectUris_Id_seq"', 1, true);
            public       postgres    false    224            ^           0    0    ClientProperties_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ClientProperties_Id_seq"', 1, false);
            public       postgres    false    226            _           0    0    ClientRedirectUris_Id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."ClientRedirectUris_Id_seq"', 1, true);
            public       postgres    false    228            `           0    0    ClientScopes_Id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ClientScopes_Id_seq"', 4, true);
            public       postgres    false    230            a           0    0    ClientSecrets_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."ClientSecrets_Id_seq"', 1, false);
            public       postgres    false    232            b           0    0    Clients_Id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Clients_Id_seq"', 2, true);
            public       postgres    false    199            c           0    0    IdentityClaims_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."IdentityClaims_Id_seq"', 21, true);
            public       postgres    false    234            d           0    0    IdentityResources_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."IdentityResources_Id_seq"', 5, true);
            public       postgres    false    201            e           0    0 
   Log_Id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Log_Id_seq"', 1, false);
            public       postgres    false    203            f           0    0    RoleClaims_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."RoleClaims_Id_seq"', 1, false);
            public       postgres    false    236            g           0    0    Roles_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Roles_Id_seq"', 1, true);
            public       postgres    false    206            h           0    0    UserClaims_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserClaims_Id_seq"', 1, false);
            public       postgres    false    238            i           0    0    Users_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_Id_seq"', 1, true);
            public       postgres    false    208            A           2606    180540    ApiClaims PK_ApiClaims 
   CONSTRAINT     Z   ALTER TABLE ONLY public."ApiClaims"
    ADD CONSTRAINT "PK_ApiClaims" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."ApiClaims" DROP CONSTRAINT "PK_ApiClaims";
       public         postgres    false    211            ,           2606    180469    ApiResources PK_ApiResources 
   CONSTRAINT     `   ALTER TABLE ONLY public."ApiResources"
    ADD CONSTRAINT "PK_ApiResources" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."ApiResources" DROP CONSTRAINT "PK_ApiResources";
       public         postgres    false    198            w           2606    180803     ApiScopeClaims PK_ApiScopeClaims 
   CONSTRAINT     d   ALTER TABLE ONLY public."ApiScopeClaims"
    ADD CONSTRAINT "PK_ApiScopeClaims" PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public."ApiScopeClaims" DROP CONSTRAINT "PK_ApiScopeClaims";
       public         postgres    false    244            E           2606    180556    ApiScopes PK_ApiScopes 
   CONSTRAINT     Z   ALTER TABLE ONLY public."ApiScopes"
    ADD CONSTRAINT "PK_ApiScopes" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."ApiScopes" DROP CONSTRAINT "PK_ApiScopes";
       public         postgres    false    213            H           2606    180572    ApiSecrets PK_ApiSecrets 
   CONSTRAINT     \   ALTER TABLE ONLY public."ApiSecrets"
    ADD CONSTRAINT "PK_ApiSecrets" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."ApiSecrets" DROP CONSTRAINT "PK_ApiSecrets";
       public         postgres    false    215            K           2606    180588    ClientClaims PK_ClientClaims 
   CONSTRAINT     `   ALTER TABLE ONLY public."ClientClaims"
    ADD CONSTRAINT "PK_ClientClaims" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."ClientClaims" DROP CONSTRAINT "PK_ClientClaims";
       public         postgres    false    217            N           2606    180601 &   ClientCorsOrigins PK_ClientCorsOrigins 
   CONSTRAINT     j   ALTER TABLE ONLY public."ClientCorsOrigins"
    ADD CONSTRAINT "PK_ClientCorsOrigins" PRIMARY KEY ("Id");
 T   ALTER TABLE ONLY public."ClientCorsOrigins" DROP CONSTRAINT "PK_ClientCorsOrigins";
       public         postgres    false    219            Q           2606    180614 $   ClientGrantTypes PK_ClientGrantTypes 
   CONSTRAINT     h   ALTER TABLE ONLY public."ClientGrantTypes"
    ADD CONSTRAINT "PK_ClientGrantTypes" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."ClientGrantTypes" DROP CONSTRAINT "PK_ClientGrantTypes";
       public         postgres    false    221            T           2606    180627 .   ClientIdPRestrictions PK_ClientIdPRestrictions 
   CONSTRAINT     r   ALTER TABLE ONLY public."ClientIdPRestrictions"
    ADD CONSTRAINT "PK_ClientIdPRestrictions" PRIMARY KEY ("Id");
 \   ALTER TABLE ONLY public."ClientIdPRestrictions" DROP CONSTRAINT "PK_ClientIdPRestrictions";
       public         postgres    false    223            W           2606    180643 <   ClientPostLogoutRedirectUris PK_ClientPostLogoutRedirectUris 
   CONSTRAINT     �   ALTER TABLE ONLY public."ClientPostLogoutRedirectUris"
    ADD CONSTRAINT "PK_ClientPostLogoutRedirectUris" PRIMARY KEY ("Id");
 j   ALTER TABLE ONLY public."ClientPostLogoutRedirectUris" DROP CONSTRAINT "PK_ClientPostLogoutRedirectUris";
       public         postgres    false    225            Z           2606    180659 $   ClientProperties PK_ClientProperties 
   CONSTRAINT     h   ALTER TABLE ONLY public."ClientProperties"
    ADD CONSTRAINT "PK_ClientProperties" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."ClientProperties" DROP CONSTRAINT "PK_ClientProperties";
       public         postgres    false    227            ]           2606    180675 (   ClientRedirectUris PK_ClientRedirectUris 
   CONSTRAINT     l   ALTER TABLE ONLY public."ClientRedirectUris"
    ADD CONSTRAINT "PK_ClientRedirectUris" PRIMARY KEY ("Id");
 V   ALTER TABLE ONLY public."ClientRedirectUris" DROP CONSTRAINT "PK_ClientRedirectUris";
       public         postgres    false    229            `           2606    180688    ClientScopes PK_ClientScopes 
   CONSTRAINT     `   ALTER TABLE ONLY public."ClientScopes"
    ADD CONSTRAINT "PK_ClientScopes" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."ClientScopes" DROP CONSTRAINT "PK_ClientScopes";
       public         postgres    false    231            c           2606    180704    ClientSecrets PK_ClientSecrets 
   CONSTRAINT     b   ALTER TABLE ONLY public."ClientSecrets"
    ADD CONSTRAINT "PK_ClientSecrets" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."ClientSecrets" DROP CONSTRAINT "PK_ClientSecrets";
       public         postgres    false    233            /           2606    180480    Clients PK_Clients 
   CONSTRAINT     V   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "PK_Clients" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "PK_Clients";
       public         postgres    false    200            f           2606    180717     IdentityClaims PK_IdentityClaims 
   CONSTRAINT     d   ALTER TABLE ONLY public."IdentityClaims"
    ADD CONSTRAINT "PK_IdentityClaims" PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public."IdentityClaims" DROP CONSTRAINT "PK_IdentityClaims";
       public         postgres    false    235            2           2606    180491 &   IdentityResources PK_IdentityResources 
   CONSTRAINT     j   ALTER TABLE ONLY public."IdentityResources"
    ADD CONSTRAINT "PK_IdentityResources" PRIMARY KEY ("Id");
 T   ALTER TABLE ONLY public."IdentityResources" DROP CONSTRAINT "PK_IdentityResources";
       public         postgres    false    202            4           2606    180502 
   Log PK_Log 
   CONSTRAINT     N   ALTER TABLE ONLY public."Log"
    ADD CONSTRAINT "PK_Log" PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public."Log" DROP CONSTRAINT "PK_Log";
       public         postgres    false    204            7           2606    180510 "   PersistedGrants PK_PersistedGrants 
   CONSTRAINT     g   ALTER TABLE ONLY public."PersistedGrants"
    ADD CONSTRAINT "PK_PersistedGrants" PRIMARY KEY ("Key");
 P   ALTER TABLE ONLY public."PersistedGrants" DROP CONSTRAINT "PK_PersistedGrants";
       public         postgres    false    205            i           2606    180733    RoleClaims PK_RoleClaims 
   CONSTRAINT     \   ALTER TABLE ONLY public."RoleClaims"
    ADD CONSTRAINT "PK_RoleClaims" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."RoleClaims" DROP CONSTRAINT "PK_RoleClaims";
       public         postgres    false    237            9           2606    180521    Roles PK_Roles 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "PK_Roles" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "PK_Roles";
       public         postgres    false    207            l           2606    180749    UserClaims PK_UserClaims 
   CONSTRAINT     \   ALTER TABLE ONLY public."UserClaims"
    ADD CONSTRAINT "PK_UserClaims" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."UserClaims" DROP CONSTRAINT "PK_UserClaims";
       public         postgres    false    239            o           2606    180762    UserLogins PK_UserLogins 
   CONSTRAINT     v   ALTER TABLE ONLY public."UserLogins"
    ADD CONSTRAINT "PK_UserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");
 F   ALTER TABLE ONLY public."UserLogins" DROP CONSTRAINT "PK_UserLogins";
       public         postgres    false    240    240            r           2606    180772    UserRoles PK_UserRoles 
   CONSTRAINT     h   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "PK_UserRoles" PRIMARY KEY ("UserId", "RoleId");
 D   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "PK_UserRoles";
       public         postgres    false    241    241            t           2606    180790    UserTokens PK_UserTokens 
   CONSTRAINT     y   ALTER TABLE ONLY public."UserTokens"
    ADD CONSTRAINT "PK_UserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");
 F   ALTER TABLE ONLY public."UserTokens" DROP CONSTRAINT "PK_UserTokens";
       public         postgres    false    242    242    242            =           2606    180532    Users PK_Users 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "PK_Users";
       public         postgres    false    209            )           2606    180458 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public         postgres    false    196            ;           1259    180833 
   EmailIndex    INDEX     M   CREATE INDEX "EmailIndex" ON public."Users" USING btree ("NormalizedEmail");
     DROP INDEX public."EmailIndex";
       public         postgres    false    209            ?           1259    180809    IX_ApiClaims_ApiResourceId    INDEX     _   CREATE INDEX "IX_ApiClaims_ApiResourceId" ON public."ApiClaims" USING btree ("ApiResourceId");
 0   DROP INDEX public."IX_ApiClaims_ApiResourceId";
       public         postgres    false    211            *           1259    180810    IX_ApiResources_Name    INDEX     Z   CREATE UNIQUE INDEX "IX_ApiResources_Name" ON public."ApiResources" USING btree ("Name");
 *   DROP INDEX public."IX_ApiResources_Name";
       public         postgres    false    198            u           1259    180811    IX_ApiScopeClaims_ApiScopeId    INDEX     c   CREATE INDEX "IX_ApiScopeClaims_ApiScopeId" ON public."ApiScopeClaims" USING btree ("ApiScopeId");
 2   DROP INDEX public."IX_ApiScopeClaims_ApiScopeId";
       public         postgres    false    244            B           1259    180812    IX_ApiScopes_ApiResourceId    INDEX     _   CREATE INDEX "IX_ApiScopes_ApiResourceId" ON public."ApiScopes" USING btree ("ApiResourceId");
 0   DROP INDEX public."IX_ApiScopes_ApiResourceId";
       public         postgres    false    213            C           1259    180813    IX_ApiScopes_Name    INDEX     T   CREATE UNIQUE INDEX "IX_ApiScopes_Name" ON public."ApiScopes" USING btree ("Name");
 '   DROP INDEX public."IX_ApiScopes_Name";
       public         postgres    false    213            F           1259    180814    IX_ApiSecrets_ApiResourceId    INDEX     a   CREATE INDEX "IX_ApiSecrets_ApiResourceId" ON public."ApiSecrets" USING btree ("ApiResourceId");
 1   DROP INDEX public."IX_ApiSecrets_ApiResourceId";
       public         postgres    false    215            I           1259    180815    IX_ClientClaims_ClientId    INDEX     [   CREATE INDEX "IX_ClientClaims_ClientId" ON public."ClientClaims" USING btree ("ClientId");
 .   DROP INDEX public."IX_ClientClaims_ClientId";
       public         postgres    false    217            L           1259    180816    IX_ClientCorsOrigins_ClientId    INDEX     e   CREATE INDEX "IX_ClientCorsOrigins_ClientId" ON public."ClientCorsOrigins" USING btree ("ClientId");
 3   DROP INDEX public."IX_ClientCorsOrigins_ClientId";
       public         postgres    false    219            O           1259    180817    IX_ClientGrantTypes_ClientId    INDEX     c   CREATE INDEX "IX_ClientGrantTypes_ClientId" ON public."ClientGrantTypes" USING btree ("ClientId");
 2   DROP INDEX public."IX_ClientGrantTypes_ClientId";
       public         postgres    false    221            R           1259    180818 !   IX_ClientIdPRestrictions_ClientId    INDEX     m   CREATE INDEX "IX_ClientIdPRestrictions_ClientId" ON public."ClientIdPRestrictions" USING btree ("ClientId");
 7   DROP INDEX public."IX_ClientIdPRestrictions_ClientId";
       public         postgres    false    223            U           1259    180819 (   IX_ClientPostLogoutRedirectUris_ClientId    INDEX     {   CREATE INDEX "IX_ClientPostLogoutRedirectUris_ClientId" ON public."ClientPostLogoutRedirectUris" USING btree ("ClientId");
 >   DROP INDEX public."IX_ClientPostLogoutRedirectUris_ClientId";
       public         postgres    false    225            X           1259    180820    IX_ClientProperties_ClientId    INDEX     c   CREATE INDEX "IX_ClientProperties_ClientId" ON public."ClientProperties" USING btree ("ClientId");
 2   DROP INDEX public."IX_ClientProperties_ClientId";
       public         postgres    false    227            [           1259    180821    IX_ClientRedirectUris_ClientId    INDEX     g   CREATE INDEX "IX_ClientRedirectUris_ClientId" ON public."ClientRedirectUris" USING btree ("ClientId");
 4   DROP INDEX public."IX_ClientRedirectUris_ClientId";
       public         postgres    false    229            ^           1259    180823    IX_ClientScopes_ClientId    INDEX     [   CREATE INDEX "IX_ClientScopes_ClientId" ON public."ClientScopes" USING btree ("ClientId");
 .   DROP INDEX public."IX_ClientScopes_ClientId";
       public         postgres    false    231            a           1259    180824    IX_ClientSecrets_ClientId    INDEX     ]   CREATE INDEX "IX_ClientSecrets_ClientId" ON public."ClientSecrets" USING btree ("ClientId");
 /   DROP INDEX public."IX_ClientSecrets_ClientId";
       public         postgres    false    233            -           1259    180822    IX_Clients_ClientId    INDEX     X   CREATE UNIQUE INDEX "IX_Clients_ClientId" ON public."Clients" USING btree ("ClientId");
 )   DROP INDEX public."IX_Clients_ClientId";
       public         postgres    false    200            d           1259    180825 $   IX_IdentityClaims_IdentityResourceId    INDEX     s   CREATE INDEX "IX_IdentityClaims_IdentityResourceId" ON public."IdentityClaims" USING btree ("IdentityResourceId");
 :   DROP INDEX public."IX_IdentityClaims_IdentityResourceId";
       public         postgres    false    235            0           1259    180826    IX_IdentityResources_Name    INDEX     d   CREATE UNIQUE INDEX "IX_IdentityResources_Name" ON public."IdentityResources" USING btree ("Name");
 /   DROP INDEX public."IX_IdentityResources_Name";
       public         postgres    false    202            5           1259    180827 *   IX_PersistedGrants_SubjectId_ClientId_Type    INDEX     �   CREATE INDEX "IX_PersistedGrants_SubjectId_ClientId_Type" ON public."PersistedGrants" USING btree ("SubjectId", "ClientId", "Type");
 @   DROP INDEX public."IX_PersistedGrants_SubjectId_ClientId_Type";
       public         postgres    false    205    205    205            g           1259    180828    IX_RoleClaims_RoleId    INDEX     S   CREATE INDEX "IX_RoleClaims_RoleId" ON public."RoleClaims" USING btree ("RoleId");
 *   DROP INDEX public."IX_RoleClaims_RoleId";
       public         postgres    false    237            j           1259    180830    IX_UserClaims_UserId    INDEX     S   CREATE INDEX "IX_UserClaims_UserId" ON public."UserClaims" USING btree ("UserId");
 *   DROP INDEX public."IX_UserClaims_UserId";
       public         postgres    false    239            m           1259    180831    IX_UserLogins_UserId    INDEX     S   CREATE INDEX "IX_UserLogins_UserId" ON public."UserLogins" USING btree ("UserId");
 *   DROP INDEX public."IX_UserLogins_UserId";
       public         postgres    false    240            p           1259    180832    IX_UserRoles_RoleId    INDEX     Q   CREATE INDEX "IX_UserRoles_RoleId" ON public."UserRoles" USING btree ("RoleId");
 )   DROP INDEX public."IX_UserRoles_RoleId";
       public         postgres    false    241            :           1259    180829    RoleNameIndex    INDEX     V   CREATE UNIQUE INDEX "RoleNameIndex" ON public."Roles" USING btree ("NormalizedName");
 #   DROP INDEX public."RoleNameIndex";
       public         postgres    false    207            >           1259    180834    UserNameIndex    INDEX     Z   CREATE UNIQUE INDEX "UserNameIndex" ON public."Users" USING btree ("NormalizedUserName");
 #   DROP INDEX public."UserNameIndex";
       public         postgres    false    209            x           2606    180541 1   ApiClaims FK_ApiClaims_ApiResources_ApiResourceId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApiClaims"
    ADD CONSTRAINT "FK_ApiClaims_ApiResources_ApiResourceId" FOREIGN KEY ("ApiResourceId") REFERENCES public."ApiResources"("Id") ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."ApiClaims" DROP CONSTRAINT "FK_ApiClaims_ApiResources_ApiResourceId";
       public       postgres    false    198    211    2860            �           2606    180804 5   ApiScopeClaims FK_ApiScopeClaims_ApiScopes_ApiScopeId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApiScopeClaims"
    ADD CONSTRAINT "FK_ApiScopeClaims_ApiScopes_ApiScopeId" FOREIGN KEY ("ApiScopeId") REFERENCES public."ApiScopes"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ApiScopeClaims" DROP CONSTRAINT "FK_ApiScopeClaims_ApiScopes_ApiScopeId";
       public       postgres    false    244    2885    213            y           2606    180557 1   ApiScopes FK_ApiScopes_ApiResources_ApiResourceId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApiScopes"
    ADD CONSTRAINT "FK_ApiScopes_ApiResources_ApiResourceId" FOREIGN KEY ("ApiResourceId") REFERENCES public."ApiResources"("Id") ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."ApiScopes" DROP CONSTRAINT "FK_ApiScopes_ApiResources_ApiResourceId";
       public       postgres    false    198    2860    213            z           2606    180573 3   ApiSecrets FK_ApiSecrets_ApiResources_ApiResourceId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApiSecrets"
    ADD CONSTRAINT "FK_ApiSecrets_ApiResources_ApiResourceId" FOREIGN KEY ("ApiResourceId") REFERENCES public."ApiResources"("Id") ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."ApiSecrets" DROP CONSTRAINT "FK_ApiSecrets_ApiResources_ApiResourceId";
       public       postgres    false    2860    215    198            {           2606    180589 -   ClientClaims FK_ClientClaims_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientClaims"
    ADD CONSTRAINT "FK_ClientClaims_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 [   ALTER TABLE ONLY public."ClientClaims" DROP CONSTRAINT "FK_ClientClaims_Clients_ClientId";
       public       postgres    false    2863    217    200            |           2606    180602 7   ClientCorsOrigins FK_ClientCorsOrigins_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientCorsOrigins"
    ADD CONSTRAINT "FK_ClientCorsOrigins_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."ClientCorsOrigins" DROP CONSTRAINT "FK_ClientCorsOrigins_Clients_ClientId";
       public       postgres    false    200    219    2863            }           2606    180615 5   ClientGrantTypes FK_ClientGrantTypes_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientGrantTypes"
    ADD CONSTRAINT "FK_ClientGrantTypes_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ClientGrantTypes" DROP CONSTRAINT "FK_ClientGrantTypes_Clients_ClientId";
       public       postgres    false    221    200    2863            ~           2606    180628 ?   ClientIdPRestrictions FK_ClientIdPRestrictions_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientIdPRestrictions"
    ADD CONSTRAINT "FK_ClientIdPRestrictions_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 m   ALTER TABLE ONLY public."ClientIdPRestrictions" DROP CONSTRAINT "FK_ClientIdPRestrictions_Clients_ClientId";
       public       postgres    false    223    200    2863                       2606    180644 M   ClientPostLogoutRedirectUris FK_ClientPostLogoutRedirectUris_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientPostLogoutRedirectUris"
    ADD CONSTRAINT "FK_ClientPostLogoutRedirectUris_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 {   ALTER TABLE ONLY public."ClientPostLogoutRedirectUris" DROP CONSTRAINT "FK_ClientPostLogoutRedirectUris_Clients_ClientId";
       public       postgres    false    2863    225    200            �           2606    180660 5   ClientProperties FK_ClientProperties_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientProperties"
    ADD CONSTRAINT "FK_ClientProperties_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."ClientProperties" DROP CONSTRAINT "FK_ClientProperties_Clients_ClientId";
       public       postgres    false    200    227    2863            �           2606    180676 9   ClientRedirectUris FK_ClientRedirectUris_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientRedirectUris"
    ADD CONSTRAINT "FK_ClientRedirectUris_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 g   ALTER TABLE ONLY public."ClientRedirectUris" DROP CONSTRAINT "FK_ClientRedirectUris_Clients_ClientId";
       public       postgres    false    200    2863    229            �           2606    180689 -   ClientScopes FK_ClientScopes_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientScopes"
    ADD CONSTRAINT "FK_ClientScopes_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 [   ALTER TABLE ONLY public."ClientScopes" DROP CONSTRAINT "FK_ClientScopes_Clients_ClientId";
       public       postgres    false    2863    231    200            �           2606    180705 /   ClientSecrets FK_ClientSecrets_Clients_ClientId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ClientSecrets"
    ADD CONSTRAINT "FK_ClientSecrets_Clients_ClientId" FOREIGN KEY ("ClientId") REFERENCES public."Clients"("Id") ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public."ClientSecrets" DROP CONSTRAINT "FK_ClientSecrets_Clients_ClientId";
       public       postgres    false    2863    200    233            �           2606    180718 E   IdentityClaims FK_IdentityClaims_IdentityResources_IdentityResourceId    FK CONSTRAINT     �   ALTER TABLE ONLY public."IdentityClaims"
    ADD CONSTRAINT "FK_IdentityClaims_IdentityResources_IdentityResourceId" FOREIGN KEY ("IdentityResourceId") REFERENCES public."IdentityResources"("Id") ON DELETE CASCADE;
 s   ALTER TABLE ONLY public."IdentityClaims" DROP CONSTRAINT "FK_IdentityClaims_IdentityResources_IdentityResourceId";
       public       postgres    false    235    2866    202            �           2606    180734 %   RoleClaims FK_RoleClaims_Roles_RoleId    FK CONSTRAINT     �   ALTER TABLE ONLY public."RoleClaims"
    ADD CONSTRAINT "FK_RoleClaims_Roles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."RoleClaims" DROP CONSTRAINT "FK_RoleClaims_Roles_RoleId";
       public       postgres    false    2873    207    237            �           2606    180750 %   UserClaims FK_UserClaims_Users_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserClaims"
    ADD CONSTRAINT "FK_UserClaims_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."UserClaims" DROP CONSTRAINT "FK_UserClaims_Users_UserId";
       public       postgres    false    239    209    2877            �           2606    180763 %   UserLogins FK_UserLogins_Users_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserLogins"
    ADD CONSTRAINT "FK_UserLogins_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."UserLogins" DROP CONSTRAINT "FK_UserLogins_Users_UserId";
       public       postgres    false    2877    240    209            �           2606    180773 #   UserRoles FK_UserRoles_Roles_RoleId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Roles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "FK_UserRoles_Roles_RoleId";
       public       postgres    false    207    241    2873            �           2606    180778 #   UserRoles FK_UserRoles_Users_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "FK_UserRoles_Users_UserId";
       public       postgres    false    209    241    2877            �           2606    180791 %   UserTokens FK_UserTokens_Users_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserTokens"
    ADD CONSTRAINT "FK_UserTokens_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."UserTokens" DROP CONSTRAINT "FK_UserTokens_Users_UserId";
       public       postgres    false    2877    242    209                  x�3��K�M�4�2�L�M���b���� I�Q         +   x�3�,�L,�4���MUp�T0���2�� n� ��
      5      x������ � �         ]   x�3�L,�4���MUp�T0���L�NC.#���^ZiNN|brrjq1��� a+�䃵!�qC��&�����TrY
 >]1z\\\ ��&�         X   x����4����6O�5.N����1(��(��(2N7+6��,37���/H����)���H,JM	NM.J-�4�j7��#�=... J,            x������ � �         '   x�3��())�����ON���/.��400�4����� �+K            x�3���-��L�,�4����� 2��             x������ � �      "   <   x�3��())�����ON���/.��400�/�L��/-�
�$%&g��g�$sr��qqq �v�      $      x������ � �      &   3   x�3��())�����ON���/.��400�/�L������LI�4����� 2��      (   4   x�3��/H��L�4�2�,(�O��I��9Ss3s�,΢���b +F��� D�D      *      x������ � �      	   }   x�3�,��LI�+�,��OL������LI�"�ǙQRR`���������_\bei`` �(�40,��H�83=/��Dj8XO�1P�����cdji2����L�r@MO���(��+F��� ��5B      ,   �   x�=�]n�0��������.'�;a�(N���s��o�(����O0d�����:$�p��5�X%{t4<S�����+�tB̳�\��9���+\0���G��9�X��j�1�r򬏋�*sٵ�:����:�W����׾��u��d�~��xy|'\����g�H�y<�=���&m�5�\��AD^0Q�         �   x�]��
�0Eg�+4�P}�F�B�B� �� ��_;iR�r�:��٨�3y��*P
�ǬŌ�����,(�yuh+~k�P,�)q�C )
�%<At{�:�nܬ�M19��ג��^����JݚN�(�a;�W.h���P��<��`�� ��N            x������ � �         �   x�]�[k�@��7�B��^�XLX�)����A#^KH�c��ٍ�b��� ��sf����m/o����ӏAP�rpl�C���x���4z.a�Ϗ�$X�YS�M2�+�5�X��֧$�j�^�sÞ�u�P��l���|�������.���m|`�q��*.��T��Ui���"EEj���7�,�5c��W��+l(>iK���Q������\
hN�      .      x������ � �         c   x�3��LI�+�,�tL�����%E�%�E��.�~!�!��.��~`�38$�1�?�3�0-���$Q���4Y�$%%U�25%Q���(���,�4)1�+F��� 8�      0      x������ � �      1      x������ � �      2      x�3�4����� ]      3      x������ � �         �   x�-�͎�0E��2��BSX�X)J)�7������K��.�=�&4���p��t����)��eoT�������4�Op�f��O�W}�8wl�����^ٳ5g��x<�0�m�[�${����w,{,���g�"�/�yF!@)�D�����$��b̬4@�������mb�uB�n+��]��u���+$-a�&����`�mM�ސ3B         3   x�320�0�024�0022�wI���,�4�3�3�-*��56�01����� ޣ	�     