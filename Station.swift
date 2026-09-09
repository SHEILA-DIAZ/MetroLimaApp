import Foundation

struct Station: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let line: String
    let district: String
}

// Estaciones de ejemplo de la Línea 1 y Tramo Línea 2
let sampleStations = [
    Station(name: "Villa El Salvador", line: "Línea 1", district: "Villa El Salvador"),
    Station(name: "Parque Industrial", line: "Línea 1", district: "Villa El Salvador"),
    Station(name: "Pucará", line: "Línea 1", district: "Villa María del Triunfo"),
    Station(name: "Miguel Grau", line: "Línea 1", district: "Cercado de Lima"),
    Station(name: "Gamarra", line: "Línea 1", district: "La Victoria"),
    Station(name: "Bayóvar", line: "Línea 1", district: "San Juan de Lurigancho"),
    
    Station(name: "Evitamiento", line: "Línea 2", district: "Ate"),
    Station(name: "Óvalo Santa Anita", line: "Línea 2", district: "Santa Anita"),
    Station(name: "Mercado Santa Anita", line: "Línea 2", district: "Santa Anita")
]
