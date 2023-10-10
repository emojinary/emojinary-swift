//
//  CardView.swift
//  Emojinary
//
//  Created by Ghaida Farhan on 10/3/23.
//
//
import SwiftUI

struct DraftCardView: View {
    @State private var selectedCard = 1
    @State private var translation1: CGSize = .zero
    @State private var translation2: CGSize = .zero
    @State private var translation3: CGSize = .zero


    var body: some View {
        GeometryReader{ geometry in

            ZStack{

                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color("cgreen"))

                        .frame(width:290, height:290)
                        .padding(100)

                        .position(x:230, y:400)



                        .shadow(radius: 30)
                        .offset(x: self.translation1.width, y: 0)
                        .gesture(
                            DragGesture()

                                .onChanged{ value in
                                    self.translation1 = value.translation
                                }
                                .onEnded { value in
                                    self.translation1 = .zero
                                }
                        )




                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color("cyellow"))
                        .frame(width:290, height:290)
                        .position(x:337, y:580)


                        .shadow(radius: 30)
                        .offset(x: self.translation2.width, y: 0)
                        .gesture(
                            DragGesture()

                                .onChanged{ value in
                                    self.translation2 = value.translation
                                }
                                .onEnded { value in
                                    self.translation2 = .zero
                                }
                        ).padding(-180)


                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color("cred"))
                        .frame(width:290, height:290)
                        .position(x:200, y:400)

                        .shadow(radius: 50)

                        .offset(x: self.translation3.width, y: 0)
                        .gesture(
                            DragGesture()

                                .onChanged{ value in
                                    self.translation3 = value.translation
                                }
                                .onEnded { value in
                                    self.translation3 = .zero
                                }
                        )
                Button(action: {
                                   selectedCard += 1
                                   if selectedCard > 3 {
                                       selectedCard = 1
                                   }
                               }) {
                                   Image(systemName: "arrow.right.circle.fill")

                                       .resizable()
                                       .frame(width: 40, height: 40)
                                       .foregroundColor(Color.blue)
                                       .position(x: geometry.size.width / 2, y: geometry.size.height - 60)
                               }
                               .buttonStyle(PlainButtonStyle())
                               
                               .position(x: 200 , y:200)

                }
                }.frame( height:980)
            }
        }




        struct DraftCardView_Previews: PreviewProvider {
            static var previews: some View {
                DraftCardView()

            }
        }




    
