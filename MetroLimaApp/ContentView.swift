import SwiftUI

struct ContentView: View {
    @State private var originStation: Station?
    @State private var destinationStation: Station?
    
    let mapURL = "https://upload.wikimedia.org/wikipedia/commons/0/05/Lima_Metro_Map.svg"

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Formulario de Selección
                Form {
                    Section(header: Text("Consulta tu viaje")) {
                        Picker("Estación Origen", selection: $originStation) {
                            Text("Seleccionar").tag(Station?.none)
                            ForEach(sampleStations) { station in
                                Text("\(station.name) (\(station.line))").tag(Station?.some(station))
                            }
                        }

                        Picker("Estación Destino", selection: $destinationStation) {
                            Text("Seleccionar").tag(Station?.none)
                            ForEach(sampleStations) { station in
                                Text("\(station.name) (\(station.line))").tag(Station?.some(station))
                            }
                        }
                    }

                    // Resultado simple cuando seleccionas estaciones diferentes
                    if let origin = originStation, let destination = destinationStation, origin != destination {
                        Section(header: Text("Información del viaje")) {
                            
                            // 1. Ruta
                            HStack {
                                Image(systemName: "tram.fill")
                                    .foregroundColor(.blue)
                                Text("\(origin.name) ➔ \(destination.name)")
                                    .font(.headline)
                            }
                            
                            // 2. Tiempo Estimado
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.orange)
                                Text("Tiempo estimado: ~15 a 20 min")
                                    .font(.subheadline)
                            }
                            
                            // 3. Tarifa
                            HStack {
                                Image(systemName: "banknote.fill")
                                    .foregroundColor(.green)
                                Text("Precio del pasaje: S/ 1.50")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .frame(maxHeight: 290)

                Divider()

                // Mapa interactivo abajo
                VStack(alignment: .leading, spacing: 4) {
                    Text("Mapa del Metro de Lima")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.secondary)
                        .padding([.horizontal, .top], 12)

                    SVGWebView(urlString: mapURL)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding([.horizontal, .bottom], 12)
                }
            }
            .navigationTitle("Metro de Lima")
        }
    }
}

#Preview {
    ContentView()
}
