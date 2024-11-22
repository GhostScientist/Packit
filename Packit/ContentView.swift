//
//  ContentView.swift
//  Packit
//
//  Created by Dakota Kim on 11/21/24.
//

import SwiftUI


import SwiftUI

struct OnboardingView: View {
    @State private var currentPage = 0

    var body: some View {
        VStack {
            Spacer()
            
            TabView(selection: $currentPage) {
                VStack {
                    Text("📦")
                        .font(.system(size: 160))
                        .padding(.bottom, 20)
                    VStack(alignment: .leading) {
                        
                        
                        Text("Packit")
                            .font(.system(size: 80.0))
                            .fontWeight(.semibold)
                        
                        HStack {
                            Text("by")
                                .font(.largeTitle)
                                .foregroundColor(.secondary)
                            
                            Text("MadWatch")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        .padding(.bottom, 20)
                        
                        Text("Designed to help you stay organized at home and on-the-go!")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 100)
                    }
                    .padding(.horizontal, 20)
                    .tag(0)
                }
                
                VStack {
                    Text("Second")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .tag(1)
                
                VStack {
                    Text("Third")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Spacer()
            
            HStack {
                ForEach(0..<3, id: \.self) { index in
                    Circle()
                        .fill(index == currentPage ? Color.primary : Color.secondary.opacity(0.5))
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.bottom, 20)
        }
    }
}


struct ContentView: View {
    var body: some View {
        OnboardingView()
    }
}

#Preview {
    ContentView()
}
