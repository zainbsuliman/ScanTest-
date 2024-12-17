//
//  CustomCameraView.swift
//  ScanTest]
//
//  Created by Zainab Alatwi  on 15/06/1446 AH.
//

//import SwiftUI
//import UIKit
//
//struct CustomCameraView: UIViewControllerRepresentable {
//    @Binding var selectedImage: UIImage? // الصورة المختارة
//    @Binding var isPresented: Bool // التحكم في العرض
//    
//    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
//        var parent: CustomCameraView
//        
//        init(_ parent: CustomCameraView) {
//            self.parent = parent
//        }
//        
//        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            if let image = info[.originalImage] as? UIImage {
//                parent.selectedImage = image // حفظ الصورة
//            }
//            parent.isPresented = false // إغلاق الكاميرا أو الألبوم
//        }
//        
//        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//            parent.isPresented = false // إغلاق الكاميرا أو الألبوم
//        }
//    }
//    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(self)
//    }
//    
//    func makeUIViewController(context: Context) -> UIImagePickerController {
//        let picker = UIImagePickerController()
//        picker.delegate = context.coordinator
//        picker.sourceType = .camera // الكاميرا كواجهة أساسية
//        picker.allowsEditing = false
//        
//        // إضافة زر لاختيار الصور من الألبوم
//        let overlay = UIView(frame: UIScreen.main.bounds)
//        overlay.backgroundColor = .clear
//        
//        let button = UIButton(type: .system)
//        button.frame = CGRect(x: 20, y: UIScreen.main.bounds.height - 100, width: 120, height: 50)
//        button.setTitle("Album", for: .normal)
//        button.backgroundColor = UIColor.black.withAlphaComponent(0.5)
//        button.setTitleColor(.white, for: .normal)
//        button.layer.cornerRadius = 10
//        button.addTarget(context.coordinator, action: #selector(context.coordinator.openAlbum), for: .touchUpInside)
//        
//        overlay.addSubview(button)
//        picker.cameraOverlayView = overlay
//        
//        return picker
//    }
//    
//    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
//}
//
//extension CustomCameraView.Coordinator {
//    @objc func openAlbum() {
//        parent.isPresented = false // إغلاق الكاميرا
//        DispatchQueue.main.async {
//            parent.isPresented = true
//            let picker = UIImagePickerController()
//            picker.sourceType = .photoLibrary
//            picker.delegate = self
//            parent.isPresented = true
//        }
//    }
//}
