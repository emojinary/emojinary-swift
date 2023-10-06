//
//  ContentView.swift
//  Emojinary
//
//  Created by Jalen Spires on 10/2/23.
//
import SwiftUI

struct ContentView: View {
    @State private var myLanguageSelection = ""
    @State private var learningLanguageSelection = ""
    let languages = ["English", "Arabic", "Spanish"]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("My Language:")
                Spacer()
                Picker("Select my language", selection: $myLanguageSelection) {
                    ForEach(languages, id: \.self) {
                        Text($0)
//                            .font(.n)
                        
                        
                    }
                }
            }
            HStack {
                Text("Learning Language:")
                
                Spacer()
                Picker("Select learning language", selection: $learningLanguageSelection) {
                    ForEach(languages, id: \.self) {
                        Text($0)
                        
                    }

                }
                
            }
            Spacer()
            
        }
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

