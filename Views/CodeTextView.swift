//
//  CodeTextView.swift
//  Learning App
//
//  Created by Szilveszter Dávid on 10.10.2021.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        
        return textView
    }
    
    func updateUIView(_ textView: UITextView, context: Context) {
        
        // Set the attributed text for the lesson
        textView.text = "Testing"
        
        // Scroll back to the top
    }
    
}

struct CodeTextView_Previews: PreviewProvider {
    static var previews: some View {
        CodeTextView()
    }
}
