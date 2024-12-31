//
//  AppButton.swift
//  ZenFit
//
//  Created by Yohan on 2024-12-31.
//

import SwiftUI

struct AppButton: View {
    var title: String = "Title"
    var onPress: () -> Void
    var isPrimary: Bool = true
    
    var body: some View {
        Button {
            onPress()
        } label: {
            Text(title)
                .font(.customFont(.semiBold, fontSize: 16))
                .foregroundStyle(Color("White"))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 10)
        .background(Color("Primary"))
        .cornerRadius(10)
        
    }
}

#Preview {
    AppButton(title: "Primary button", onPress: {
        print("button pressed")
    }, isPrimary: true)
}
