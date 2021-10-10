//
//  ContentView.swift
//  Learning App
//
//  Created by Szilveszter Dávid on 07.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
                // Confirm that currentModule is set
                if model.currentModule != nil {
                    
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        
                        NavigationLink(destination:
                                        ContentDetailView()
                                        .onAppear(perform: {
                            model.beginLesson(index)
                        }),
                                       label: {
                            ContentViewRow(index: index)
                        })
                    }
                }
                
            }
            .accentColor(.black)
            .padding()
            .navigationBarTitle("Learn \(model.currentModule?.category ?? "")")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
