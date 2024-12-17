//
//  ScannerView.swift
//  ScanTest]
//
//  Created by Zainab Alatwi  on 13/06/1446 AH.
//

//import VisionKit
//import SwiftUI
//
//struct ScannerView: UIViewControllerRepresentable {
//    private let completionHandler: ([String]?) -> Void
//   
//    
//    init(completion: @escaping ([String]?) -> Void) {
//        self.completionHandler = completion
//    }
//    
//    typealias UIViewControllerType = VNDocumentCameraViewController
//    
//    func makeUIViewController(context: UIViewControllerRepresentableContext<ScannerView>) -> VNDocumentCameraViewController {
//        let viewController = VNDocumentCameraViewController()
//        viewController.delegate = context.coordinator
//        return viewController
//    }
//    
//    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: UIViewControllerRepresentableContext<ScannerView>) {}
//    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(completion: completionHandler)
//    }
//    
//    final class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
//        private let completionHandler: ([String]?) -> Void
//        
//        init(completion: @escaping ([String]?) -> Void) {
//            self.completionHandler = completion
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
//            print("Document camera view controller did finish with ", scan)
//            let recognizer = TextRecognizer(cameraScan: scan)
//            recognizer.recognizeText(withCompletionHandler: completionHandler)
//        }
//        
//        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
//            completionHandler(nil)
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
//            print("Document camera view controller did finish with error ", error)
//            completionHandler(nil)
//        }
//    }
//}
//import VisionKit
//import SwiftUI
//
//struct ScannerView: UIViewControllerRepresentable {
//    private let completionHandler: ([String]?) -> Void
//    var selectedLanguage: String // متغير لاختيار اللغة
//    
//    init(completion: @escaping ([String]?) -> Void, selectedLanguage: String) {
//        self.completionHandler = completion
//        self.selectedLanguage = selectedLanguage
//    }
//    
//    typealias UIViewControllerType = VNDocumentCameraViewController
//    
//    func makeUIViewController(context: UIViewControllerRepresentableContext<ScannerView>) -> VNDocumentCameraViewController {
//        let viewController = VNDocumentCameraViewController()
//        viewController.delegate = context.coordinator
//        return viewController
//    }
//    
//    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: UIViewControllerRepresentableContext<ScannerView>) {}
//    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(completion: completionHandler, selectedLanguage: selectedLanguage)
//    }
//    
//    final class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
//        private let completionHandler: ([String]?) -> Void
//        var selectedLanguage: String // تحديد اللغة
//        
//        init(completion: @escaping ([String]?) -> Void, selectedLanguage: String) {
//            self.completionHandler = completion
//            self.selectedLanguage = selectedLanguage
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
//            print("Document camera view controller did finish with ", scan)
//            let recognizer = TextRecognizer(cameraScan: scan, selectedLanguage: selectedLanguage)
//            recognizer.recognizeText(withCompletionHandler: completionHandler)
//        }
//        
//        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
//            completionHandler(nil)
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
//            print("Document camera view controller did finish with error ", error)
//            completionHandler(nil)
//        }
//    }
//}
//
//import VisionKit
//import SwiftUI
//
//struct ScannerView: UIViewControllerRepresentable {
//    private let completionHandler: ([String]?) -> Void
//    
//    init(completion: @escaping ([String]?) -> Void) {
//        self.completionHandler = completion
//    }
//    
//    typealias UIViewControllerType = VNDocumentCameraViewController
//    
//    func makeUIViewController(context: UIViewControllerRepresentableContext<ScannerView>) -> VNDocumentCameraViewController {
//        let viewController = VNDocumentCameraViewController()
//        viewController.delegate = context.coordinator
//        return viewController
//    }
//    
//    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: UIViewControllerRepresentableContext<ScannerView>) {}
//    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(completion: completionHandler)
//    }
//    
//    final class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
//        private let completionHandler: ([String]?) -> Void
//        
//        init(completion: @escaping ([String]?) -> Void) {
//            self.completionHandler = completion
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
//            print("Document camera view controller did finish with ", scan)
//            let recognizer = TextRecognizer(cameraScan: scan)
//            recognizer.recognizeText(withCompletionHandler: completionHandler)
//        }
//        
//        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
//            completionHandler(nil)
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
//            print("Document camera view controller did finish with error ", error)
//            completionHandler(nil)
//        }
//    }
//}
//المهم
//import VisionKit
//import SwiftUI
//
//struct ScannerView: UIViewControllerRepresentable {
//    private let completionHandler: ([String]?) -> Void
//    
//    init(completion: @escaping ([String]?) -> Void) {
//        self.completionHandler = completion
//    }
//    
//    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
//        let viewController = VNDocumentCameraViewController()
//        viewController.delegate = context.coordinator
//        return viewController
//    }
//    
//    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: Context) {}
//    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(completion: completionHandler)
//    }
//    
//    class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
//        private let completionHandler: ([String]?) -> Void
//        
//        init(completion: @escaping ([String]?) -> Void) {
//            self.completionHandler = completion
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
//            var recognizedTexts: [String] = []
//            let textRecognizer = TextRecognizer()
//            
//            // تحليل النصوص من كل صفحة
//            for pageIndex in 0..<scan.pageCount {
//                let image = scan.imageOfPage(at: pageIndex)
//                textRecognizer.recognizeText(from: image) { recognizedText in
//                    if let text = recognizedText {
//                        recognizedTexts.append(text)
//                    }
//                    
//                    // التحقق من انتهاء جميع الصفحات
//                    if recognizedTexts.count == scan.pageCount {
//                        // إضافة النصوص المكتشفة فورًا
//                        DispatchQueue.main.async {
//                            self.completionHandler(recognizedTexts)
//                        }
//                    }
//                }
//            }
//        }
//
//
//        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
//            self.completionHandler(nil)
//        }
//        
//        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
//            self.completionHandler(nil)
//        }
//    }
//}
import SwiftUI
import VisionKit

struct ScannerView: UIViewControllerRepresentable {
    private let completionHandler: ([String]?) -> Void
    private let scanButtonText: String
    
    init(scanButtonText: String, completion: @escaping ([String]?) -> Void) {
        self.scanButtonText = scanButtonText
        self.completionHandler = completion
    }
    
    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
        let viewController = VNDocumentCameraViewController()
        viewController.delegate = context.coordinator
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(completion: completionHandler)
    }
    
    class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
        private let completionHandler: ([String]?) -> Void
        
        init(completion: @escaping ([String]?) -> Void) {
            self.completionHandler = completion
        }
        
        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
            var recognizedTexts: [String] = []
            let textRecognizer = TextRecognizer()
            
            for pageIndex in 0..<scan.pageCount {
                let image = scan.imageOfPage(at: pageIndex)
                textRecognizer.recognizeText(from: image) { recognizedText in
                    if let text = recognizedText {
                        recognizedTexts.append(text)
                    }
                    
                    if recognizedTexts.count == scan.pageCount {
                        self.completionHandler(recognizedTexts)
                    }
                }
            }
        }
        
        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
            self.completionHandler(nil)
        }
        
        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
            self.completionHandler(nil)
        }
    }
}
