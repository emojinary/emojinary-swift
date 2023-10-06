//
//  DropdownButton_Previews.swift
//  Emojinary
//
//  Created by Jalen Spires on 10/2/23.
//

//import SwiftUI
//import Foundation
//
//
//struct DropdownButton_Previews: PreviewProvider {
//    static let options = [
//        DropdownOption(key: "week", val: "This week"), DropdownOption(key: "month", val: "This month"), DropdownOption(key: "year", val: "This year")
//    ]
//
//    static let onSelect = { key in
//        print(key)
//    }
//
//    static var previews: some View {
//        Group {
//            VStack(alignment: .leading) {
//                DropdownButton(displayText: .constant("This month"), options: options, onSelect: onSelect)
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.coreUIBackground)
//            .foregroundColor(Color.coreUIPrimary)
//
//            VStack(alignment: .leading) {
//                DropdownButton(shouldShowDropdown: true, displayText: .constant("This month"), options: options, onSelect: onSelect)
//                Dropdown(options: options, onSelect: onSelect)
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.coreUIBackground)
//            .foregroundColor(Color.coreUIPrimary)
//        }
//    }
//}
