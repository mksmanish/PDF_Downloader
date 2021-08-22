# PDF_Downloader
This App will take the Pdf URL and download that from the server and also ,you can view that.<br>
1.Put the url in the text box ,it should of the some pdf url.<br>
2.Download using the button.<br>
3.content view also.it is having the content preview functionality.<br>
  some code snippets
  ```
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
           thumbnailView.thumbnailSize = CGSize(width: 120, height: 50)
           thumbnailView.layoutMode = .horizontal
           thumbnailView.pdfView = pdfView
           
           // gettting the downloaded pdf
           if let document = PDFDocument(url:pdfUrl) {
               pdfView.document = document
           }
    }
    ```
<br>   
<img src = "https://github.com/mksmanish/PDF_Downloader/blob/main/Screenshot/Simulator%20Screen%20Shot%20-%20iPhone%2012%20Pro%20Max%20-%202021-08-22%20at%2014.04.57.png" width="200" height="400" ><br>
<img src = "https://github.com/mksmanish/PDF_Downloader/blob/main/Screenshot/Simulator%20Screen%20Shot%20-%20iPhone%2012%20Pro%20Max%20-%202021-08-22%20at%2014.04.53.png" width="200" height="400" ><br>

