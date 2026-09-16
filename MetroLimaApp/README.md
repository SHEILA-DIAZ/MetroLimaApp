# 🚆 Sistema Integrado de Transporte Lima - Juegos Panamericanos

![Swift](https://img.shields.io/badge/Swift-5.0+-orange.svg?style=flat&logo=swift)
![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-lightgrey.svg)
![Environment](https://img.shields.io/badge/Environment-Console%20%2F%20Terminal-blue.svg)

**Autora:** Sheila Diaz Rojas  
**Asignatura:** Desarrollo Móvil Avanzado  
**Lenguaje:** Swift 5+  
**Entorno de Ejecución:** Terminal / Consola  

---

## 📌 Descripción del Proyecto
Aplicación desarrollada en **Swift puro** para la gestión y consulta del Sistema Integrado de Transporte de Lima (Línea 1, Línea 2 y Metropolitano). El sistema está diseñado para facilitar la movilidad de usuarios y asistentes a los **Juegos Panamericanos**, proporcionando información sobre rutas, tiempos, tarifas, accesibilidad y recintos deportivos cercanos.

---

## 🚀 Requerimientos y Características

* **Estructura de Datos Avanzada:** Uso de `struct` y `[String: Station]` (Diccionarios) como estructura base para el almacenamiento optimizado.
* **Búsqueda Flexible e Insensible:** Algoritmo de normalización de texto `.folding(options: .diacriticInsensitive)` que permite buscar estaciones sin importar mayúsculas, minúsculas, tildes o búsquedas parciales (ej. *'el salvador'*, *'EL SALVADOR'*, *'salvador'*).
* **Ficha Técnica de Accesibilidad:** Consulta detallada sobre la presencia de ascensores y vías de acceso adaptadas en cada estación.
* **Módulo Panamericano:** Identificación de recintos deportivos vinculados a la red de transporte (Videna, Polideportivo Villa El Salvador, Estadio Nacional, etc.).
* **Planificador de Viajes:** Cálculo automático de tiempos estimados de recorrido y tarifas diferenciadas (General vs. Preferencial / Estudiantil).
* **Validaciones de Seguridad:** Prevención de errores en caso de origen/destino idénticos o entradas no registradas.

---

## 🛠️ Menú de Funcionalidades

El programa interactivo en consola cuenta con las siguientes opciones:

1. **Listar Líneas y Estaciones:** Consulta general de la red del sistema de transporte.
2. **Buscar Estación:** Búsqueda flexible por nombre o coincidencia parcial.
3. **Planificar Viaje:** Cálculo de ruta, tiempo estimado y desglose de tarifas.
4. **Consultar Accesibilidad:** Ficha técnica de rampas y ascensores por estación.
5. **Estaciones Cercanas a Sedes Panamericanas:** Mapeo de transporte hacia sedes deportivas.
6. **Salir:** Finalizar la ejecución del programa.

---

## 💻 Instrucciones de Ejecución

### Opción 1: Ejecutar desde la Terminal (macOS / Linux)

1. Clona el repositorio o descarga el archivo del proyecto:
   ```bash
   git clone [https://github.com/tu-usuario/tu-repositorio.git](https://github.com/tu-usuario/tu-repositorio.git)
   cd tu-repositorio
