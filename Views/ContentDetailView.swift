//
//  ContentDetailView.swift
//  Learning App
//
//  Created by Szilveszter Dávid on 07.10.2021.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        let lesson = model.currentLesson
        
        let url = URL(string: Constants.videoHostUrl + (lesson?.video ?? ""))
        
        // Only show the video if get a valid URL
        if url != nil {
            VideoPlayer(player: AVPlayer(url: url!))
        }
        
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
