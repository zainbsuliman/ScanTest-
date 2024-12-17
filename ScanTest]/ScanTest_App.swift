//
//  ScanTest_App.swift
//  ScanTest]
//
//  Created by Zainab Alatwi  on 13/06/1446 AH.
//

import SwiftUI

@main
struct ScanTest_App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [ScanEntity.self])
        }
    }
}
