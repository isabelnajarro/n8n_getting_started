DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100) NOT NULL,
    skills TEXT[] NOT NULL,
    years_experience INTEGER NOT NULL,
    availability_date DATE NOT NULL,
    availability_status VARCHAR(20) NOT NULL,
    location VARCHAR(100),
    current_project VARCHAR(150)
);

INSERT INTO employees (
    employee_id,
    name,
    role,
    skills,
    years_experience,
    availability_date,
    availability_status,
    location,
    current_project
) VALUES

('E001', 'Ana López', 'Backend Developer',
 ARRAY['Python', 'SQL', 'PostgreSQL', 'APIs', 'Docker'],
 5, '2026-10-01', 'available', 'Madrid', NULL),

('E002', 'Carlos Martín', 'Data Engineer',
 ARRAY['Python', 'SQL', 'AWS', 'Spark', 'ETL'],
 6, '2026-10-01', 'available', 'Barcelona', NULL),

('E003', 'Laura García', 'Frontend Developer',
 ARRAY['React', 'JavaScript', 'TypeScript', 'HTML', 'CSS'],
 4, '2026-10-01', 'available', 'Madrid', NULL),

('E004', 'Javier Ruiz', 'Backend Developer',
 ARRAY['Java', 'Spring', 'SQL', 'Docker', 'Kubernetes'],
 8, '2026-11-01', 'available', 'Valencia', NULL),

('E005', 'María Sánchez', 'Data Analyst',
 ARRAY['Python', 'SQL', 'Power BI', 'Excel', 'Tableau'],
 5, '2026-10-01', 'available', 'Sevilla', NULL),

('E006', 'David Fernández', 'DevOps Engineer',
 ARRAY['AWS', 'Docker', 'Kubernetes', 'Terraform', 'CI/CD'],
 7, '2026-10-15', 'available', 'Madrid', NULL),

('E007', 'Elena Torres', 'Backend Developer',
 ARRAY['Python', 'Django', 'PostgreSQL', 'APIs', 'Docker'],
 3, '2026-10-01', 'available', 'Barcelona', NULL),

('E008', 'Pablo Moreno', 'Software Engineer',
 ARRAY['Python', 'Java', 'SQL', 'APIs', 'AWS'],
 9, '2026-11-15', 'available', 'Madrid', NULL),

('E009', 'Lucía Navarro', 'Data Engineer',
 ARRAY['Python', 'SQL', 'Azure', 'Databricks', 'ETL'],
 4, '2026-10-10', 'available', 'Valencia', NULL),

('E010', 'Sergio Díaz', 'Backend Developer',
 ARRAY['Node.js', 'JavaScript', 'TypeScript', 'MongoDB', 'APIs'],
 5, '2026-10-01', 'available', 'Madrid', NULL),

('E011', 'Marta Jiménez', 'Project Manager',
 ARRAY['Agile', 'Scrum', 'Jira', 'Stakeholder Management', 'Risk Management'],
 8, '2026-10-01', 'available', 'Barcelona', NULL),

('E012', 'Alberto Romero', 'Backend Developer',
 ARRAY['Python', 'FastAPI', 'SQL', 'PostgreSQL', 'AWS'],
 6, '2026-10-20', 'available', 'Madrid', NULL),

('E013', 'Nuria Castro', 'Business Analyst',
 ARRAY['SQL', 'Power BI', 'Excel', 'Requirements', 'Process Management'],
 6, '2026-10-01', 'available', 'Sevilla', NULL),

('E014', 'Diego Ortega', 'Software Engineer',
 ARRAY['Python', 'C++', 'SQL', 'Linux', 'Docker'],
 10, '2026-12-01', 'available', 'Madrid', NULL),

('E015', 'Paula Vidal', 'Backend Developer',
 ARRAY['Python', 'SQL', 'PostgreSQL', 'APIs', 'Azure'],
 4, '2026-10-01', 'available', 'Barcelona', NULL);

UPDATE employees
SET availability_status = 'busy',
    current_project = 'Proyecto Industrial A'
WHERE employee_id IN ('E004', 'E006');

UPDATE employees
SET availability_status = 'available',
    availability_date = '2026-11-15'
WHERE employee_id = 'E008';

UPDATE employees
SET availability_status = 'available',
    availability_date = '2026-12-01'
WHERE employee_id = 'E014';