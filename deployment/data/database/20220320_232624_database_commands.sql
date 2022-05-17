ALTER TABLE "task_manager_module$status_task" RENAME TO "94e3f262f87d41099bc387d08f30ea57";
ALTER TABLE "task_manager_module$task_status_task" DROP CONSTRAINT "uniq_task_manager_module$task_status_task_task_manager_module$taskid";
DROP INDEX "idx_task_manager_module$task_status_task_task_manager_module$status_task_task_manager_module$task";
ALTER TABLE "task_manager_module$task_status_task" RENAME TO "89176a4b792a42859c459097fcafe1f3";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '179b655d-54df-4a5b-9462-55f329ebc2c6';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '179b655d-54df-4a5b-9462-55f329ebc2c6';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '179b655d-54df-4a5b-9462-55f329ebc2c6');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '179b655d-54df-4a5b-9462-55f329ebc2c6';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '179b655d-54df-4a5b-9462-55f329ebc2c6';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'f3d9d4fe-3ae8-40f7-9a3b-53fcf913610b', 
"attribute_name" = 'Status', 
"column_name" = 'status', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '033661e4-2c85-4718-a935-3008dce610f4';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '4b24e1a8-14ca-4e63-9d0d-a204f426c524';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_task_manager_module$task_status_task_task_manager_module$taskid' AND "column_id" = 'b9d4183b-a714-3ac3-a701-51c3754d9c1c';
DROP TABLE "94e3f262f87d41099bc387d08f30ea57";
DROP TABLE "89176a4b792a42859c459097fcafe1f3";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220320 23:26:24';
