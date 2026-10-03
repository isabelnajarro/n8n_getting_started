-- Añadir la columna email si todavía no existe
ALTER TABLE employees
ADD COLUMN IF NOT EXISTS email TEXT;

-- Evitar que haya dos empleados con el mismo email
CREATE UNIQUE INDEX IF NOT EXISTS idx_employees_email_unique
ON employees (LOWER(email));

-- Asignar datos para la demo
UPDATE employees
SET
    email = 'isanajarro009@gmail.com',
    role = 'Python Developer',
    current_project = 'Proyecto Atlas',
    availability = 'busy'
WHERE employee_id = 'E001';

-- Carlos: mismo perfil que Ana y mismo proyecto
UPDATE employees
SET
    email = 'carlos.martin@empresa-demo.com',
    role = 'Python Developer',
    current_project = 'Proyecto Atlas',
    availability = 'busy'
WHERE employee_id = 'E002';

-- Laura: otro perfil, mismo proyecto
UPDATE employees
SET
    email = 'laura.garcia@empresa-demo.com',
    role = 'Data Engineer',
    current_project = 'Proyecto Atlas',
    availability = 'busy'
WHERE employee_id = 'E003';

-- Javier: otro perfil, mismo proyecto
UPDATE employees
SET
    email = 'javier.ruiz@empresa-demo.com',
    role = 'Project Manager',
    current_project = 'Proyecto Atlas',
    availability = 'busy'
WHERE employee_id = 'E004';

-- Resto de empleados
UPDATE employees SET email = 'maria.sanchez@empresa-demo.com'
WHERE employee_id = 'E005';

UPDATE employees SET email = 'david.fernandez@empresa-demo.com'
WHERE employee_id = 'E006';

UPDATE employees SET email = 'elena.torres@empresa-demo.com'
WHERE employee_id = 'E007';

UPDATE employees SET email = 'pablo.moreno@empresa-demo.com'
WHERE employee_id = 'E008';

UPDATE employees SET email = 'lucia.navarro@empresa-demo.com'
WHERE employee_id = 'E009';

UPDATE employees SET email = 'sergio.diaz@empresa-demo.com'
WHERE employee_id = 'E010';

UPDATE employees SET email = 'marta.jimenez@empresa-demo.com'
WHERE employee_id = 'E011';

UPDATE employees SET email = 'alberto.romero@empresa-demo.com'
WHERE employee_id = 'E012';

UPDATE employees SET email = 'nuria.castro@empresa-demo.com'
WHERE employee_id = 'E013';

UPDATE employees SET email = 'diego.ortega@empresa-demo.com'
WHERE employee_id = 'E014';

UPDATE employees SET email = 'paula.vidal@empresa-demo.com'
WHERE employee_id = 'E015';

-- Comprobar el resultado final
SELECT
    employee_id,
    name,
    email,
    role,
    skills,
    years_experience,
    availability_date,
    availability_status,
    availability,
    location,
    current_project
FROM employees
ORDER BY employee_id;