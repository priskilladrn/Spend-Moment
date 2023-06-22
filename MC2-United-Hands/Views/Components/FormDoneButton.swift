//
//  FormDoneButton.swift
//  MC2-United-Hands
//
//  Created by Leonard Theodorus on 22/06/23.
//

import SwiftUI

struct FormDoneButton: View {
    var body: some View {
        Button{
            print("DONE!")
        } label: {
            HStack {
                Spacer()
                HStack{
                    Text("Done")
                        .padding()
                        .foregroundColor(.white)
                    
                }
                Spacer()
            }
            .background(
                RoundedRectangle(cornerRadius: 20).fill(Color.primaryBlue)
            )
            .padding(.horizontal)
        }
    }
}

struct FormDoneButton_Previews: PreviewProvider {
    static var previews: some View {
        FormDoneButton()
    }
}
