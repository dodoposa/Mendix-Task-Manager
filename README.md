# Mendix-Task-Manager

Ability to open a new tasks with name and description
zssign a task to a specific user
Ability to comment on a task and provide additional information
Track/change task status with following workflow: OPEN -> IN PROGRESS <-> IN REVIEW -> DONE
Two roles for users are available: Worker and Reviewer
Workers can move tasks to IN PROGRESS (from OPEN) and to IN REVIEW (from IN PROGRESS). Workers cannot move tasks to DONE. Workers can open new tasks.
Reviewers cannot open new tasks or move them to IN PROGRESS or to IN REVIEW. However, they can move tasks from IN REVIEW to DONE or from IN REVIEW back to IN PROGRESS.
Users should see an overview table of all tasks assigned to them including their current status.
