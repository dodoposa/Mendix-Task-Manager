ALTER TABLE "task_manager_module$current_user" RENAME TO "15dad59e703e4b189957bb6489e3c87d";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = 'bcbd422c-712d-443b-bc62-6fe377a79d57';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = 'bcbd422c-712d-443b-bc62-6fe377a79d57';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = 'bcbd422c-712d-443b-bc62-6fe377a79d57');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = 'bcbd422c-712d-443b-bc62-6fe377a79d57';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = 'bcbd422c-712d-443b-bc62-6fe377a79d57';
DROP TABLE "15dad59e703e4b189957bb6489e3c87d";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220320 23:37:14';
