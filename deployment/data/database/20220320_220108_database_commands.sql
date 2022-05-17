ALTER TABLE "task_manager_module$task" ALTER COLUMN "status" SET DATA TYPE VARCHAR_IGNORECASE(200);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'f3d9d4fe-3ae8-40f7-9a3b-53fcf913610b', 
"attribute_name" = 'Status', 
"column_name" = 'status', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '033661e4-2c85-4718-a935-3008dce610f4';
CREATE TABLE "task_manager_module$task_status_task" (
	"task_manager_module$taskid" BIGINT NOT NULL,
	"task_manager_module$status_taskid" BIGINT NOT NULL,
	PRIMARY KEY("task_manager_module$taskid","task_manager_module$status_taskid"),
	CONSTRAINT "uniq_task_manager_module$task_status_task_task_manager_module$taskid" UNIQUE ("task_manager_module$taskid"));
CREATE INDEX "idx_task_manager_module$task_status_task_task_manager_module$status_task_task_manager_module$task" ON "task_manager_module$task_status_task" ("task_manager_module$status_taskid" ASC,"task_manager_module$taskid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('4b24e1a8-14ca-4e63-9d0d-a204f426c524', 
'Task_Manager_Module.Task_Status_Task', 
'task_manager_module$task_status_task', 
'f3d9d4fe-3ae8-40f7-9a3b-53fcf913610b', 
'179b655d-54df-4a5b-9462-55f329ebc2c6', 
'task_manager_module$taskid', 
'task_manager_module$status_taskid', 
'idx_task_manager_module$task_status_task_task_manager_module$status_task_task_manager_module$task');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_task_manager_module$task_status_task_task_manager_module$taskid', 
'4b24e1a8-14ca-4e63-9d0d-a204f426c524', 
'b9d4183b-a714-3ac3-a701-51c3754d9c1c');
CREATE TABLE "task_manager_module$status_task" (
	"id" BIGINT NOT NULL,
	"reviewer" VARCHAR_IGNORECASE(11) NULL,
	"worker_open" VARCHAR_IGNORECASE(11) NULL,
	"worker_progress" VARCHAR_IGNORECASE(11) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('179b655d-54df-4a5b-9462-55f329ebc2c6', 
'Task_Manager_Module.Status_Task', 
'task_manager_module$status_task', 
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
 VALUES ('aa2c74e3-183e-4273-8922-f4ac7408be4b', 
'179b655d-54df-4a5b-9462-55f329ebc2c6', 
'Reviewer', 
'reviewer', 
40, 
11, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('b06588bb-49f6-46c7-8d73-d74db21bcf25', 
'179b655d-54df-4a5b-9462-55f329ebc2c6', 
'Worker_Open', 
'worker_open', 
40, 
11, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('0d8bee69-b230-445b-b8cc-f9af11ca0bdb', 
'179b655d-54df-4a5b-9462-55f329ebc2c6', 
'Worker_Progress', 
'worker_progress', 
40, 
11, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220320 22:01:08';
