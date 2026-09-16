# 🚆 Sistema Integrado de Transporte Lima - Juegos Panamericanos

**Estudiante:** Sheila Diaz Rojas  
**Asignatura:** Desarrollo Móvil Avanzado  
**Lenguaje:** Swift 5+  
**Entorno de Ejecución:** Terminal / Consola  

---

## 📌 Descripción del Proyecto
Aplicación desarrollada en **Swift puro** para la gestión y consulta del Sistema Integrado de Transporte de Lima (Línea 1, Línea 2 y Metropolitano). El sistema está diseñado para facilitar la movilidad de usuarios y asistentes a los **Juegos Panamericanos**, proporcionando información sobre rutas, tiempos, tarifas, accesibilidad y recintos deportivos cercanos.

---

## 🚀 Requerimientos Cumplidos

* **Estructura de Datos Avanzada:** Uso de `struct` y `[String: Station]` (Diccionarios) como estructura base para el almacenamiento optimizado.
* **Búsqueda Flexible e Insensible:** Algoritmo de normalización de texto `.folding(options: .diacriticInsensitive)` que permite buscar estaciones sin importar mayúsculas, minúsculas, tildes o búsquedas parciales (ej. *'el salvador'*, *'EL SALVADOR'*, *'salvador'*).
* **Ficha Técnica de Accesibilidad:** Consulta de presencia de ascensores y vías de acceso cercanas para cada estación.
* **Módulo Panamericano:** Identificación de recintos deportivos vinculados a la red de transporte (Videna, Polideportivo Villa El Salvador, Estadio Nacional, etc.).
* **Planificador de Viajes:** Cálculo automático de tiempos estimados de recorrido y tarifas diferenciadas (General vs. Preferencial / Estudiantil).
* **Validaciones de Seguridad:** Prevención de errores en caso de origen/destino idénticos o entradas no registradas.

---

## 💻 Instrucciones de Ejecución

### Opción 1: Ejecutar desde la Terminal (macOS / Linux)
1. Clona el repositorio o descarga el archivo `SistemaConsola.swift`.
2. Abre la terminal en la carpeta del proyecto.
3. Compila y ejecuta con el siguiente comando:
   ```bash
   swift SistemaConsola.swift
