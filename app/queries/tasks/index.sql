SELECT
  tasks.name,
  projects.name as project
FROM tasks
LEFT JOIN projects ON projects.id = tasks.project_id
ORDER BY tasks.id ASC