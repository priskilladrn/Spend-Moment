//
//  ExpenseCard.swift
//  MC2-United-Hands
//
//  Created by Leonard Theodorus on 22/06/23.
//

import SwiftUI

struct ExpenseCard: View {
    @State var imageView : Image = Image(systemName: "figure.soccer")
    @State var expenseCategory : ExpenseCategoryPicker.expenseCategory = .food
//    @Binding var imageView : UIImage
//    @Binding var expenseCategory : ExpenseCategoryPicker
    @State var expenseData : ExpenseData
    
    var body: some View {
        HStack{
            RoundedImage(expenseImage: expenseData.image ?? UIImage())
            VStack{
                //TODO: Expense nominal
                Text("Rp. 25.000")
                    .bold()
                    .padding(.leading)
                    .accessibilityLabel(Text("Expense Nominal"))
                //TODO: Expense Time
                Text("08.00 AM")
                    .font(.caption)
                    .padding(.trailing)
                    .accessibilityLabel(Text("Time added"))
                //TODO: Expense Category
                CategoryLabel(stringLabel: expenseData.category ?? "")
                    .padding(.leading)
                    .accessibilityLabel(Text("Expense Category"))
                    .accessibilityValue(Text(expenseData.category ?? ""))
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.expenseCardGrey.opacity(0.2))
        )
    }
}

struct ExpenseCard_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCard(expenseData: ExpenseData(id: UUID(), image: UIImage(), category: "", amount: 0, timestamp: Date.now))
    }
}
