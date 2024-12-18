//
//  TextView.swift
//  ScanTest]
//
//  Created by Zainab Alatwi  on 17/06/1446 AH.
//
//import SwiftUI
//
//struct TextView: View {
//    var text: String
//    var scanEntity: ScanEntity
//    var saveEditedText: (ScanEntity, String) -> Void
//    
//    var body: some View {
//        VStack {
//            Text("Extracted Text")
//                .font(.largeTitle)
//                .padding()
//            
//            TextField("Edit your text", text: .constant(text))
//                .padding()
//                .multilineTextAlignment(.leading)
//            
//            Spacer()
//            
//            // الزر للتعديل على الخلفية وحجم الخط
//            NavigationLink(destination: EditTextPage(scanEntity: scanEntity, saveEditedText: saveEditedText)) {
//                Text("Edit Background and Font Size")
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//            }
//            .padding()
//        }
//    }
//}
