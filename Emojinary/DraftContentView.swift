//
//  ContentView.swift
//  Emojinary
//
//  Created by Ghaida Farhan on 10/3/23.
//

import SwiftUI

struct DraftContentView: View {
    @State private var myLanguageSelection = ""
    @State private var learningLanguageSelection = ""
    let languages = ["English", "Arabic", "Spanish"]
    
    var body: some View {
        
        
       
            ZStack{
                
                Color("bcground")
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("  My Language:  ")
                            .font(Font.custom("Noteworthy-Bold", size:24))
                        
                        Spacer()
                        Picker("Select my language", selection: $myLanguageSelection) {
                            ForEach(languages, id: \.self) {
                                Text($0)
                                
                            }
                        }
                        .background(RoundedRectangle(cornerRadius: 20))
                        .frame(width:120)
                        .foregroundColor(Color("bars").opacity(0.7))
                        
                        
                    }
                    
                    HStack {
                        Text("Learning Language:")
                            .font(Font.custom("Noteworthy-Bold", size:24))
                        
                        Spacer()
                        Picker("Select learning language", selection: $learningLanguageSelection) {
                            ForEach(languages, id: \.self) {
                                Text($0)
                                
                                
                            }
                            
                          
                        }
                        .background(RoundedRectangle(cornerRadius: 20))
                        .frame(width:120)
                        .foregroundColor(Color("bars").opacity(0.7))
                        
                        
                        
                        
                    }
                    DraftCardView ()
                        .position(x: 19, y: 140)

                  .padding(80)
                    
                    
                   
                    Spacer()
                    
                    //
                }
                
            }
        
            
        }
    }


    struct DraftContentView_Previews: PreviewProvider {
        static var previews: some View {
            DraftContentView()
        }
    }

