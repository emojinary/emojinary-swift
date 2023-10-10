import SwiftUI

struct CardView: View {
@State private var currentIndex = 0
private let words = ["apple", "house", "cat"]
private let emojis = ["🦅", "🌎", "⚓", "🌏", "🌍",
                      "💍", "🛟", "☂️", "🍯", "🎌",
                      "🍩", "🎷", "🎸", "🎺", "🎻",
                      "🎡", "🎥", "🏐", "🏅", "🏫",
                      "🍝", "🍚", "🍣", "🐟", "🦕", // 25
                      "🦎", "🦖", "🦣", "🦷", "🪥",
                      "🐁", "🪤", "🧀", "🐄", "🤠",
                      "🪕", "🏷", "🐂", "🐃", "🐇",
                      "🐉", "🐊", "🐋", "🐎", "🐏",
                      "🐐", "🐑", "🐒", "🐓", "🐖", // 50
                      "🐿", "🪐", "♖", "♜", "👁",
                      "👂", "👑", "👜", "💰", "💺",
                      "✈️", "🚀", "🛸", "🖖", "👽",
                      "📡", "🐦", "🐧", "🦆", "🦢",
                      "🛬", "🛩️", "🪂", "🛫", "🚢", // 75
                      "🍦", "🍨", "🍔", "🍱", "🌮",
                      "🌐", "💈", "🧬", "⚛️", "⚜️",
                      "🔰", "♨️", "🚿", "🎨", "🖼️",
                      "🖌️", "🖍️", "🧂", "🍟", "💾",
                      "💿", "📀", "📁", "📅", "📷" // 100


]

var body: some View {
    GeometryReader { geometry in
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .fill(currentIndex == 0 ? Color("EmojiGreen") : Color.clear)
                .frame(width: 290, height: 290)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .shadow(radius: 50)
                .overlay(
                    VStack {
                        let index1 = Int.random(in: 0 ..< 100)
                        let index2 = Int.random(in: 0 ..< 100)
                        let index3 = Int.random(in: 0 ..< 100)
                        Text(words[currentIndex])
                            .font(.title)
                            .foregroundColor(.black)
                        Spacer()
                        Text("\(emojis[index3]) \(emojis[index2])")
                            .font(.largeTitle)
                        Text("🍎 \(emojis[index1])")
                            .font(.largeTitle)
                    }
                )

            RoundedRectangle(cornerRadius: 50)
                .fill(currentIndex == 1 ? Color("emojiYellow") : Color.clear)
                .frame(width: 290, height: 290)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .shadow(radius: 50)
                .overlay(
                    VStack {
                        Text(words[currentIndex])
                            .font(.title)
                            .foregroundColor(.black)
                        Text(emojis[currentIndex])
                            .font(.largeTitle)
                    }
                )

            RoundedRectangle(cornerRadius: 40)
                .fill(currentIndex == 2 ? Color("emojiRed") : Color.clear)
                .frame(width: 290, height: 290)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .shadow(radius: 50)
                .overlay(
                    VStack {
                        Text(words[currentIndex])
                            .font(.title)
                            .foregroundColor(.black)
                        Text(emojis[currentIndex])
                            .font(.largeTitle)
                    }
                )

            HStack {
                Button(action: {
                    navigateToNextCard(forward: false)
                }) {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("barColor"))
                }
                .padding(.leading, 20)
                Spacer()
                Button(action: {
                    navigateToNextCard(forward: true)
                }) {
                Image(systemName: "arrow.right.circle.fill")
                .font(.largeTitle)
                .foregroundColor(Color("barColor"))
                }
                .padding(.trailing, 20)
                }
                .position(x: geometry.size.width / 2, y: geometry.size.height - 60)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                }
                }

                private func navigateToNextCard(forward: Bool) {
                    if forward {
                        currentIndex = (currentIndex + 1) % words.count
                    } else {
                        currentIndex = (currentIndex - 1 + words.count) % words.count
                    }
                }
                }

                struct CardView_Previews: PreviewProvider {
                static var previews: some View {
                CardView()
                }
                }
