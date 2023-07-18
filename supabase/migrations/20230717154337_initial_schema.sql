create table "public"."categories" (
    "uuid" uuid not null default gen_random_uuid(),
    "name" character varying(255) not null,
    "slug" character varying(255) not null
);

ALTER TABLE "public"."categories" ENABLE ROW LEVEL SECURITY;
CREATE POLICY view_categories_policy ON "public"."categories" FOR SELECT
  USING (true);


create table "public"."projects" (
    "uuid" uuid not null default gen_random_uuid(),
    "title" character varying(255) not null,
    "excerpt" text not null,
    "description" text not null,
    "image" character varying(255) not null,
    "categoryUuid" uuid not null,
    "pledged" numeric not null default 0,
    "backers" integer not null default 0,
    "funded" character varying(255) not null default '0',
    "softCap" character varying(255) not null,
    "hardCap" character varying(255) not null,
    "finishesAt" timestamp without time zone not null,
    "createdAt" timestamp without time zone not null default now(),
    "lastUpdatedAt" timestamp without time zone not null default now()
);

ALTER TABLE "public"."projects" ENABLE ROW LEVEL SECURITY;
CREATE POLICY view_projects_policy ON "public"."projects" FOR SELECT
  USING (true);
CREATE POLICY create_project_policy ON "public"."projects" FOR INSERT
  WITH CHECK (true);


create table "public"."users" (
    "uuid" uuid not null default gen_random_uuid(),
    "firstName" character varying(255) not null,
    "lastName" character varying(255) not null,
    "username" character varying(255) not null,
    "bio" text,
    "email" character varying(255) not null,
    "avatar" character varying(255) not null
);

ALTER TABLE "public"."users" ENABLE ROW LEVEL SECURITY;
CREATE POLICY view_users_policy ON "public"."users" FOR SELECT
  USING (true);


CREATE UNIQUE INDEX categories_pkey ON public.categories USING btree (uuid);

CREATE UNIQUE INDEX projects_pkey ON public.projects USING btree (uuid);

CREATE UNIQUE INDEX users_pkey ON public.users USING btree (uuid);

alter table "public"."categories" add constraint "categories_pkey" PRIMARY KEY using index "categories_pkey";

alter table "public"."projects" add constraint "projects_pkey" PRIMARY KEY using index "projects_pkey";

alter table "public"."users" add constraint "users_pkey" PRIMARY KEY using index "users_pkey";

alter table "public"."projects" add constraint "projects_categoryUuid_fkey" FOREIGN KEY ("categoryUuid") REFERENCES categories(uuid) not valid;

alter table "public"."projects" validate constraint "projects_categoryUuid_fkey";

