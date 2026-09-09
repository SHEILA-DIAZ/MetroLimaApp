import SwiftUI
import WebKit

// MARK: - 1. ESTRUCTURA Y DICCIONARIOS DE DATOS
struct Station: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let line: String
    let index: Int
}

let metroDictionary: [String: Station] = [
    "Villa El Salvador": Station(name: "Villa El Salvador", line: "Línea 1", index: 1),
    "Parque Industrial": Station(name: "Parque Industrial", line: "Línea 1", index: 2),
    "Pucará":            Station(name: "Pucará", line: "Línea 1", index: 3),
    "Miguel Grau":       Station(name: "Miguel Grau", line: "Línea 1", index: 4),
    "Gamarra":           Station(name: "Gamarra", line: "Línea 1", index: 5),
    "Bayóvar":           Station(name: "Bayóvar", line: "Línea 1", index: 6),
    "Evitamiento":       Station(name: "Evitamiento", line: "Línea 2", index: 1),
    "Óvalo Santa Anita": Station(name: "Óvalo Santa Anita", line: "Línea 2", index: 2),
    "Mercado Santa Anita": Station(name: "Mercado Santa Anita", line: "Línea 2", index: 3)
]

// MARK: - 2. MAPA SVG INTERACTIVO (CORREGIDO)
struct SVGWebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.isScrollEnabled = true
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

// MARK: - 3. VISTA PRINCIPAL
struct ContentView: View {
    @State private var originKey: String = ""
    @State private var destinationKey: String = ""
    @State private var esEstudiante: Bool = false
    
    let mapURL = "https://upload.wikimedia.org/wikipedia/commons/0/05/Lima_Metro_Map.svg"
    let availableKeys = Array(metroDictionary.keys).sorted()

    // FUNCIONES DE CÁLCULO
    func calcularTiempo(origen: Station, destino: Station) -> Int {
        if origen.line == destino.line {
            let estaciones = abs(origen.index - destino.index)
            return estaciones * 2
        } else {
            return 25
        }
    }

    func obtenerMensajeLinea(origen: Station, destino: Station) -> String {
        if origen.line == destino.line {
            let estaciones = abs(origen.index - destino.index)
            return "\(estaciones) estaciones recorridas (\(origen.line))"
        } else {
            return "Requiere trasbordo entre \(origen.line) y \(destino.line)"
        }
    }

    func calcularTarifa(esEstudiante: Bool) -> String {
        return esEstudiante ? "S/ 0.75 (Medio pasaje)" : "S/ 1.50 (Pasaje general)"
    }

    func esMismaEstacion(origen: String, destino: String) -> Bool {
        return !origen.isEmpty && origen == destino
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Form {
                    Section(header: Text("Consulta tu viaje")) {
                        Picker("Estación Origen", selection: $originKey) {
                            Text("Seleccionar").tag("")
                            ForEach(availableKeys, id: \.self) { key in
                                Text(key).tag(key)
                            }
                        }

                        Picker("Estación Destino", selection: $destinationKey) {
                            Text("Seleccionar").tag("")
                            ForEach(availableKeys, id: \.self) { key in
                                Text(key).tag(key)
                            }
                        }

                        Toggle("¿Tarifa Preferencial?", isOn: $esEstudiante)
                    }

                    if esMismaEstacion(origen: originKey, destino: destinationKey) {
                        Section {
                            Text("⚠️ Selecciona una estación diferente al origen.")
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                    }

                    if let origin = metroDictionary[originKey],
                       let destination = metroDictionary[destinationKey],
                       !esMismaEstacion(origen: originKey, destino: destinationKey) {
                        
                        Section(header: Text("Información del viaje")) {
                            HStack {
                                Image(systemName: "tram.fill")
                                    .foregroundColor(.blue)
                                Text("\(origin.name) ➔ \(destination.name)")
                                    .font(.headline)
                            }

                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.orange)
                                VStack(alignment: .leading) {
                                    Text("Tiempo estimado: ~\(calcularTiempo(origen: origin, destino: destination)) min")
                                        .font(.subheadline)
                                    Text(obtenerMensajeLinea(origen: origin, destino: destination))
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }

                            HStack {
                                Image(systemName: "banknote.fill")
                                    .foregroundColor(.green)
                                Text("Precio del pasaje: \(calcularTarifa(esEstudiante: esEstudiante))")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .frame(maxHeight: 280)

                Divider()

                VStack(alignment: .leading, spacing: 4) {
                    Text("Mapa del Metro de Lima")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.secondary)
                        .padding([.horizontal, .top], 8)

                    SVGWebView(urlString: mapURL)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding([.horizontal, .bottom], 8)
                }
            }
            .navigationTitle("Metro de Lima")
        }
    }
}

#Preview {
    ContentView()
}
