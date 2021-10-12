//
//  TestResultView.swift
//  Learning App
//
//  Created by Szilveszter Dávid on 12.10.2021.
//

import SwiftUI

struct TestResultView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Doing great!")
                .font(.title)
            Spacer()
            Text("You got X out of X questions")
            Spacer()
            Button {
                
                // Send the user back to the home view
                model.currentTestSelected = nil
                
            } label : {
                
                ZStack {
                    
                    RectangleCard(color: .green)
                        .frame(height: 48)
                    Text("Complete")
                        .bold()
                        .foregroundColor(.white)
                }
            }
            Spacer()
        }
    }
}

struct TestResultView_Previews: PreviewProvider {
    static var previews: some View {
        TestResultView()
    }
}
