//
//  ContentView.swift
//  HelloWorld
//
//  Created by Stephen Lin on 1/25/24.
//

import SwiftUI
import SwiftData
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                let utterance = AVSpeechUtterance(string: "Hello World")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            } label: {
                Text("Hello, world.")
                    .fontWeight(.heavy)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.orange)
            .background(Color.black)
            .cornerRadius(15)
            
            Button {
                let utterance = AVSpeechUtterance(string: "Hello World")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            } label: {
                Text("Hello, world.2")
                    .fontWeight(.heavy)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.orange)
            .background(Color.black)
            .cornerRadius(15)
        }
    }
    
    

}
#Preview {
    ContentView()
}
