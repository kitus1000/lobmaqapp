-- =========================================================================
-- GUÍA DE INSTALACIÓN — SISTEMA DE RH (EL EXPEDIENTE / LOBMAQ)
-- =========================================================================
-- Versión: 2.0 (Consolidado)
-- Fecha: 2026-04-10
--
-- DESCRIPCIÓN:
-- Este archivo es la guía maestra para desplegar el sistema en una nueva
-- empresa/instancia de Supabase.
--
-- INSTRUCCIONES:
-- 1. Abra el archivo 'schema.sql' ubicado en esta misma carpeta.
-- 2. Copie TODO el contenido de 'schema.sql'.
-- 3. Entre al Dashboard de Supabase -> SQL Editor -> New Query.
-- 4. Pegue el código y presione 'Run'.
--
-- ¿QUÉ INCLUYE EL SCRIPT MAESTRO?
-- - Estructura completa de tablas (Perfiles, Empleados, Turnos, Checadas, etc.)
-- - Lógica de Vacaciones automática según LFT (Triggers y Funciones).
-- - Lógica de Horas Extra automática (Dobles y Triples).
-- - Catálogos iniciales (Roles, Causas de Baja, Tipos de Incidencia).
-- - Políticas de Seguridad RLS para todos los módulos.
-- =========================================================================

-- NOTA: Si experimentas errores de "Schema Cache" en la interfaz después de
-- ejecutar el script, simplemente recarga la página de tu navegador.

SELECT 'INSTALACIÓN LISTA. USE schema.sql PARA DESPLEGAR.' as status;
