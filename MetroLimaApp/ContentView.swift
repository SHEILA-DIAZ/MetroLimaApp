import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Rutas y Sistemas")) {
                    NavigationLink(destination: Text("Detalle de Línea 1")) {
                        Label("Línea 1 (26 Estaciones)", systemImage: "tram.fill")
                    }
                    NavigationLink(destination: Text("Detalle de Línea 2")) {
                        Label("Línea 2 (5 Estaciones)", systemImage: "tram")
                    }
                    NavigationLink(destination: Text("Detalle de Metropolitano")) {
                        Label("Metropolitano", systemImage: "bus.fill")
                    }
                }
                
                Section(header: Text("Información")) {
                    Text("Ejecuta el proyecto en la Terminal de la Mac para el modo interactivo por consola.")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Metro Lima App")
        }
    }
}
