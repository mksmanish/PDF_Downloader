//
//  ViewController.swift
//  PDF_Downloader
//
//  Created by manish on 22/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLink: UITextField!
    var pdfUrl: URL?
    var putPDFname :String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
    }
   
    @IBAction func btnPreview(_ sender: Any) {
        
        let storyBd = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBd.instantiateViewController(identifier: "PdfViewController") as! PdfViewController
        vc.pdfUrl = pdfUrl
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnDownload(_ sender: Any) {
        //  "https://www.tutorialspoint.com/swift/swift_tutorial.pdf"
        guard let url = URL(string:txtLink.text!) else {
            return
        }
        let urlSession = URLSession(configuration: .default,delegate:self,delegateQueue: OperationQueue())
        let downloadTask = urlSession.downloadTask(with: url)
        downloadTask.resume()
    }
}
extension ViewController:URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("file downoded \(location)")
        
        guard let url = downloadTask.originalRequest?.url else {
            return
        }
        
        let docsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let destionation = docsPath.appendingPathComponent(url.lastPathComponent)
        
        try? FileManager.default.removeItem(at: destionation)
        
        do {
            try FileManager.default.copyItem(at: location, to: destionation)
            self.pdfUrl = destionation
        }catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}

