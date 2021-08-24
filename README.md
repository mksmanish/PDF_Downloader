# PDF_Downloader
This App will take the Pdf URL and download that from the server and also.You can view that in PDFKit.<br>
1.Put the url in the text box ,it should of the some pdf url.<br>
2.Download using the button.<br>
3.content view also.it is having the content preview functionality.<br>
  some code snippets
  ```
    func setupPDFView() {
    
           let pdfView = PDFView()
           pdfView.translatesAutoresizingMaskIntoConstraints = true
           pdfView.autoScales = true
           pdfView.displayMode = .singlePageContinuous
           pdfView.displayDirection = .vertical
           view.addSubview(pdfView)
           
           // gettting the downloaded pdf
           
           if let document = PDFDocument(url:pdfUrl) {
               pdfView.document = document
           }
    }
  ```
<br>   
<img src = "https://github.com/mksmanish/PDF_Downloader/blob/main/Screenshot/Simulator%20Screen%20Shot%20-%20iPhone%2012%20Pro%20Max%20-%202021-08-22%20at%2014.04.57.png" width="200" height="400" ><br>
<img src = "https://github.com/mksmanish/PDF_Downloader/blob/main/Screenshot/Simulator%20Screen%20Shot%20-%20iPhone%2012%20Pro%20Max%20-%202021-08-22%20at%2014.04.53.png" width="200" height="400" ><br>

