# Guía de Archivos SQL — Sistema de RH

Este documento explica la organización de los archivos SQL para el despliegue del sistema en nuevas empresas.

## 🚀 Archivos Principales (Usar para nuevas instalaciones)

1.  **[schema.sql](file:///c:/Users/Kitus100/Desktop/Lobmaq/rh-system/proyecto%20empresas/schema.sql)**: 
    *   **EL SCRIPT MAESTRO**. Contiene la estructura completa, lógica de vacaciones, horas extra, catálogos iniciales y políticas de seguridad (RLS). 
    *   **Instrucción**: Ejecutar este archivo es suficiente para tener el sistema funcionando al 100%.

2.  **[SCRIPTS_NUEVA_EMPRESA.sql](file:///c:/Users/Kitus100/Desktop/Lobmaq/rh-system/proyecto%20empresas/SCRIPTS_NUEVA_EMPRESA.sql)**: 
    *   Guía rápida de referencia que apunta al uso de `schema.sql`.

---

## 📂 Archivos Históricos (Guardados por seguridad)

Estos archivos ya están integrados en el `schema.sql` maestro. Se conservan en la carpeta `historico_sql/` solo para referencia o auditoría:

| Archivo | Propósito Original |
| :--- | :--- |
| `CREATE_TABLE_PERFILES.sql` | Estructura base de perfiles de usuario. |
| `SQL_ADD_LIMITE_FALTA.sql` | Configuración de tolerancia para faltas. |
| `SQL_CHECADOR_FASE_2.sql` | Módulo avanzado del checador (Turnos, Salidas). |
| `SQL_FESTIVOS.sql` | Tabla y catálogo de días festivos. |
| `SQL_FIX_PERMISOS.sql` | Correcciones en políticas de acceso (RLS). |
| `SQL_FIX_RETORNOS.sql` | Ajuste en lógica de retorno de checadas. |
| `SQL_FIX_TOLERANCIA_PERMISOS.sql` | Ajustes finos en tiempos de tolerancia. |
| `UPDATE_SCHEMA_ES_JEFE.sql` | Campo para identificar roles de jefatura. |
| `lft_helpers.sql` | Funciones de apoyo para la Ley Federal del Trabajo. |
| `seeds.sql` | Datos iniciales generales. |
| `seeds_roles.sql` | Catálogo de roles del sistema. |

---

> [!IMPORTANT]
> **Para cualquier empresa nueva, solo copia y pega el contenido de `schema.sql` en el SQL Editor de Supabase.**
