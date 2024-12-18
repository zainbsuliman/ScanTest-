//
//  ContentView.swift
//  ScanTest]
//
//  Created by Zainab Alatwi  on 13/06/1446 AH.
//




//import SwiftUI
//
//struct ContentView: View {
//    @State private var showScannerSheet = false
//    @State private var texts:[ScanData] = []
//    var body: some View {
//        NavigationView{
//            VStack{
//                if texts.count > 0{
//                    List{
//                        ForEach(texts){text in
//                            NavigationLink(
//                                destination:ScrollView{Text(text.content)},
//                                label: {
//                                    Text(text.content).lineLimit(1)
//                                })
//                        }
//                    }
//                }
//                else{
//                    Text("No scan yet").font(.title)
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: Button(action: {
//                self.showScannerSheet = true
//            }, label: {
//                Image(systemName: "doc.text.viewfinder")
//                    .font(.title)
//            })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            )
//        }
//    }
//    private func makeScannerView()-> ScannerView {
//        ScannerView(completion: {
//            textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines){
//                let newScanData = ScanData(content: outputText)
//                self.texts.append(newScanData)
//            }
//            self.showScannerSheet = false
//        })
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//import SwiftUI
//import VisionKit
//import Vision
//
//struct ContentView: View {
//    @State private var showScannerSheet = false
//    @State private var texts: [ScanData] = []
//    @State private var selectedLanguage = "ar" // الافتراضي هو الإنجليزية
//    let languages = [ "ar"] // يمكنك إضافة المزيد من اللغات
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                Picker("Select Language", selection: $selectedLanguage) {
//                    ForEach(languages, id: \.self) { language in
//                        Text(language).tag(language)
//                    }
//                }
//                .pickerStyle(SegmentedPickerStyle())
//                .padding()
//                
//                if texts.count > 0 {
//                    List {
//                        ForEach(texts) { text in
//                            NavigationLink(
//                                destination: ScrollView { Text(text.content) },
//                                label: {
//                                    Text(text.content).lineLimit(1)
//                                })
//                        }
//                    }
//                } else {
//                    Text("No scan yet").font(.title)
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: Button(action: {
//                self.showScannerSheet = true
//            }, label: {
//                Image(systemName: "doc.text.viewfinder")
//                    .font(.title)
//            })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            )
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                let newScanData = ScanData(content: outputText)
//                self.texts.append(newScanData)
//            }
//            self.showScannerSheet = false
//        }, selectedLanguage: selectedLanguage)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//#Preview{
//    ContentView()
//}
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var showScannerSheet = false
//    @State private var texts: [ScanData] = []
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if texts.count > 0 {
//                    List {
//                        ForEach(texts) { text in
//                            NavigationLink(
//                                destination: ScrollView { Text(text.content) },
//                                label: {
//                                    Text(text.content).lineLimit(1)
//                                })
//                        }
//                    }
//                } else {
//                    Text("No scan yet").font(.title)
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: Button(action: {
//                self.showScannerSheet = true
//            }, label: {
//                Image(systemName: "doc.text.viewfinder")
//                    .font(.title)
//            })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            )
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                let newScanData = ScanData(content: outputText)
//                self.texts.append(newScanData)
//            }
//            self.showScannerSheet = false
//        })
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//#Preview{
//    ContentView()
//}
//import SwiftUI
//
//struct ContentView: View {
//    @State private var showScannerSheet = false
//    @State private var texts: [ScanData] = []
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if texts.count > 0 {
//                    List {
//                        ForEach(texts) { text in
//                            NavigationLink(
//                                destination: ScrollView { Text(text.content) },
//                                label: {
//                                    Text(text.content).lineLimit(1)
//                                })
//                        }
//                    }
//                } else {
//                    Text("No scan yet").font(.title)
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: Button(action: {
//                self.showScannerSheet = true
//            }, label: {
//                Image(systemName: "doc.text.viewfinder")
//                    .font(.title)
//            })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            )
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                let newScanData = ScanData(content: outputText)
//                self.texts.append(newScanData)
//            }
//            self.showScannerSheet = false
//        })
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var showScannerSheet = false
//    @State private var texts: [ScanData] = []
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if texts.count > 0 {
//                    List {
//                        ForEach(texts) { text in
//                            NavigationLink(
//                                destination: ScrollView {
//                                    Text(text.content)
//                                        .font(.custom("Maqroo-Regular", size: 18)) // استخدام الخط المخصص
//                                        .padding()
//                                },
//                                label: {
//                                    Text(text.content)
//                                        .lineLimit(1)
//                                        .font(.custom("Maqroo-Regular", size: 16)) // استخدام الخط المخصص
//                                })
//                        }
//                    }
//                } else {
//                    Text("No scan yet")
//                        .font(.custom("Maqroo-Regular", size: 20)) // استخدام الخط المخصص
//                        .fontWeight(.bold)
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: Button(action: {
//                self.showScannerSheet = true
//            }, label: {
//                Image(systemName: "doc.text.viewfinder")
//                    .font(.title)
//            })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            )
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                let newScanData = ScanData(content: outputText)
//                self.texts.append(newScanData)
//            }
//            self.showScannerSheet = false
//        })
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
//import SwiftUI
//import SwiftData
//
//struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//
//    @State private var showScannerSheet = false
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if scans.isEmpty {
//                    Text("No scans yet")
//                        .font(.title)
//                } else {
//                    List(scans) { scan in
//                        NavigationLink(destination: ScrollView {
//                            Text(scan.content)
//                                .padding()
//                                .font(.body)
//                        }) {
//                            Text(scan.content)
//                                .lineLimit(1)
//                                .font(.body)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: Button(action: {
//                self.showScannerSheet = true
//            }, label: {
//                Image(systemName: "doc.text.viewfinder")
//                    .font(.title)
//            })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            )
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                addScan(content: outputText)
//            }
//            self.showScannerSheet = false
//        })
//    }
//    
//    private func addScan(content: String) {
//        // إضافة عملية المسح الجديدة
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        // حصر عدد العمليات بـ 7
//        if scans.count > 7 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//            }
//        }
//    }
//}
//import SwiftUI
//import SwiftData
//
//struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var showScannerSheet = false
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage? = nil
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if scans.isEmpty {
//                    Text("No scans yet")
//                        .font(.custom("YourFontName", size: 20)) // استخدام الخط المخصص
//                        .fontWeight(.bold)
//                        .padding()
//                } else {
//                    List(scans) { scan in
//                        NavigationLink(destination: ScrollView {
//                            Text(scan.content)
//                                .padding()
//                                .font(.custom("YourFontName", size: 18)) // استخدام الخط المخصص
//                        }) {
//                            Text(scan.content)
//                                .lineLimit(1)
//                                .font(.custom("YourFontName", size: 16)) // استخدام الخط المخصص
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: HStack {
//                // زر لاختيار صورة من الألبوم
//                Button(action: {
//                    self.showImagePicker = true
//                }, label: {
//                    Image(systemName: "photo.on.rectangle.angled")
//                        .font(.title)
//                })
//                .sheet(isPresented: $showImagePicker) {
//                    ImagePicker(selectedImage: $selectedImage) { image in
//                        if let image = image {
//                            processImage(image)
//                        }
//                    }
//                }
//                
//                // زر لفتح الكاميرا
//                Button(action: {
//                    self.showScannerSheet = true
//                }, label: {
//                    Image(systemName: "doc.text.viewfinder")
//                        .font(.title)
//                })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            })
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                addScan(content: outputText)
//            }
//            self.showScannerSheet = false
//        })
//    }
//    
//    private func processImage(_ image: UIImage) {
//        let textRecognizer = TextRecognizer()
//        textRecognizer.recognizeText(from: image) { recognizedText in
//            if let outputText = recognizedText {
//                addScan(content: outputText)
//            }
//        }
//    }
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        if scans.count > 7 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//            }
//        }
//    }
//}
//#Preview {
//    ContentView()
//}
//المهم
//import SwiftUI
//import SwiftData
//
//struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var showScannerSheet = false
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage? = nil
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if scans.isEmpty {
//                    Text("No scans yet")
//                        .font(.custom("Maqroo-Regular", size: 20))
//                        .fontWeight(.bold)
//                        .padding()
//                } else {
//                    List(scans) { scan in
//                        NavigationLink(destination: ScrollView {
//                            Text(scan.content)
//                                .padding()
//                                .font(.custom("Maqroo-Regular", size: 18))
//                        }) {
//                            Text(scan.content)
//                                .lineLimit(1)
//                                .font(.custom("Maqroo-Regular", size: 16))
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: HStack {
//                // زر لاختيار صورة من الألبوم
//                Button(action: {
//                    self.showImagePicker = true
//                }, label: {
//                    Image(systemName: "photo.on.rectangle.angled")
//                        .font(.title)
//                })
//                .sheet(isPresented: $showImagePicker) {
//                    ImagePicker(selectedImage: $selectedImage) { image in
//                        if let image = image {
//                            processImage(image)
//                        }
//                    }
//                }
//                
//                // زر لفتح الكاميرا
//                Button(action: {
//                    self.showScannerSheet = true
//                }, label: {
//                    Image(systemName: "doc.text.viewfinder")
//                        .font(.title)
//                })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    self.makeScannerView()
//                })
//            })
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(scanButtonText: "", completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                addScan(content: outputText)
//            }
//            self.showScannerSheet = false
//        })
//    }
//    
//    private func processImage(_ image: UIImage) {
//        let textRecognizer = TextRecognizer()
//        textRecognizer.recognizeText(from: image) { recognizedText in
//            DispatchQueue.main.async {
//                if let outputText = recognizedText {
//                    // إضافة النص فورًا إلى الواجهة
//                    addScan(content: outputText)
//                }
//            }
//        }
//    }
//
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        if scans.count > 7 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//            }
//        }
//    }
//}
//#Preview {
//    ContentView()
//}
//import SwiftUI
//import SwiftData
//import PhotosUI
//import Vision
//import VisionKit
//
//struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var showScannerSheet = false
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage? = nil
//    @State private var selectedItem: PhotosPickerItem? = nil
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if scans.isEmpty {
//                    Text("No scans yet")
//                        .font(.custom("YourFontName", size: 20))
//                        .fontWeight(.bold)
//                        .padding()
//                } else {
//                    List(scans) { scan in
//                        NavigationLink(destination: ScrollView {
//                            Text(scan.content)
//                                .padding()
//                                .font(.custom("YourFontName", size: 18))
//                        }) {
//                            Text(scan.content)
//                                .lineLimit(1)
//                                .font(.custom("YourFontName", size: 16))
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .navigationBarItems(trailing: HStack {
//                PhotosPicker(selection: $selectedItem, matching: .images, photoLibrary: .shared()) {
//                    Text("اختر صورة")
//                        .font(.headline)
//                        .foregroundColor(.blue)
//                }
//                .onChange(of: selectedItem) { newItem in
//                    Task {
//                        if let selectedItem {
//                            do {
//                                let data = try await selectedItem.loadTransferable(type: Data.self)
//                                if let imageData = data, let image = UIImage(data: imageData) {
//                                    processImage(image)
//                                }
//                            } catch {
//                                print("فشل تحميل الصورة المختارة")
//                            }
//                        }
//                    }
//                }
//                
//                Button(action: {
//                    self.showScannerSheet = true
//                }, label: {
//                    Image(systemName: "doc.text.viewfinder")
//                        .font(.title)
//                })
//                .sheet(isPresented: $showScannerSheet, content: {
//                    ScannerView(scanButtonText: "ابدأ المسح") { textPerPage in
//                        if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                            addScan(content: outputText)
//                        }
//                        self.showScannerSheet = false
//                    }
//                })
//            })
//        }
//    }
//    
//    private func processImage(_ image: UIImage) {
//        let textRecognizer = TextRecognizer()
//        textRecognizer.recognizeText(from: image) { recognizedText in
//            DispatchQueue.main.async {
//                if let outputText = recognizedText {
//                    addScan(content: outputText)
//                }
//            }
//        }
//    }
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        if scans.count > 7 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//            }
//        }
//    }
//}
//#Preview {
//    ContentView()
//}
//هذا الممتاز ضبط
//import SwiftUI
//import SwiftData
//import VisionKit
////
//struct ContentView: View {
//    @Environment(\..modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var showScannerSheet = true
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage? = nil
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                HStack {
//                    Button(action: {
//                        self.showScannerSheet = true
//                    }, label: {
//                        Image(systemName: "doc.text.viewfinder")
//                            .font(.title)
//                    })
//                    .sheet(isPresented: $showScannerSheet, content: {
//                        self.makeScannerView()
//                    })
//                    
//                    Spacer()
//                    
//                    Button(action: {
//                        self.showImagePicker = true
//                    }, label: {
//                        Image(systemName: "photo.on.rectangle.angled")
//                            .font(.title)
//                    })
//                    .sheet(isPresented: $showImagePicker) {
//                        ImagePicker(selectedImage: $selectedImage) { image in
//                            if let image = image {
//                                processImage(image)
//                            }
//                        }
//                    }
//                }
//                .padding()
//                
//                if scans.isEmpty {
//                    Text("No scans yet")
//                        .font(.custom("Maqroo-Regular", size: 20))
//                        .fontWeight(.bold)
//                        .padding()
//                } else {
//                    List(scans) { scan in
//                        NavigationLink(destination: ScrollView {
//                            Text(scan.content)
//                                .padding()
//                                .font(.custom("Maqroo-Regular", size: 18))
//                        }) {
//                            Text(scan.content)
//                                .lineLimit(1)
//                                .font(.custom("Maqroo-Regular", size: 16))
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Scan OCR")
//            
//            .onAppear {
//                self.showScannerSheet = true
//            }
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(scanButtonText: "", completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                addScan(content: outputText)
//            }
//            self.showScannerSheet = false
//        })
//    }
//    
//    private func processImage(_ image: UIImage) {
//        let textRecognizer = TextRecognizer()
//        textRecognizer.recognizeText(from: image) { recognizedText in
//            DispatchQueue.main.async {
//                if let outputText = recognizedText {
//                    addScan(content: outputText)
//                }
//            }
//        }
//    }
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        if scans.count > 10 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()///
//}
//
/////// ثانيه
//struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var selectedImage: UIImage? = nil
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                
//                ScannerView(scanButtonText: "") { textPerPage in
//                    if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                        addScan(content: outputText)
//                    }
//                }
//                .frame(height: 700) // التحكم في ارتفاع الكاميرا
//                
//                HStack {
//                    NavigationLink(destination: HistoryView(scans: scans)) {
//                        Image(systemName: "clock.arrow.circlepath")
//                            .font(.title)
//                    }
//                    
//                    Spacer()
//                    
//                    Button(action: {
//                        // عرض معرض الصور
//                    }, label: {
//                        Image(systemName: "photo.on.rectangle.angled")
//                            .font(.title)
//                    })
//                }
//                .padding()
//            }
//            .navigationTitle("Scan OCR")
//        }
//    }
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        if scans.count > 10 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//            }
//        }
//    }
//}
//
//struct HistoryView: View {
//    var scans: [ScanEntity]
//    
//    var body: some View {
//        List(scans) { scan in
//            NavigationLink(destination: ScrollView {
//                Text(scan.content)
//                    .padding()
//                    .font(.custom("Maqroo-Regular", size: 18))
//            }) {
//                Text(scan.content)
//                    .lineLimit(1)
//                    .font(.custom("Maqroo-Regular", size: 16))
//            }
//        }
//        .navigationTitle("History")
//    }
//}
//
//#Preview {
//    ContentView()
//}
//import SwiftUI
//import SwiftData
//import VisionKit
//
//struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var showScannerSheet = true
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage? = nil
//    @State private var isSaving = false
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                // فتح الكاميرا مباشرة
//                ScannerView(scanButtonText: "") { textPerPage in
//                    if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                        addScan(content: outputText)
//                    }
//                }
//                .frame(height: 700) // التحكم في ارتفاع الكاميرا
//                
//                HStack {
//                    // زر الهيستوري
//                    NavigationLink(destination: HistoryView(scans: scans)) {
//                        Image(systemName: "clock.arrow.circlepath")
//                            .font(.title)
//                    }
//                    
//                    Spacer()
//                    
//                    // زر اختيار الصورة من الألبوم
//                    Button(action: {
//                        self.showImagePicker = true
//                    }, label: {
//                        Image(systemName: "photo.on.rectangle.angled")
//                            .font(.title)
//                    })
//                    .sheet(isPresented: $showImagePicker) {
//                        ImagePicker(selectedImage: $selectedImage) { image in
//                            if let image = image {
//                                processImage(image)
//                            }
//                        }
//                    }
//                }
//                .padding()
//            }
//            .navigationTitle("Scan OCR")
//            .onAppear {
//                // يمكنك إضافة أي إجراءات إضافية عند ظهور الواجهة
//            }
//        }
//    }
//    
//    private func processImage(_ image: UIImage) {
//        let textRecognizer = TextRecognizer()
//        textRecognizer.recognizeText(from: image) { recognizedText in
//            DispatchQueue.main.async {
//                if let outputText = recognizedText {
//                    addScan(content: outputText)
//                }
//            }
//        }
//    }
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        // تأكيد الحفظ
//        isSaving = true
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//            // تأكيد الحفظ بعد ثانية
//            isSaving = false
//            // يمكن إضافة تنبيه أو رسالة هنا
//            print("تم حفظ المسح: \(content)")
//        }
//        
//        if scans.count > 10 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//            }
//        }
//    }
//}
//
//struct HistoryView: View {
//    var scans: [ScanEntity]
//    
//    var body: some View {
//        List(scans) { scan in
//            NavigationLink(destination: ScrollView {
//                Text(scan.content)
//                    .padding()
//                    .font(.custom("Maqroo-Regular", size: 18))
//            }) {
//                Text(scan.content)
//                    .lineLimit(1)
//                    .font(.custom("Maqroo-Regular", size: 16))
//            }
//        }
//        .navigationTitle("History")
//    }
//}
//
//#Preview {
//    ContentView()
//}
/////////////////////////////////////////////
//import SwiftUI
//import SwiftData
//import VisionKit
//
//struct ContentView: View {
//    @Environment(\..modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var showScannerSheet = true
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage? = nil
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                HStack {
//                    Button(action: {
//                        self.showScannerSheet = true
//                    }, label: {
//                        Image(systemName: "doc.text.viewfinder")
//                            .font(.title)
//                    })
//                    .sheet(isPresented: $showScannerSheet, content: {
//                        self.makeScannerView()
//                    })
//                    
//                    Spacer()
//                    
//                    Button(action: {
//                        self.showImagePicker = true
//                    }, label: {
//                        Image(systemName: "photo.on.rectangle.angled")
//                            .font(.title)
//                    })
//                    .sheet(isPresented: $showImagePicker) {
//                        ImagePicker(selectedImage: $selectedImage) { image in
//                            if let image = image {
//                                processImage(image)
//                            }
//                        }
//                    }
//                }
//                .padding()
//                
//                if scans.isEmpty {
//                    Text("No scans yet")
//                        .font(.custom("Maqroo-Regular", size: 20))
//                        .fontWeight(.bold)
//                        .padding()
//                } else {
//                    List(scans) { scan in
//                        NavigationLink(destination: ScrollView {
//                            Text(scan.content)
//                                .padding()
//                                .font(.custom("Maqroo-Regular", size: 18))
//                        }) {
//                            Text(scan.content)
//                                .lineLimit(1)
//                                .font(.custom("Maqroo-Regular", size: 16))
//                        }
//                    }
//                }
//            }
//            .navigationTitle("صور")
//            .onAppear {
//                self.showScannerSheet = true
//            }
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(scanButtonText: "", completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                addScan(content: outputText)
//            }
//            self.showScannerSheet = false
//        })
//    }
//    
//    private func processImage(_ image: UIImage) {
//        let textRecognizer = TextRecognizer()
//        textRecognizer.recognizeText(from: image) { recognizedText in
//            DispatchQueue.main.async {
//                if let outputText = recognizedText {
//                    addScan(content: outputText)
//                }
//            }
//        }
//    }
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        // Save the context immediately to ensure the list updates
//        do {
//            try modelContext.save()
//        } catch {
//            print("Failed to save context: \(error)")
//        }
//        
//        // Remove the oldest scan if there are more than 10
//        if scans.count > 10 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//                // Save again to reflect the deletion
//                do {
//                    try modelContext.save()
//                } catch {
//                    print("Failed to save context after deletion: \(error)")
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
//import SwiftUI
//import SwiftData
//import VisionKit
//
//struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
//    
//    @State private var showScannerSheet = true
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage? = nil
//    @State private var navigateToText = false
//    @State private var extractedText = ""
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                HStack {
//                    Button(action: {
//                        self.showScannerSheet = true
//                    }, label: {
//                        Image(systemName: "doc.text.viewfinder")
//                            .font(.title)
//                    })
//                    .sheet(isPresented: $showScannerSheet, content: {
//                        self.makeScannerView()
//                    })
//                    
//                    Spacer()
//                    
//                    Button(action: {
//                        self.showImagePicker = true
//                    }, label: {
//                        Image(systemName: "photo.on.rectangle.angled")
//                            .font(.title)
//                    })
//                    .sheet(isPresented: $showImagePicker) {
//                        ImagePicker(selectedImage: $selectedImage) { image in
//                            if let image = image {
//                                processImage(image)
//                            }
//                        }
//                    }
//                }
//                .padding()
//                
//                if scans.isEmpty {
//                    Text("No scans yet")
//                        .font(.custom("Maqroo-Regular", size: 20))
//                        .fontWeight(.bold)
//                        .padding()
//                } else {
//                    List(scans) { scan in
//                        NavigationLink(destination: ScrollView {
//                            Text(scan.content)
//                                .padding()
//                                .font(.custom("Maqroo-Regular", size: 18))
//                        }) {
//                            Text(scan.content)
//                                .lineLimit(1)
//                                .font(.custom("Maqroo-Regular", size: 16))
//                        }
//                    }
//                }
//                
//                NavigationLink(destination: TextView(text: extractedText), isActive: $navigateToText) {
//                    EmptyView()
//                }
//            }
//            .navigationTitle("Scan OCR")
//            .onAppear {
//                self.showScannerSheet = true
//            }
//        }
//    }
//    
//    private func makeScannerView() -> ScannerView {
//        ScannerView(scanButtonText: "", completion: { textPerPage in
//            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
//                addScan(content: outputText)
//                navigateToTextView(outputText)
//            }
//            self.showScannerSheet = false
//        })
//    }
//    
//    private func processImage(_ image: UIImage) {
//        let textRecognizer = TextRecognizer()
//        textRecognizer.recognizeText(from: image) { recognizedText in
//            DispatchQueue.main.async {
//                if let outputText = recognizedText {
//                    addScan(content: outputText)
//                    navigateToTextView(outputText)
//                }
//            }
//        }
//    }
//    
//    private func addScan(content: String) {
//        let newScan = ScanEntity(content: content)
//        modelContext.insert(newScan)
//        
//        // Save the context immediately to ensure the list updates
//        do {
//            try modelContext.save()
//        } catch {
//            print("Failed to save context: \(error)")
//        }
//        
//        // Remove the oldest scan if there are more than 10
//        if scans.count > 10 {
//            if let oldestScan = scans.last {
//                modelContext.delete(oldestScan)
//                // Save again to reflect the deletion
//                do {
//                    try modelContext.save()
//                } catch {
//                    print("Failed to save context after deletion: \(error)")
//                }
//            }
//        }
//    }
//    
//    private func navigateToTextView(_ text: String) {
//        extractedText = text
//        navigateToText = true
//    }
//}
//
//struct TextView: View {
//    var text: String
//    @State private var backgroundColor: Color = .white
//    @State private var fontSize: CGFloat = 18
//    @State private var fontColor: Color = .black
//    
//    var body: some View {
//        VStack {
//            ScrollView {
//                Text(text)
//                    .font(.custom("Maqroo-Regular", size: fontSize))
//                    .foregroundColor(fontColor)
//                    .padding()
//                    .background(backgroundColor)
//                    .multilineTextAlignment(.leading)
//            }
//            
//            Spacer()
//            
//            // إعدادات التحكم
//            VStack {
//                HStack {
//                    Text("Background Color:")
//                    ColorPicker("", selection: $backgroundColor)
//                        .labelsHidden()
//                }
//                .padding()
//                
//                HStack {
//                    Text("Font Size:")
//                    Slider(value: $fontSize, in: 12...30, step: 1)
//                        .frame(width: 200)
//                }
//                .padding()
//                
//                HStack {
//                    Text("Font Color:")
//                    ColorPicker("", selection: $fontColor)
//                        .labelsHidden()
//                }
//                .padding()
//            }
//            .background(Color(UIColor.secondarySystemBackground))
//            .cornerRadius(10)
//            .padding()
//            
//            NavigationLink(destination: ContentView()) {
//                Text("Return to Camera")
//                    .padding()
//                    .background(Color.red)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//            }
//            .padding()
//        }
//        .navigationBarTitle("Result", displayMode: .inline)
//    }
//}
//
//#Preview {
//    ContentView()
//}
import SwiftUI
import SwiftData
import VisionKit

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \ScanEntity.date, order: .reverse) private var scans: [ScanEntity]
    
    @State private var showScannerSheet = true
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage? = nil
    @State private var navigateToText = false
    @State private var extractedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        self.showScannerSheet = true
                    }, label: {
                        Image(systemName: "doc.text.viewfinder")
                            .font(.title)
                    })
                    .sheet(isPresented: $showScannerSheet, content: {
                        self.makeScannerView()
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.showImagePicker = true
                    }, label: {
                        Image(systemName: "photo.on.rectangle.angled")
                            .font(.title)
                    })
                    .sheet(isPresented: $showImagePicker) {
                        ImagePicker(selectedImage: $selectedImage) { image in
                            if let image = image {
                                processImage(image)
                            }
                        }
                    }
                }
                .padding()
                
                if scans.isEmpty {
                    Text("No scans yet")
                        .font(.custom("Maqroo-Regular", size: 20))
                        .fontWeight(.bold)
                        .padding()
                } else {
                    List(scans) { scan in
                        NavigationLink(destination: EditScanPage(scanEntity: scan)) {
                            Text(scan.content)
                                .lineLimit(1)
                                .font(.custom("Maqroo-Regular", size: 16))
                        }
                    }
                }
            }
            .navigationTitle("Scan OCR")
            .onAppear {
                self.showScannerSheet = true
            }
        }
    }
    
    private func makeScannerView() -> ScannerView {
        ScannerView(scanButtonText: "", completion: { textPerPage in
            if let outputText = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
                addScan(content: outputText)
                navigateToTextView(outputText)
            }
            self.showScannerSheet = false
        })
    }
    
    private func processImage(_ image: UIImage) {
        let textRecognizer = TextRecognizer()
        textRecognizer.recognizeText(from: image) { recognizedText in
            DispatchQueue.main.async {
                if let outputText = recognizedText {
                    addScan(content: outputText)
                    navigateToTextView(outputText)
                }
            }
        }
    }
    
    private func addScan(content: String) {
        let newScan = ScanEntity(content: content)
        modelContext.insert(newScan)
        
        // Save the context immediately to ensure the list updates
        do {
            try modelContext.save()
        } catch {
            print("Failed to save context: \(error)")
        }
        
        // Remove the oldest scan if there are more than 10
        if scans.count > 10 {
            if let oldestScan = scans.last {
                modelContext.delete(oldestScan)
                // Save again to reflect the deletion
                do {
                    try modelContext.save()
                } catch {
                    print("Failed to save context after deletion: \(error)")
                }
            }
        }
    }
    
    private func navigateToTextView(_ text: String) {
        extractedText = text
        navigateToText = true
    }
}

struct EditScanPage: View {
    @Environment(\.modelContext) private var modelContext
    var scanEntity: ScanEntity
    
    @State private var backgroundColor: Color = .white
    @State private var fontSize: CGFloat = 18
    @State private var fontColor: Color = .black
    @State private var text: String
    
    init(scanEntity: ScanEntity) {
        self.scanEntity = scanEntity
        self._text = State(initialValue: scanEntity.content)
    }
    
    var body: some View {
        VStack {
            ScrollView {
                Text(text)
                    .font(.custom("Maqroo-Regular", size: fontSize))
                    .foregroundColor(fontColor)
                    .padding()
                    .background(backgroundColor)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            // إعدادات التحكم
            VStack {
                HStack {
                    Text("Background Color:")
                    ColorPicker("", selection: $backgroundColor)
                        .labelsHidden()
                }
                .padding()
                
                HStack {
                    Text("Font Size:")
                    Slider(value: $fontSize, in: 12...30, step: 1)
                        .frame(width: 200)
                }
                .padding()
                
                HStack {
                    Text("Font Color:")
                    ColorPicker("", selection: $fontColor)
                        .labelsHidden()
                }
                .padding()
            }
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(10)
            .padding()
            
            Button(action: {
                saveChanges()
            }) {
                Text("Save Changes")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationBarTitle("Edit Scan", displayMode: .inline)
    }
    
    private func saveChanges() {
        // تحديث النص في الكائن
        scanEntity.content = text
        // حفظ التغييرات
        do {
            try modelContext.save()
        } catch {
            print("Failed to save changes: \(error)")
        }
    }
}

#Preview {
    ContentView()
}
