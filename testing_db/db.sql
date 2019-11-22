--
-- File generated with SQLiteStudio v3.2.1 on Mon Oct 28 18:33:48 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_course', 'Can add course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_course', 'Can change course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_course', 'Can delete course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_course', 'Can view course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_instructor', 'Can add instructor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_instructor', 'Can change instructor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_instructor', 'Can delete instructor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_instructor', 'Can view instructor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_semester', 'Can add semester');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_semester', 'Can change semester');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_semester', 'Can delete semester');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_semester', 'Can view semester');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_student', 'Can add student');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_student', 'Can change student');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_student', 'Can delete student');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_student', 'Can view student');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_section', 'Can add section');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_section', 'Can change section');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_section', 'Can delete section');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_section', 'Can view section');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_registration', 'Can add registration');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_registration', 'Can change registration');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_registration', 'Can delete registration');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_registration', 'Can view registration');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_period', 'Can add period');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_period', 'Can change period');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_period', 'Can delete period');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_period', 'Can view period');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_year', 'Can add year');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_year', 'Can change year');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_year', 'Can delete year');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_year', 'Can view year');

-- Table: auth_user
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (1, 'pbkdf2_sha256$150000$sOabeiMTxUQv$DeHkDwRQmGUZ36bHSIZPOIqrov7KW0sIPPNhHOoOWHI=', '2019-10-27 23:33:25.574378', 1, 'tester', '', 'winwowin@gmail.com', 1, 1, '2019-09-21 20:52:55.190930', '');

-- Table: auth_user_groups
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: courseinfo_course
CREATE TABLE "courseinfo_course" ("course_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "course_number" varchar(20) NOT NULL, "course_name" varchar(225) NOT NULL);
INSERT INTO courseinfo_course (course_id, course_number, course_name) VALUES (1, '1234', '1234');
INSERT INTO courseinfo_course (course_id, course_number, course_name) VALUES (2, '2345', '2345');

-- Table: courseinfo_instructor
CREATE TABLE "courseinfo_instructor" ("instructor_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "first_name" varchar(45) NOT NULL, "last_name" varchar(45) NOT NULL);
INSERT INTO courseinfo_instructor (instructor_id, first_name, last_name) VALUES (1, '66', 'gfdrs');
INSERT INTO courseinfo_instructor (instructor_id, first_name, last_name) VALUES (2, 'Kevin', 'Prof');
INSERT INTO courseinfo_instructor (instructor_id, first_name, last_name) VALUES (3, 'ha', 'ho');
INSERT INTO courseinfo_instructor (instructor_id, first_name, last_name) VALUES (5, 'Delete', 'Test');

-- Table: courseinfo_period
CREATE TABLE "courseinfo_period" ("period_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "period_sequence" integer NOT NULL UNIQUE, "period_name" varchar(45) NOT NULL UNIQUE);
INSERT INTO courseinfo_period (period_id, period_sequence, period_name) VALUES (1, 9999, 'TemporaryValue');
INSERT INTO courseinfo_period (period_id, period_sequence, period_name) VALUES (2, 10, 'Spring');
INSERT INTO courseinfo_period (period_id, period_sequence, period_name) VALUES (3, 20, 'Summer');
INSERT INTO courseinfo_period (period_id, period_sequence, period_name) VALUES (4, 30, 'Fall');

-- Table: courseinfo_registration
CREATE TABLE "courseinfo_registration" ("registration_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "section_id" integer NOT NULL REFERENCES "courseinfo_section" ("section_id") DEFERRABLE INITIALLY DEFERRED, "student_id" integer NOT NULL REFERENCES "courseinfo_student" ("student_id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO courseinfo_registration (registration_id, section_id, student_id) VALUES (1, 1, 2);
INSERT INTO courseinfo_registration (registration_id, section_id, student_id) VALUES (2, 1, 1);

-- Table: courseinfo_section
CREATE TABLE "courseinfo_section" ("section_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "section_name" varchar(10) NOT NULL, "course_id" integer NOT NULL REFERENCES "courseinfo_course" ("course_id") DEFERRABLE INITIALLY DEFERRED, "instructor_id" integer NOT NULL REFERENCES "courseinfo_instructor" ("instructor_id") DEFERRABLE INITIALLY DEFERRED, "semester_id" integer NOT NULL REFERENCES "courseinfo_semester" ("semester_id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO courseinfo_section (section_id, section_name, course_id, instructor_id, semester_id) VALUES (1, '516546', 1, 1, 1);
INSERT INTO courseinfo_section (section_id, section_name, course_id, instructor_id, semester_id) VALUES (2, 'DELETE TES', 2, 2, 1);

-- Table: courseinfo_semester
CREATE TABLE "courseinfo_semester" ("semester_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "semester_name" varchar(45) NOT NULL UNIQUE);
INSERT INTO courseinfo_semester (semester_id, semester_name) VALUES (1, '55');
INSERT INTO courseinfo_semester (semester_id, semester_name) VALUES (17, '2019 - Summer');
INSERT INTO courseinfo_semester (semester_id, semester_name) VALUES (18, '2019 - Fall');
INSERT INTO courseinfo_semester (semester_id, semester_name) VALUES (19, '2020 - Spring');
INSERT INTO courseinfo_semester (semester_id, semester_name) VALUES (20, '2020 - Summer');
INSERT INTO courseinfo_semester (semester_id, semester_name) VALUES (21, '2020 - Fall');

-- Table: courseinfo_student
CREATE TABLE "courseinfo_student" ("student_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "first_name" varchar(45) NOT NULL, "last_name" varchar(45) NOT NULL, "nickname" varchar(45) NOT NULL);
INSERT INTO courseinfo_student (student_id, first_name, last_name, nickname) VALUES (1, 'haha', 'kjsja', 'osjfdana');
INSERT INTO courseinfo_student (student_id, first_name, last_name, nickname) VALUES (2, 'iajsg', 'kjfdsnv', 'kxdjfnb');

-- Table: courseinfo_year
CREATE TABLE "courseinfo_year" ("year_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "year" integer NOT NULL UNIQUE);
INSERT INTO courseinfo_year (year_id, year) VALUES (1, 9999);
INSERT INTO courseinfo_year (year_id, year) VALUES (2, 55);
INSERT INTO courseinfo_year (year_id, year) VALUES (3, 2018);
INSERT INTO courseinfo_year (year_id, year) VALUES (4, 2019);
INSERT INTO courseinfo_year (year_id, year) VALUES (5, 2020);

-- Table: django_admin_log
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (1, '2019-09-21 20:56:41.984213', '1', 'Course object (1)', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (2, '2019-09-21 20:56:47.784022', '2', 'Course object (2)', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (3, '2019-09-21 20:58:00.189829', '1', 'Semester object (1)', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (4, '2019-09-21 20:58:05.715087', '1', 'Instructor object (1)', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (5, '2019-09-21 20:58:07.764604', '1', 'Section object (1)', '[{"added": {}}]', 11, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (6, '2019-09-22 02:21:06.318031', '2', 'Prof, Kevin', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (7, '2019-09-22 02:21:21.308537', '1', 'kjsja, haha (osjfdana)', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (8, '2019-09-22 02:21:29.570965', '2', 'kjfdsnv, iajsg (kxdjfnb)', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (9, '2019-09-22 02:23:07.818732', '3', 'ho, ha', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (10, '2019-09-22 02:26:25.809485', '1', '1234, 516546 (55) / kjfdsnv, iajsg (kxdjfnb)', '[{"added": {}}]', 12, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (11, '2019-09-22 02:26:38.436128', '2', '1234, 516546 (55) / kjsja, haha (osjfdana)', '[{"added": {}}]', 12, 1, 1);

-- Table: django_content_type
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'courseinfo', 'course');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'courseinfo', 'instructor');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'courseinfo', 'semester');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'courseinfo', 'student');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'courseinfo', 'section');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'courseinfo', 'registration');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'courseinfo', 'period');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'courseinfo', 'year');

-- Table: django_migrations
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2019-09-21 20:48:32.691296');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2019-09-21 20:48:32.899739');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2019-09-21 20:48:33.090228');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-09-21 20:48:33.275733');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-21 20:48:33.466223');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-09-21 20:48:33.664724');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-09-21 20:48:33.838851');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-09-21 20:48:34.044393');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-09-21 20:48:34.229895');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-09-21 20:48:34.430360');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-09-21 20:48:34.610888');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-09-21 20:48:34.797377');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-09-21 20:48:35.020780');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-09-21 20:48:35.198307');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2019-09-21 20:48:35.408743');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2019-09-21 20:48:35.583856');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'courseinfo', '0001_initial', '2019-09-21 20:48:35.755753');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2019-09-21 20:48:35.946468');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'courseinfo', '0002_auto_20190921_2123', '2019-10-27 22:57:13.103111');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'courseinfo', '0003_auto_20191027_1753', '2019-10-27 22:57:13.464920');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'courseinfo', '0004_semester_data', '2019-10-28 22:56:05.841488');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'courseinfo', '0005_period_and_year_schema_and_data', '2019-10-28 22:56:06.081845');

-- Table: django_session
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('kltj132ypn9apfr51turx1xlbpj2hznq', 'NzdjMmNmMWQ1YTU5MTZkMzc5MjA1OGExNjhlMGZlMGUxZTFmN2M5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzOTJkMTY5NjQ2OTI5OGE1YzAxMGMyY2JlMTAwNzMwMzkyZDIzYTY1In0=', '2019-10-05 20:56:16.835593');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('g2e8vadm1xbs1zvch480b7b3we9p9kj9', 'NzdjMmNmMWQ1YTU5MTZkMzc5MjA1OGExNjhlMGZlMGUxZTFmN2M5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzOTJkMTY5NjQ2OTI5OGE1YzAxMGMyY2JlMTAwNzMwMzkyZDIzYTY1In0=', '2019-11-10 23:33:25.768343');

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: courseinfo_course_course_number_course_name_0276944d_uniq
CREATE UNIQUE INDEX "courseinfo_course_course_number_course_name_0276944d_uniq" ON "courseinfo_course" ("course_number", "course_name");

-- Index: courseinfo_instructor_last_name_first_name_9fa9f7fc_uniq
CREATE UNIQUE INDEX "courseinfo_instructor_last_name_first_name_9fa9f7fc_uniq" ON "courseinfo_instructor" ("last_name", "first_name");

-- Index: courseinfo_registration_section_id_a92a2f75
CREATE INDEX "courseinfo_registration_section_id_a92a2f75" ON "courseinfo_registration" ("section_id");

-- Index: courseinfo_registration_section_id_student_id_de95f0f3_uniq
CREATE UNIQUE INDEX "courseinfo_registration_section_id_student_id_de95f0f3_uniq" ON "courseinfo_registration" ("section_id", "student_id");

-- Index: courseinfo_registration_student_id_89b60324
CREATE INDEX "courseinfo_registration_student_id_89b60324" ON "courseinfo_registration" ("student_id");

-- Index: courseinfo_section_course_id_9536065f
CREATE INDEX "courseinfo_section_course_id_9536065f" ON "courseinfo_section" ("course_id");

-- Index: courseinfo_section_instructor_id_a0dae59a
CREATE INDEX "courseinfo_section_instructor_id_a0dae59a" ON "courseinfo_section" ("instructor_id");

-- Index: courseinfo_section_semester_id_cb9ff276
CREATE INDEX "courseinfo_section_semester_id_cb9ff276" ON "courseinfo_section" ("semester_id");

-- Index: courseinfo_section_semester_id_course_id_section_name_61259eed_uniq
CREATE UNIQUE INDEX "courseinfo_section_semester_id_course_id_section_name_61259eed_uniq" ON "courseinfo_section" ("semester_id", "course_id", "section_name");

-- Index: courseinfo_student_last_name_first_name_nickname_f47c59c2_uniq
CREATE UNIQUE INDEX "courseinfo_student_last_name_first_name_nickname_f47c59c2_uniq" ON "courseinfo_student" ("last_name", "first_name", "nickname");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
