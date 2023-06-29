//
//  CategoryLabel.swift
//  MC2-United-Hands
//
//  Created by Leonard Theodorus on 22/06/23.
//

import SwiftUI

struct CategoryLabel: View {
    var stringLabel : String
    var body: some View {
        //TODO: Adain warna each category
        Text(stringLabel == "" ? "Draft" : stringLabel)
            .font(.footnote)
            .foregroundColor(.blue)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 200).foregroundColor(.primaryBlue.opacity(0.1))
                
            )
    }
}

struct CategoryLabel_Previews: PreviewProvider {
    static var previews: some View {
        CategoryLabel(stringLabel: "")
    }
}
