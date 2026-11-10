SELECT 
    table_name AS tabla_hija,
    column_name AS columna,
    referenced_table_name AS tabla_padre,
    referenced_column_name AS columna_padre,
    constraint_name AS llave_foranea
FROM information_schema.KEY_COLUMN_USAGE
WHERE table_schema = 'lapiz_rojo'
AND referenced_table_name IS NOT NULL
ORDER BY table_name, constraint_name;
