CREATE TABLE "task_manager_module$current_user" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('bcbd422c-712d-443b-bc62-6fe377a79d57', 
'Task_Manager_Module.Current_User', 
'task_manager_module$current_user', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('2467b6a1-a062-425b-8751-ca1909568859', 
'bcbd422c-712d-443b-bc62-6fe377a79d57', 
'Name', 
'name', 
30, 
200, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220320 11:33:38';
