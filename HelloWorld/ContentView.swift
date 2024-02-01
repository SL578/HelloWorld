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
            List{
                HStack {
                    MakeButton(text: "Hello World", text0: "Hello again")
                    Spacer()
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
                MakeButton(text:"Hello again again", text0: "Here I am")
                Text("hello")
                
                ForEach(1...5, id: \.self){ index in
                    HStack {
                        Image("snowday")
                        .resizable()
                        .frame(width: 40, height: 40)
                        Text("Item \(index)")
                    }
                    
                }
                
            }
            .listStyle(.plain)
            MakeButton(text:"Hello again again", text0: "Here I am")
        }
        
    }
    
    

}
#Preview {
    ContentView()
}

struct MakeButton: View {
    var text: String
    var text0: String

    var body: some View {
        Button {
            let utterance = AVSpeechUtterance(string: "Hello World")
            utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
        } label: {
            Text(text + text0)
                .fontWeight(.heavy)
                .font(.system(.title, design: .rounded))
        }
        .padding()
        .foregroundColor(.orange)
        .background(Color.black)
        .cornerRadius(15)
    }
}

//struct makeButton(): View {
//    var body: some View {
//        Button {
//            let utterance = AVSpeechUtterance(string: "Hello World")
//            utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
//            let synthesizer = AVSpeechSynthesizer()
//            synthesizer.speak(utterance)
//        } label: {
//            Text("Hello World")
//                .fontWeight(.heavy)
//                .font(.system(.title, design: .rounded))
//        }
//        .padding()
//        .foregroundColor(.orange)
//        .background(Color.black)
//        .cornerRadius(15)
//    }
