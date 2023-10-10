import SwiftUI



struct ContentView: View {
    @State private var myLanguageSelection = ""
    @State private var learningLanguageSelection = ""
    let languages = ["English", "Arabic", "Spanish"]
    var body: some View {
       
        
        
        
        ZStack {
//            Color.emojiBackground
//                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("  My Language :")
                        .font(Font.custom("Noteworthy-Bold", size: 24))
                    Spacer()
                    
                    Picker("Select my language", selection: $myLanguageSelection)
                    {
                        ForEach(languages, id: \.self) {
                            Text($0)
                        }
                    }
                    .accentColor(.black)
                    .background(RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("barColor")))
                    
                }
                HStack {
                    Text("  Learning Language :")
                        .font(Font.custom("Noteworthy-Bold", size: 24))
                    Spacer()
                    
                    Picker(" Select learning language ", selection: $learningLanguageSelection)
                        {
                        ForEach(languages, id: \.self) {
                            Text($0)
                            
                        }
                    }
                
                        .accentColor(.black)
                        .background(RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color("barColor")))
                    
                    

                    
                }
                CardView()
                Spacer()
                
                Button(action: {
                    print("Hello button tapped!")
                }) {
                    Text("Challenge Area")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.black)
                        .background(Color("barColor"))
                        .padding(3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 5)
                        )
                   
                }
                   
            }
        }
        
        
       
     
        
        
        
        
        
        
        
    }
}
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
