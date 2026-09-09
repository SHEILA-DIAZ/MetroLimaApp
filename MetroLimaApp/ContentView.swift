import SwiftUI

struct ContentView: View {
    @State private var originStation: Station?
    @State private var destinationStation: Station?
    
    let mapURL = "https://upload.wikimedia.org/wikipedia/commons/0/05/Lima_Metro_Map.svg"

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Form {
                    Section(header: Text("Consulta tu ruta")) {
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

                    if let origin = originStation, let destination = destinationStation, origin != destination {
                        Section(header: Text("Detalle de viaje")) {
                            HStack {
                                Image(systemName: "tram.fill")
                                    .font(.title2)
                                    .foregroundColor(.accentColor)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("\(origin.name) ➔ \(destination.name)")
                                        .font(.headline)
                                    Text("Línea de salida: \(origin.line)")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    }
                }
                .frame(maxHeight: 280)

                Divider()

                VStack(alignment: .leading, spacing: 4) {
                    Text("Mapa interactivo")
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
