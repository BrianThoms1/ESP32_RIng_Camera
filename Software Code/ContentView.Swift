import SwiftUI

struct ContentView: View {

    @State private var cameraOnline = true
    @State private var motionDetected = false
    @State private var motionCount = 0

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 20) {

                    Text("Ring Camera")
                        .font(.largeTitle)
                        .bold()

                    HStack {

                        Circle()
                            .fill(cameraOnline ? .green : .red)
                            .frame(width: 14, height: 14)

                        Text(cameraOnline ? "Camera Online" : "Camera Offline")
                            .font(.headline)

                        Spacer()

                        Text("LIVE")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal,10)
                            .padding(.vertical,5)
                            .background(Color.red)
                            .cornerRadius(20)
                    }

                    // Live Camera Placeholder
                    CameraWebView(
                        url: URL(string: "http://192.168.1.136/capture")!
                    )
                    .frame(height: 260)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    }

                    HStack(spacing:15){

                        VStack{

                            Text("Motion")

                            Image(systemName:
                                    motionDetected ?
                                  "person.fill.viewfinder"
                                  :
                                  "checkmark.circle.fill")
                            .font(.system(size:40))
                            .foregroundColor(
                                motionDetected ? .red : .green
                            )

                            Text(
                                motionDetected ?
                                "Detected"
                                :
                                "Clear"
                            )
                        }
                        .frame(maxWidth:.infinity)
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(18)

                        VStack{

                            Text("Events")

                            Text("\(motionCount)")
                                .font(.system(size:40))
                                .bold()

                            Text("Today")
                        }
                        .frame(maxWidth:.infinity)
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(18)

                    }

                    VStack(spacing:15){

                        Button {

                            // Refresh camera

                        } label: {

                            Label("Refresh Camera",
                                  systemImage: "arrow.clockwise")

                                .frame(maxWidth:.infinity)
                        }
                        .buttonStyle(.borderedProminent)

                        Button {

                            // Open images

                        } label: {

                            Label("Captured Images",
                                  systemImage: "photo.on.rectangle")

                                .frame(maxWidth:.infinity)

                        }
                        .buttonStyle(.bordered)

                    }

                    Spacer()

                }
                .padding()

            }
            .navigationTitle("Home")

        }

    }


#Preview {
    ContentView()
}
