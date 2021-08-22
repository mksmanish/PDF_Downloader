//
//  PdfViewController.swift
//  PDF_Downloader
//
//  Created by manish on 22/08/21.
//

import UIKit
import PDFKit

class PdfViewController: UIViewController {
    
    var pdfView = PDFView()
    var pdfUrl : URL!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(pdfView)
        // Do any additional setup after loading the view.
        if let document = PDFDocument(url:pdfUrl) {
            pdfView.document = document
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.dismiss(animated: true, completion: nil)
        })
   //     self.setupPDFView()
        
    }
    func setupPDFView() {
           let pdfView = PDFView()
           pdfView.translatesAutoresizingMaskIntoConstraints = true
           view.addSubview(pdfView)
           
          
           pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
           pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
           pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
           pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
           pdfView.autoScales = true
           pdfView.displayMode = .singlePageContinuous
           pdfView.displayDirection = .vertical
           
           let thumbnailView = PDFThumbnailView()
           thumbnailView.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(thumbnailView)
           
           thumbnailView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
           thumbnailView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
           thumbnailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 10).isActive = true
           thumbnailView.heightAnchor.constraint(equalToConstant: 120).isActive = true
           thumbnailView.thumbnailSize = CGSize(width: 120, height: 60)
           thumbnailView.layoutMode = .horizontal
           thumbnailView.pdfView = pdfView
           
           // gettting the downloaded pdf
           if let document = PDFDocument(url:pdfUrl) {
               pdfView.document = document
           }
    }

    
    override func viewDidLayoutSubviews() {
        pdfView.frame = self.view.frame
    }

}
