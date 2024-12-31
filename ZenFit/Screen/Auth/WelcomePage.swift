//
//  LoginPage.swift
//  ZenFit
//
//  Created by Yohan on 2024-12-31.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("welcome_page")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(0.9)
                    .background(
                        LinearGradient(colors: [Color("Primary"), Color("Pink").opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .overlay {
                        Rectangle()
                            .fill(Color("Black").opacity(0.7))
                            .frame(
                                width: .infinity,
                                height: .infinity
                            )
                            .ignoresSafeArea(.all)
                    }
                
                VStack {
                    TitleSection()
                    
                    Spacer()
                    
                    AppButton(title:"Get started", onPress: {
                        print("Get started pressed")
                    }, isPrimary: true)
                    
                    BottomSection()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 10)
            }
            
        }
    }
}

#Preview {
    WelcomePage()
}

struct TitleSection: View {
    var appName: String = "ZenFit"
    
    var body: some View {
        VStack {
            HStack(spacing:0) {
                Text(String(appName.prefix(3)))
                    .foregroundStyle(Color("Primary"))
                
                Text(String(appName.dropFirst(3)))
                    .foregroundStyle(Color("White"))
            }
            .font(.customFont(.bold, fontSize: 30))
            .padding(.bottom, 20)
            
            
            Text("Welcome To Your Fitness Journey")
                .font(.customFont(.semiBold, fontSize: 25))
                .foregroundStyle(Color("White"))
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
            
            Text("Your personalized path to a healthier, happier you starts here. Let’s achieve your goals together!")
                .font(.customFont(.medium, fontSize: 14))
                .foregroundStyle(Color.white)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 10)
    }
}

struct BottomSection: View {
    var body: some View {
        HStack {
            Text("already have account?")
                .font(.customFont(.medium, fontSize: 14))
                .foregroundStyle(Color.white)
            
            Button("Log In") {
                print("hello")
            }
            .font(.customFont(.semiBold, fontSize: 14))
            .foregroundStyle(Color("Primary"))
        }
        .padding(.vertical, 10)
    }
}
