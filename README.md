#  Metro de Lima App (SwiftUI)

Aplicación nativa en Swift/SwiftUI para consultar rutas, tiempos estimados, tarifas y visualizar el mapa interactivo del Metro de Lima.

## Requerimientos Funcionales

| ID | Requerimiento | Descripción |
| :--- | :--- | :--- |
| **RF-01** | Selección de Estaciones | El usuario puede seleccionar una estación de origen y una de destino mediante menús desplegables (`Picker`). |
| **RF-02** | Consulta vía Diccionario | Los datos de las estaciones se almacenan y consultan desde una estructura de **Diccionario (`[String: Station]`)**. |
| **RF-03** | Cálculo de Tiempo | La app calcula el tiempo estimado de viaje en minutos según el recorrido entre estaciones. |
| **RF-04** | Verificación de Trasbordo | Se detecta automáticamente si el viaje requiere cambio entre la Línea 1 y la Línea 2. |
| **RF-05** | Cálculo de Tarifa | Se calcula el precio del pasaje diferenciando entre tarifa general (S/ 1.50) y tarifa preferencial/estudiante (S/ 0.75). |
| **RF-06** | Validación de Entradas | Se valida que el origen y destino no sean la misma estación. |
| **RF-07** | Visualización del Mapa | Renderizado del mapa SVG oficial del Metro de Lima mediante `WebKit`. |
| **RF-08** | Inversión de Trayecto | Botón dinámico para intercambiar la estación de origen y destino de forma instantánea. |
| **RF-09** | Distinción por Colores | Identificación visual con colores institucionales según la línea correspondiente (Verde para Línea 1 y Rojo para Línea 2). |

---

## Requerimientos No Funcionales

* **Lenguaje:** Swift 5.
* **Framework:** SwiftUI & WebKit (`UIViewRepresentable`).
* **Arquitectura:** Código unificado y limpio en una sola vista funcional (`ContentView.swift`).
* **Compatibilidad:** iOS 16.0 o superior.

---

## Funciones Implementadas (`ContentView.swift`)

1. **`calcularTiempo(origen:destino:) -> Int`**: Determina el tiempo total del recorrido en minutos.
2. **`obtenerMensajeLinea(origen:destino:) -> String`**: Retorna el tramo a recorrer o la indicación si requiere trasbordo.
3. **`calcularTarifa(esEstudiante:) -> String`**: Retorna el costo del pasaje según el tipo de tarifa.
4. **`esMismaEstacion(origen:destino:) -> Bool`**: Valida que no se seleccione la misma estación de origen y destino.
5. **`colorParaLinea(_:) -> Color`**: Asigna dinámicamente un color a la interfaz según la línea de la estación.
6. **`makeUIView(context:)` / `updateUIView(_:context:)`**: Métodos delegados para inicializar y cargar la vista web del mapa SVG.

---
