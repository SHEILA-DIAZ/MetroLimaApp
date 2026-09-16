
// ===============================================================
// SISTEMA INTEGRADO DE TRANSPORTE - LIMA
// JUEGOS PANAMERICANOS
//
// Estudiante: Sheila Diaz Rojas
// Asignatura: Desarrollo Móvil Avanzado
// Plataforma: Swift - Terminal
// ===============================================================

import Foundation

// ===============================================================
// 1. MODELO DE DATOS
// ===============================================================

struct Station: Hashable {
    let name: String
    let line: String
    let index: Int
    let hasElevator: Bool
    let nearbyRoads: [String]
    let connections: [String]
    let panamericanVenue: String?
}

// ===============================================================
// 2. LÍNEA 1
// ===============================================================

let linea1Stations: [Station] = [

    Station(
        name: "Bayóvar",
        line: "Línea 1",
        index: 1,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Santa Rosa",
        line: "Línea 1",
        index: 2,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "San Martín",
        line: "Línea 1",
        index: 3,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "San Carlos",
        line: "Línea 1",
        index: 4,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Los Postes",
        line: "Línea 1",
        index: 5,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Los Jardines",
        line: "Línea 1",
        index: 6,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Pirámide del Sol",
        line: "Línea 1",
        index: 7,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Caja de Agua",
        line: "Línea 1",
        index: 8,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Presbítero Maestro",
        line: "Línea 1",
        index: 9,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "El Ángel",
        line: "Línea 1",
        index: 10,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Grau",
        line: "Línea 1",
        index: 11,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Gamarra",
        line: "Línea 1",
        index: 12,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Arriola",
        line: "Línea 1",
        index: 13,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "La Cultura",
        line: "Línea 1",
        index: 14,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: "VIDENA - Villa Deportiva Nacional"
    ),

    Station(
        name: "San Borja Sur",
        line: "Línea 1",
        index: 15,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Angamos",
        line: "Línea 1",
        index: 16,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: "Sede Panamericana cercana"
    ),

    Station(
        name: "Cabitos",
        line: "Línea 1",
        index: 17,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Ayacucho",
        line: "Línea 1",
        index: 18,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Jorge Chávez",
        line: "Línea 1",
        index: 19,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Atocongo",
        line: "Línea 1",
        index: 20,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "San Juan",
        line: "Línea 1",
        index: 21,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "María Auxiliadora",
        line: "Línea 1",
        index: 22,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Villa María",
        line: "Línea 1",
        index: 23,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: "Sede Panamericana cercana"
    ),

    Station(
        name: "Pumacahua",
        line: "Línea 1",
        index: 24,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Parque Industrial",
        line: "Línea 1",
        index: 25,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: "Sede Panamericana cercana"
    ),

    Station(
        name: "Villa El Salvador",
        line: "Línea 1",
        index: 26,
        hasElevator: true,
        nearbyRoads: [],
        connections: [],
        panamericanVenue: "Polideportivo Villa El Salvador"
    )
]

// ===============================================================
// 3. LÍNEA 2
// ===============================================================

let linea2Stations: [Station] = [

    Station(
        name: "Evitamiento",
        line: "Línea 2",
        index: 1,
        hasElevator: true,
        nearbyRoads: [
            "Vía de Evitamiento",
            "Av. Nicolás Ayllón"
        ],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Óvalo Santa Anita",
        line: "Línea 2",
        index: 2,
        hasElevator: true,
        nearbyRoads: [
            "Carretera Central",
            "Av. La Molina"
        ],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Colectora Industrial",
        line: "Línea 2",
        index: 3,
        hasElevator: true,
        nearbyRoads: [
            "Carretera Central",
            "Av. Colectora Industrial"
        ],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Hermilio Valdizán",
        line: "Línea 2",
        index: 4,
        hasElevator: true,
        nearbyRoads: [
            "Carretera Central"
        ],
        connections: [],
        panamericanVenue: nil
    ),

    Station(
        name: "Mercado Santa Anita",
        line: "Línea 2",
        index: 5,
        hasElevator: true,
        nearbyRoads: [
            "Carretera Central",
            "Av. 22 de Julio"
        ],
        connections: [],
        panamericanVenue: nil
    )
]

// ===============================================================
// 4. METROPOLITANO
// ===============================================================

let metropolitanoStations: [Station] = [

    Station(
        name: "Estadio Nacional",
        line: "Metropolitano",
        index: 1,
        hasElevator: true,
        nearbyRoads: [
            "Av. Paseo de la República"
        ],
        connections: [
            "Ruta A",
            "Ruta C"
        ],
        panamericanVenue: "Estadio Nacional"
    ),

    Station(
        name: "Central",
        line: "Metropolitano",
        index: 2,
        hasElevator: true,
        nearbyRoads: [
            "Av. Garcilaso de la Vega"
        ],
        connections: [
            "Conexión con Línea 2"
        ],
        panamericanVenue: nil
    )
]

// ===============================================================
// 5. DATOS GENERALES
// ===============================================================

let allStations =
    linea1Stations +
    linea2Stations +
    metropolitanoStations

let metroDictionary: [String: Station] =
    Dictionary(
        uniqueKeysWithValues: allStations.map {
            ($0.name, $0)
        }
    )

let linesDictionary: [String: [String]] = [
    "Línea 1": linea1Stations.map { $0.name },
    "Línea 2": linea2Stations.map { $0.name },
    "Metropolitano": metropolitanoStations.map { $0.name }
]

// ===============================================================
// 6. FUNCIONES AUXILIARES
// ===============================================================

func separador() {
    print(String(repeating: "=", count: 65))
}

func pausa() {
    print("")
    print("Presione ENTER para continuar...")
    _ = readLine()
}

func normalizarTexto(_ texto: String) -> String {
    texto
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .folding(
            options: .diacriticInsensitive,
            locale: .current
        )
        .lowercased()
        .replacingOccurrences(
            of: #"\s+"#,
            with: " ",
            options: .regularExpression
        )
}

// ===============================================================
// 7. BÚSQUEDA DE ESTACIÓN
// ===============================================================

func buscarEstacion(_ entrada: String) -> Station? {

    let limpio = normalizarTexto(entrada)

    if limpio.isEmpty {
        return nil
    }

    // Coincidencia exacta
    if let estacion = allStations.first(
        where: {
            normalizarTexto($0.name) == limpio
        }
    ) {
        return estacion
    }

    // Alias
    let alias: [String: String] = [

        "bayovar": "Bayóvar",

        "linea 1": "Línea 1",
        "l1": "Línea 1",
        "linea uno": "Línea 1",

        "linea 2": "Línea 2",
        "l2": "Línea 2",
        "linea dos": "Línea 2",

        "miguel grau": "Grau",
        "nicolas arriola": "Arriola",

        "postes": "Los Postes",
        "los postes": "Los Postes",

        "salvador": "Villa El Salvador",
        "villa salvador": "Villa El Salvador",
        "villa el salvador": "Villa El Salvador",

        "cultura": "La Cultura",

        "ovalo santa anita": "Óvalo Santa Anita",

        "hermilio valdizan": "Hermilio Valdizán",

        "mercado santa anita": "Mercado Santa Anita",

        "estadio": "Estadio Nacional"
    ]

    if let nombreReal = alias[limpio] {
        return metroDictionary[nombreReal]
    }

    // Coincidencia parcial
    if let estacion = allStations.first(
        where: {
            normalizarTexto($0.name).contains(limpio)
        }
    ) {
        return estacion
    }

    return nil
}

// ===============================================================
// 8. BÚSQUEDA DE LÍNEA
// ===============================================================

func buscarLinea(_ entrada: String) -> String? {

    let limpio = normalizarTexto(entrada)

    let aliasLineas: [String: String] = [

        "1": "Línea 1",
        "l1": "Línea 1",
        "linea 1": "Línea 1",
        "linea uno": "Línea 1",

        "2": "Línea 2",
        "l2": "Línea 2",
        "linea 2": "Línea 2",
        "linea dos": "Línea 2",

        "metro": "Metropolitano",
        "metropolitano": "Metropolitano"
    ]

    if let linea = aliasLineas[limpio] {
        return linea
    }

    for linea in linesDictionary.keys {

        if normalizarTexto(linea) == limpio {
            return linea
        }
    }

    return nil
}

// ===============================================================
// 9. CONSULTAR LÍNEA
// ===============================================================

func consultarLinea(nombreLinea: String) {

    guard
        let linea = buscarLinea(nombreLinea),
        let estaciones = linesDictionary[linea]
    else {

        print("")
        print("❌ La línea '\(nombreLinea)' no fue encontrada.")
        print("")
        print("Opciones válidas:")
        print("1 - Línea 1")
        print("2 - Línea 2")
        print("M - Metropolitano")
        return
    }

    print("")
    separador()
    print("🚆 ESTACIONES DE \(linea.uppercased())")
    separador()

    for (index, estacion) in estaciones.enumerated() {

        print(
            String(
                format: "%2d. %@",
                index + 1,
                estacion
            )
        )
    }

    separador()
}

// ===============================================================
// 10. DETALLE DE ESTACIÓN
// ===============================================================

func verDetalleEstacion(nombreIngresado: String) {

    guard let estacion = buscarEstacion(nombreIngresado) else {

        print("")
        print(
            "❌ No se encontró la estación '\(nombreIngresado)'."
        )

        print("")
        print("Ejemplos:")
        print("• Los Postes")
        print("• Villa El Salvador")
        print("• Gamarra")
        print("• La Cultura")
        print("• Angamos")
        print("• Óvalo Santa Anita")
        print("• Mercado Santa Anita")

        return
    }

    print("")
    separador()
    print("📍 FICHA DE ESTACIÓN")
    separador()

    print("🚉 Estación: \(estacion.name)")
    print("🚇 Línea: \(estacion.line)")
    print("🔢 Posición: \(estacion.index)")

    print(
        "♿ Ascensores: " +
        (estacion.hasElevator ? "Sí ✅" : "No ❌")
    )

    if estacion.nearbyRoads.isEmpty {

        print("🛣️ Vías cercanas: No registradas")

    } else {

        print(
            "🛣️ Vías cercanas: " +
            estacion.nearbyRoads.joined(
                separator: ", "
            )
        )
    }

    if estacion.connections.isEmpty {

        print("🔄 Conexiones: No registradas")

    } else {

        print(
            "🔄 Conexiones: " +
            estacion.connections.joined(
                separator: ", "
            )
        )
    }

    if let recinto = estacion.panamericanVenue {

        print("🏆 Sede Panamericana: \(recinto)")

    } else {

        print("🏆 Sede Panamericana: No registrada")
    }

    separador()
}

// ===============================================================
// 11. OBTENER RUTA
// ===============================================================

func obtenerRuta(
    origen: Station,
    destino: Station
) -> [String] {

    guard origen.line == destino.line else {
        return []
    }

    guard let estaciones = linesDictionary[origen.line] else {
        return []
    }

    let inicio = min(
        origen.index,
        destino.index
    )

    let fin = max(
        origen.index,
        destino.index
    )

    let ruta = Array(
        estaciones[(inicio - 1)...(fin - 1)]
    )

    if origen.index <= destino.index {
        return ruta
    }

    return Array(ruta.reversed())
}

// ===============================================================
// 12. CALCULAR ESTACIONES
// ===============================================================

func calcularEstaciones(
    origen: Station,
    destino: Station
) -> Int {

    abs(
        origen.index -
        destino.index
    )
}

// ===============================================================
// 13. CALCULAR TIEMPO
// ===============================================================

func calcularTiempo(
    origen: Station,
    destino: Station
) -> Int {

    if origen.line == destino.line {

        let estaciones = calcularEstaciones(
            origen: origen,
            destino: destino
        )

        // Estimación académica:
        // 2 minutos por estación.

        return estaciones * 2

    } else {

        // Tiempo estimado incluyendo transbordo.

        return 25
    }
}

// ===============================================================
// 14. TARIFA
// ===============================================================

func calcularTarifa(
    esEstudiante: Bool
) -> String {

    if esEstudiante {

        return "S/ 0.75 - Tarifa estudiantil"

    } else {

        return "S/ 1.50 - Tarifa general"
    }
}

// ===============================================================
// 15. PLANIFICADOR DE VIAJE
// ===============================================================

func planificarViaje() {

    print("")
    separador()
    print("🚆 PLANIFICADOR DE VIAJE")
    separador()

    print(
        "Ingrese estación de ORIGEN: ",
        terminator: ""
    )

    let origenInput = readLine() ?? ""

    print(
        "Ingrese estación de DESTINO: ",
        terminator: ""
    )

    let destinoInput = readLine() ?? ""

    if normalizarTexto(origenInput).isEmpty ||
       normalizarTexto(destinoInput).isEmpty {

        print("")
        print("❌ Debe ingresar origen y destino.")
        return
    }

    guard let origen = buscarEstacion(
        origenInput
    ) else {

        print("")
        print(
            "❌ No se encontró el origen: \(origenInput)"
        )

        return
    }

    guard let destino = buscarEstacion(
        destinoInput
    ) else {

        print("")
        print(
            "❌ No se encontró el destino: \(destinoInput)"
        )

        return
    }

    if origen.name == destino.name {

        print("")
        print(
            "⚠️ El origen y destino son la misma estación."
        )

        return
    }

    print("")
    print(
        "¿Aplica tarifa estudiantil? (s/n): ",
        terminator: ""
    )

    let respuesta = normalizarTexto(
        readLine() ?? ""
    )

    let esEstudiante =
        respuesta == "s" ||
        respuesta == "si"

    let tiempo = calcularTiempo(
        origen: origen,
        destino: destino
    )

    let tarifa = calcularTarifa(
        esEstudiante: esEstudiante
    )

    print("")
    separador()
    print("📋 RESUMEN DEL VIAJE")
    separador()

    print("📍 Origen: \(origen.name)")
    print("🎯 Destino: \(destino.name)")
    print("🚇 Línea origen: \(origen.line)")
    print("🚇 Línea destino: \(destino.line)")

    if origen.line == destino.line {

        let estaciones = calcularEstaciones(
            origen: origen,
            destino: destino
        )

        let ruta = obtenerRuta(
            origen: origen,
            destino: destino
        )

        print("")
        print(
            "🚉 Estaciones entre origen y destino: \(estaciones)"
        )

        print(
            "⏱️ Tiempo estimado: ~\(tiempo) minutos"
        )

        print("")
        print("🗺️ RUTA:")

        print(
            ruta.joined(
                separator: " → "
            )
        )

    } else {

        print("")
        print("🔄 Tipo: Requiere transbordo")

        print(
            "⏱️ Tiempo estimado: ~\(tiempo) minutos"
        )

        print("")
        print(
            "ℹ️ Las estaciones pertenecen a líneas diferentes."
        )

        print(
            "ℹ️ El sistema muestra una estimación académica."
        )
    }

    print("")
    print("💳 Tarifa: \(tarifa)")

    separador()
}

// ===============================================================
// 16. MOSTRAR ESTACIONES
// ===============================================================

func mostrarEstacionesDisponibles() {

    print("")
    separador()
    print("📍 ESTACIONES DISPONIBLES")
    separador()

    for linea in [
        "Línea 1",
        "Línea 2",
        "Metropolitano"
    ] {

        print("")
        print("🚇 \(linea):")

        if let estaciones =
            linesDictionary[linea] {

            print(
                estaciones.joined(
                    separator: " • "
                )
            )
        }
    }

    print("")
    separador()
}

// ===============================================================
// 17. MOSTRAR SEDES PANAMERICANAS
// ===============================================================

func mostrarSedesPanamericanas() {

    print("")
    separador()
    print("🏆 SEDES PANAMERICANAS")
    separador()

    let estacionesConSede =
        allStations.filter {
            $0.panamericanVenue != nil
        }

    if estacionesConSede.isEmpty {

        print("No existen sedes registradas.")

    } else {

        for estacion in estacionesConSede {

            if let sede =
                estacion.panamericanVenue {

                print("")
                print("🏆 \(sede)")
                print("   🚉 Estación: \(estacion.name)")
                print("   🚇 Línea: \(estacion.line)")
            }
        }
    }

    print("")
    separador()
}

// ===============================================================
// 18. BUSCADOR DE ESTACIÓN
// ===============================================================

func buscarEstacionInteractivo() {

    print("")
    separador()
    print("🔎 BUSCAR ESTACIÓN")
    separador()

    print(
        "Ingrese nombre o parte del nombre: ",
        terminator: ""
    )

    let entrada = readLine() ?? ""

    guard let estacion =
        buscarEstacion(entrada) else {

        print("")
        print(
            "❌ No se encontró ninguna estación."
        )

        return
    }

    verDetalleEstacion(
        nombreIngresado: estacion.name
    )
}

// ===============================================================
// 19. INFORMACIÓN DEL SISTEMA
// ===============================================================

func mostrarInformacionSistema() {

    print("")
    separador()
    print("ℹ️ INFORMACIÓN DEL SISTEMA")
    separador()

    print("")
    print("👩‍💻 Estudiante: Sheila Diaz Rojas")
    print("📚 Curso: Desarrollo Móvil Avanzado")
    print("🇵🇪 Sistema: Transporte Integrado de Lima")

    print("")
    print("🚆 Línea 1: \(linea1Stations.count) estaciones")
    print("🚆 Línea 2: \(linea2Stations.count) estaciones")
    print(
        "🚌 Metropolitano: \(metropolitanoStations.count) estaciones"
    )

    print("")
    print(
        "📊 Total registrado: \(allStations.count) estaciones"
    )

    print("")
    print("⚠️ Nota:")
    print(
        "Los tiempos y tarifas utilizados por el programa"
    )
    print(
        "son datos académicos configurados para el proyecto."
    )

    separador()
}

// ===============================================================
// 20. MAPA
// ===============================================================

func mostrarMapa() {

    print("")
    separador()
    print("🗺️ MAPA DEL METRO DE LIMA")
    separador()

    print("")
    print(
        "https://upload.wikimedia.org/wikipedia/commons/0/05/Lima_Metro_Map.svg"
    )

    print("")
    print(
        "💡 Copie el enlace y ábralo en su navegador."
    )

    separador()
}

// ===============================================================
// 21. MENÚ PRINCIPAL
// ===============================================================

var ejecutando = true

print("")
separador()

print("🥇 SISTEMA INTEGRADO DE TRANSPORTE - LIMA 🥈")

separador()

print("🚆 Metro de Lima - Línea 1")
print("🚆 Metro de Lima - Línea 2")
print("🚌 Metropolitano")
print("🏆 Juegos Panamericanos")

separador()

while ejecutando {

    print("")
    print("📌 MENÚ PRINCIPAL")
    print("")

    print("1. 🚆 Ver estaciones por línea")
    print("2. 📍 Buscar detalle de estación")
    print("3. 🧭 Planificar viaje")
    print("4. 📋 Ver estaciones disponibles")
    print("5. 🏆 Ver sedes Panamericanas")
    print("6. 🔎 Buscar estación")
    print("7. 🗺️ Ver enlace del mapa")
    print("8. ℹ️ Información del sistema")
    print("9. 🚪 Salir")

    print("")

    print(
        "Seleccione una opción (1-9): ",
        terminator: ""
    )

    let opcion =
        normalizarTexto(
            readLine() ?? ""
        )

    switch opcion {

    case "1":

        print("")
        print(
            "Ingrese línea (1, 2 o Metropolitano): ",
            terminator: ""
        )

        let linea =
            readLine() ?? ""

        consultarLinea(
            nombreLinea: linea
        )

        pausa()

    case "2":

        mostrarEstacionesDisponibles()

        print("")
        print(
            "Ingrese el nombre de la estación: ",
            terminator: ""
        )

        let estacion =
            readLine() ?? ""

        verDetalleEstacion(
            nombreIngresado: estacion
        )

        pausa()

    case "3":

        planificarViaje()
        pausa()

    case "4":

        mostrarEstacionesDisponibles()
        pausa()

    case "5":

        mostrarSedesPanamericanas()
        pausa()

    case "6":

        buscarEstacionInteractivo()
        pausa()

    case "7":

        mostrarMapa()
        pausa()

    case "8":

        mostrarInformacionSistema()
        pausa()

    case "9":

        print("")
        separador()

        print(
            "👋 ¡Gracias por utilizar el sistema!"
        )

        print(
            "🇵🇪 Transporte Integrado de Lima"
        )

        separador()

        ejecutando = false

    default:

        print("")
        print("❌ Opción no válida.")
        print("👉 Ingrese un número del 1 al 9.")
    }
}
