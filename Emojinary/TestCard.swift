//
//  test card.swift
//  Emojinary
//
//  Created by Ghaida Farhan on 10/5/23.
//
import SwiftUI

struct TestCard: View {
    @State private var myLanguageSelection = ""
    @State private var learningLanguageSelection = ""
    let languages = ["English", "Arabic", "Spanish"]

    var body: some View {
        ZStack {
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
                    .accentColor(.black)
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
                    .accentColor(.black)
                    .background(RoundedRectangle(cornerRadius: 20))
                    .frame(width:120)
                    .foregroundColor(Color("bars").opacity(0.7))
                }

                CardView()
                    .position(x:200 , y:470)
                
                Image("hii")
                    .position(x:200 , y: -170)
                   
            }
        }
    }
}

struct TestCardPreviews: PreviewProvider {
    static var previews: some View {
        TestCard()
    }
}
