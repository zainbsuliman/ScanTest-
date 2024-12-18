//
//  TextRecognizer.swift
//  ScanTest]
//
//  Created by Zainab Alatwi  on 13/06/1446 AH.
//

//import Foundation
//
//import Vision
//import VisionKit
//
//final class TextRecognizer{
//    let cameraScan: VNDocumentCameraScan
//    init(cameraScan:VNDocumentCameraScan) {
//        self.cameraScan = cameraScan
//    }
//    private let queue = DispatchQueue(label: "scan-codes",qos: .default,attributes: [],autoreleaseFrequency: .workItem)
//    func recognizeText(withCompletionHandler completionHandler:@escaping ([String])-> Void) {
//        queue.async {
//            let images = (0..<self.cameraScan.pageCount).compactMap({
//                self.cameraScan.imageOfPage(at: $0).cgImage
//            })
//            let imagesAndRequests = images.map({(image: $0, request:VNRecognizeTextRequest())})
//            let textPerPage = imagesAndRequests.map{image,request->String in
//                let handler = VNImageRequestHandler(cgImage: image, options: [:])
//                do{
//                    try handler.perform([request])
//                    guard let observations = request.results else{return ""}
//                    return observations.compactMap({$0.topCandidates(1).first?.string}).joined(separator: "\n")
//                }
//                catch{
//                    print(error)
//                    return ""
//                }
//            }
//            DispatchQueue.main.async {
//                completionHandler(textPerPage)
//            }
//        }
//    }
//}
//import Foundation
//import Vision
//import VisionKit
//
//final class TextRecognizer {
//    let cameraScan: VNDocumentCameraScan
//    var selectedLanguage: String // حقل جديد لاختيار اللغة
//    init(cameraScan: VNDocumentCameraScan, selectedLanguage: String = "en") { // قيمة افتراضية هي الإنجليزية
//        self.cameraScan = cameraScan
//        self.selectedLanguage = selectedLanguage
//    }
//    
//    private let queue = DispatchQueue(label: "scan-codes", qos: .default, attributes: [], autoreleaseFrequency: .workItem)
//    
//    func recognizeText(withCompletionHandler completionHandler: @escaping ([String]) -> Void) {
//        queue.async {
//            let images = (0..<self.cameraScan.pageCount).compactMap {
//                self.cameraScan.imageOfPage(at: $0).cgImage
//            }
//            let imagesAndRequests = images.map { (image: $0, request: VNRecognizeTextRequest()) }
//            
//            let textPerPage = imagesAndRequests.map { image, request -> String in
//                request.recognitionLanguages = [self.selectedLanguage] // تحديد اللغة المطلوبة
//                
//                let handler = VNImageRequestHandler(cgImage: image, options: [:])
//                do {
//                    try handler.perform([request])
//                    guard let observations = request.results else { return "" }
//                    return observations.compactMap { $0.topCandidates(1).first?.string }.joined(separator: "\n")
//                } catch {
//                    print(error)
//                    return ""
//                }
//            }
//            DispatchQueue.main.async {
//                completionHandler(textPerPage)
//            }
//        }
//    }
//}

///////////////////////////// المهم
//import Vision
//import UIKit
//
//final class TextRecognizer {
//    func recognizeText(from image: UIImage, completion: @escaping (String?) -> Void) {
//        guard let cgImage = image.cgImage else {
//            completion(nil)
//            return
//        }
//        
//        let request = VNRecognizeTextRequest { (request, error) in
//            guard error == nil, let observations = request.results as? [VNRecognizedTextObservation] else {
//                completion(nil)
//                return
//            }
//            
//            let recognizedText = observations
//                .compactMap { $0.topCandidates(1).first?.string }
//                .joined(separator: "\n")
//            completion(recognizedText)
//        }
//        
//        request.recognitionLanguages = ["ar"] // تحديد اللغة العربية
//        request.recognitionLevel = .accurate
//        
//        let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
//        DispatchQueue.global(qos: .userInitiated).async {
//            do {
//                try handler.perform([request])
//            } catch {
//                print("Failed to perform text recognition: \(error)")
//                completion(nil)
//            }
//        }
//    }
//}
import UIKit
import Vision

final class TextRecognizer {
    func recognizeText(from image: UIImage, completion: @escaping (String?) -> Void) {
        guard let cgImage = image.cgImage else {
            completion(nil)
            return
        }
        
        let request = VNRecognizeTextRequest { (request, error) in
            guard error == nil, let observations = request.results as? [VNRecognizedTextObservation] else {
                completion(nil)
                return
            }
            
            let recognizedText = observations
                .compactMap { $0.topCandidates(1).first?.string }
                .joined(separator: "\n")
            completion(recognizedText)
        }
        
        request.recognitionLanguages = ["ar"] // تحديد اللغة العربية
        request.recognitionLevel = .accurate
        
        let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                try handler.perform([request])
            } catch {
                print("Failed to perform text recognition: \(error)")
                completion(nil)
            }
        }
    }
}

