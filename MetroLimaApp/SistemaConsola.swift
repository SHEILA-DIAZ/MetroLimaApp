// ===== SISTEMA INTEGRADO DE TRANSPORTE LIMA - JUEGOS PANAMERICANOS =====
// Estudiante: Sheila Diaz Rojas
// Asignatura: Desarrollo Móvil Avanzado
// Ejecutable completo para Consola / Terminal con validaciones avanzadas

import Foundation

// MARK: - 1. ESTRUCTURAS Y MODELO DE DATOS

struct Station: Hashable {
    let name: String
    let line: String
    let index: Int
    let hasElevator: Bool
    let nearbyRoads: [String]
    let connections: [String]
    let panamericanVenue: String?
}

// MARK: - 2. DICCIONARIOS DE DATOS

let metroDictionary: [String: Station] = [
    "Villa El Salvador": Station(
        name: "Villa El Salvador",
        line: "Línea 1",
        index: 1,
        hasElevator: true,
        nearbyRoads: ["Av. Separadora Industrial", "Av. Jorge Chávez"],
        connections: ["Alimentador Villa El Salvador"],
        panamericanVenue: "Polideportivo Villa El Salvador (Gimnasia / Karate)"
    ),
    "Parque Industrial": Station(
        name: "Parque Industrial",
        line: "Línea 1",
        index: 2,
        hasElevator: false,
        nearbyRoads: ["Av. El Sol", "Av. Mateo Pumacahua"],
        connections: ["Transporte Convencional"],
        panamericanVenue: nil
    ),
    "La Cultura": Station(
        name: "La Cultura",
        line: "Línea 1",
        index: 4,
        hasElevator: true,
        nearbyRoads: ["Av. Javier Prado Este", "Av. Aviación"],
        connections: ["Corredor Rojo"],
        panamericanVenue: "Videna - Villa Deportiva Nacional (Atletismo / Natación)"
    ),
    "Gamarra": Station(
        name: "Gamarra",
        line: "Línea 1",
        index: 5,
        hasElevator: true,
        nearbyRoads: ["Av. Aviación", "Jr. Hipólito Unanue"],
        connections: ["Alimentador Metropolitano"],
        panamericanVenue: "Centro Comercial Gamarra"
    ),
    "Miguel Grau": Station(
        name: "Miguel Grau",
        line: "Línea 1",
        index: 6,
        hasElevator: true,
        nearbyRoads: ["Av. Miguel Grau", "Av. Aviación"],
        connections: ["Conexión Bus Grau a Estación Central"],
        panamericanVenue: nil
    ),
    "Estadio Nacional": Station(
        name: "Estadio Nacional",
        line: "Metropolitano",
        index: 1,
        hasElevator: true,
        nearbyRoads: ["Av. Paseo de la República", "Av. Bauzate y Meza", "Av. Petit Thouars"],
        connections: ["Ruta A", "Ruta C", "Expreso 1"],
        panamericanVenue: "Estadio Nacional (Ceremonia de Apertura / Fútbol)"
    ),
    "Central": Station(
        name: "Central",
        line: "Metropolitano",
        index: 2,
        hasElevator: true,
        nearbyRoads: ["Av. Garcilaso de la Vega", "Av. Bolivia", "Paseo de la República"],
        connections: ["Línea 2 (Estación Subterránea Central)", "Corredor Azul"],
        panamericanVenue: "Centro Histórico / Centro Principal de Prensa"
    ),
    "Evitamiento": Station(
        name: "Evitamiento",
        line: "Línea 2",
        index: 1,
        hasElevator: true,
        nearbyRoads: ["Carretera Central", "Vía de Evitamiento"],
        connections: ["Interconexión Vía Red Santa Anita"],
        panamericanVenue: "Estadio Monumental (Sede Alterna)"
    ),
    "Óvalo Santa Anita": Station(
        name: "Óvalo Santa Anita",
        line: "Línea 2",
        index: 2,
        hasElevator: true,
        nearbyRoads: ["Av. Nicolás Ayllón", "Av. Los Eucaliptos"],
        connections: ["Transporte Convencional"],
        panamericanVenue: nil
    ),
    "Mercado Santa Anita": Station(
        name: "Mercado Santa Anita",
        line: "Línea 2",
        index: 3,
        hasElevator: true,
        nearbyRoads: ["Av. Carretera Central", "Av. Colectora"],
        connections: ["Línea 2 Terminal"],
        panamericanVenue: nil
    )
]

let linesDictionary: [String: [String]] = [
    "Línea 1": ["Villa El Salvador", "Parque Industrial", "La Cultura", "Gamarra", "Miguel Grau"],
    "Línea 2": ["Evitamiento", "Óvalo Santa Anita", "Mercado Santa Anita"],
    "Metropolitano": ["Estadio Nacional", "Central"]
]

// MARK: - 3. FUNCIONES DE LIMPIEZA Y BÚSQUEDA AVANZADA

// Normaliza el texto removiendo espacios extra, tildes y convirtiéndolo a minúsculas
func normalizarTexto(_ texto: String) -> String {
    return texto
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .folding(options: .diacriticInsensitive, locale: .current)
        .lowercased()
}

// Búsqueda permisiva por coincidencias exactas o parciales
func buscarEstacion(_ entrada: String) -> Station? {
    let limpio = normalizarTexto(entrada)
    if limpio.isEmpty { return nil }
    
    // 1. Coincidencia directa
    if let estacionDirecta = metroDictionary.values.first(where: { normalizarTexto($0.name) == limpio }) {
        return estacionDirecta
    }
    
    // 2. Coincidencia parcial (ej. "salvador" encuentra "Villa El Salvador")
    return metroDictionary.values.first { estacion in
        normalizarTexto(estacion.name).contains(limpio)
    }
}

// MARK: - 4. LÓGICA DE NEGOCIO Y CÁLCULOS

func calcularTiempo(origen: Station, destino: Station) -> Int {
    if origen.line == destino.line {
        let estacionesRecorridas = abs(origen.index - destino.index)
        return estacionesRecorridas * 2
    } else {
        return 25 // Estimación con transbordo entre líneas diferentes
    }
}

func obtenerMensajeLinea(origen: Station, destino: Station) -> String {
    if origen.line == destino.line {
        let estaciones = abs(origen.index - destino.index)
        return "\(estaciones) estación(es) recorrida(s) en \(origen.line)"
    } else {
        return "Requiere transbordo intermodal entre \(origen.line) y \(destino.line)"
    }
}

func calcularTarifa(esEstudiante: Bool) -> String {
    return esEstudiante ? "S/ 0.75 (Medio pasaje / Estudiantil)" : "S/ 1.50 (Pasaje general)"
}

func consultarLinea(nombreLinea: String) {
    let limpiaIngresada = normalizarTexto(nombreLinea)
    
    let coincidencia = linesDictionary.first { key, _ in
        let claveLimpia = normalizarTexto(key)
        return claveLimpia == limpiaIngresada || claveLimpia.contains(limpiaIngresada) || limpiaIngresada.contains(claveLimpia)
    }
    
    print("\n-----------------------------------------------------------")
    if let (lineaOficial, estaciones) = coincidencia {
        print("🚆 ESTACIONES PERTENECIENTES A: \(lineaOficial.uppercased())")
        print("-----------------------------------------------------------")
        for (index, est) in estaciones.enumerated() {
            print("\(index + 1). \(est)")
        }
    } else {
        print("❌ La línea '\(nombreLinea)' no se encontró.")
        print("Sugerencias: Use 'Línea 1', 'Línea 2' o 'Metropolitano'.")
    }
}

func verDetalleEstacion(nombreIngresado: String) {
    if let est = buscarEstacion(nombreIngresado) {
        print("\n===========================================================")
        print("📍 FICHA DE ESTACIÓN: \(est.name.uppercased())")
        print("===========================================================")
        print("🚇 Red / Línea: \(est.line)")
        print("♿ Cuenta con ascensores: \(est.hasElevator ? "Sí cuenta con ascensores ✅" : "No cuenta con ascensores ❌")")
        print("🛣️ Vías cercanas: \(est.nearbyRoads.joined(separator: ", "))")
        print("🔄 Conexiones intermodales: \(est.connections.joined(separator: " | "))")
        
        if let recinto = est.panamericanVenue {
            print("🏆 Recinto Panamericano cercano: \(recinto)")
        } else {
            print("🏆 Recinto Panamericano cercano: Ninguno registrado")
        }
    } else {
        print("❌ No se encontró la estación '\(nombreIngresado)'. Verifique el nombre ingresado.")
    }
}

// MARK: - 5. INTERFAZ DE CONSOLA INTERACTIVA (TERMINAL)

var ejecutando = true

print("""
===========================================================
🥇 SISTEMA INTEGRADO DE TRANSPORTE - PANAMERICANOS LIMA 🥈
===========================================================
""")

while ejecutando {
    print("""
    
    📌 MENÚ PRINCIPAL:
    1. Ver estaciones por línea (Línea 1 / Línea 2 / Metropolitano)
    2. Buscar detalle de estación (Ascensores, vías y conexiones)
    3. Planificar viaje (Calcular tiempo, ruta y tarifa)
    4. Ver enlace del Mapa Oficial SVG
    5. Salir
    
    Seleccione una opción (1-5): 
    """, terminator: "")
    
    if let entrada = readLine() {
        switch entrada.trimmingCharacters(in: .whitespaces) {
        case "1":
            print("\nIngrese el nombre de la línea (ej: linea 1, L2, metropolitano): ", terminator: "")
            if let lineaInput = readLine() {
                consultarLinea(nombreLinea: lineaInput)
            }
            
        case "2":
            print("\nEstaciones disponibles: \(Array(metroDictionary.keys).sorted().joined(separator: ", "))")
            print("Ingrese el nombre de la estación a consultar: ", terminator: "")
            if let estacionInput = readLine() {
                verDetalleEstacion(nombreIngresado: estacionInput)
            }
            
        case "3":
            print("\n--- PLANIFICADOR DE VIAJES ---")
            print("Ingrese estación de ORIGEN: ", terminator: "")
            let origenInput = readLine() ?? ""
            
            print("Ingrese estación de DESTINO: ", terminator: "")
            let destinoInput = readLine() ?? ""
            
            let origenMatch = buscarEstacion(origenInput)
            let destinoMatch = buscarEstacion(destinoInput)
            
            if origenInput.trimmingCharacters(in: .whitespaces).isEmpty || destinoInput.trimmingCharacters(in: .whitespaces).isEmpty {
                print("❌ Debe ingresar tanto la estación de origen como la de destino.")
            } else if origenMatch == nil || destinoMatch == nil {
                print("❌ Una o ambas estaciones ingresadas no fueron encontradas en el sistema.")
            } else if origenMatch?.name == destinoMatch?.name {
                print("⚠️ La estación de origen y destino no pueden ser la misma.")
            } else if let origen = origenMatch, let destino = destinoMatch {
                print("¿Aplica tarifa preferencial/estudiantil? (s/n): ", terminator: "")
                let respuestaEstudiante = readLine() ?? ""
                let esEstudiante = normalizarTexto(respuestaEstudiante) == "s" || normalizarTexto(respuestaEstudiante) == "si"
                
                let tiempo = calcularTiempo(origen: origen, destino: destino)
                let mensajeRuta = obtenerMensajeLinea(origen: origen, destino: destino)
                let tarifa = calcularTarifa(esEstudiante: esEstudiante)
                
                print("\n===========================================================")
                print("📋 RESUMEN DE LA RUTA SOLICITADA")
                print("===========================================================")
                print("🚆 Trayecto: \(origen.name) (\(origen.line)) ➔ \(destino.name) (\(destino.line))")
                print("⏱️ Tiempo estimado: ~\(tiempo) minutos")
                print("ℹ️ Detalle: \(mensajeRuta)")
                print("💳 Costo del pasaje: \(tarifa)")
            }
            
        case "4":
            print("\n🗺️ Enlace del mapa del Metro de Lima (Wikimedia SVG):")
            print("https://upload.wikimedia.org/wikipedia/commons/0/05/Lima_Metro_Map.svg")
            
        case "5":
            print("\n👋 ¡Gracias por utilizar el sistema de transporte!")
            ejecutando = false
            
        default:
            print("❌ Opción no válida. Ingrese un número del 1 al 5.")
        }
    }
}
