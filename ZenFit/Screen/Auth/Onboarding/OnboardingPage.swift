//
//  OnboardingPage.swift
//  ZenFit
//
//  Created by Yohan on 2024-12-31.
//

import SwiftUI

struct OnboardingPage: View {
    // states
    @State var selectedPage: Int = 0
    var pages: [Onboarding] = [
        Onboarding(id: UUID(), title: "Your Personal Fitness Guide", description: "Explore tailored workouts with expert tutorials to reach your goals.", image: "onboarding_image_1"),
        
        Onboarding(id: UUID(), title: "Plan Your Workouts with Ease", description: "Organize your fitness routine with a simple and intuitive calendar.", image: "onboarding_image_2"),
        
        Onboarding(id: UUID(), title: "Track Your Progress Like a Pro", description: "Monitor your fitness journey with detailed stats and milestones", image: "onboarding_image_3")
    ]
    
    init () {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selectedPage) {
                ForEach(0..<pages.count, id: \.self) { index in
                    OnboardingPageView(data: pages[index])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .overlay(alignment: .bottom) {
                HStack(spacing: 8 ) {
                    ForEach(0 ..< pages.count, id:\.self) { index in
                        Capsule()
                            .fill(selectedPage == index ? Color("Primary") : Color.gray)
                            .frame(width: selectedPage == index ? 30 : 10, height: 10)
                    }
                }
                .padding(.bottom, .heightPer(height: 0.15))
            }
            
            Button {
                if(selectedPage != 2) {
                    selectedPage += 1
                }
            } label: {
                Text(selectedPage == 2 ? "Get Started" : "Next")
                    .font(.customFont(.semiBold, fontSize: 18))
                    .foregroundStyle(Color("White"))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(Color("Primary"))
            .cornerRadius(10)
            
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
    }
}



#Preview {
    OnboardingPage()
}

struct OnboardingPageView: View {
    var data: Onboarding
    
    var body: some View {
        VStack {
            Text(data.title)
                .multilineTextAlignment(.center)
                .font(.customFont(.bold, fontSize: 24))
            
            HStack {
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(width: 0.6))
            }
            .frame(width: .widthPer(width: 0.6), height: .widthPer(width: 0.6), alignment: .center)
            

            
            Text(data.description)
                .multilineTextAlignment(.center)
                .font(.customFont(.regular, fontSize: 14))
                .padding(.horizontal)
        }
        .padding(.vertical, 10)
    }
}
