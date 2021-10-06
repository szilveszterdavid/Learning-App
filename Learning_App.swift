//
//  Learning_AppApp.swift
//  Learning App
//
//  Created by Szilveszter Dávid on 06.10.2021.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
