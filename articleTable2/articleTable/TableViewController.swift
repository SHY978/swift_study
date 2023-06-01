//
//  TableViewController.swift
//  articleTable
//
//  Created by 김원기 on 2023/05/25.
//
import UIKit
import Alamofire
import SDWebImage



class TableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet var tvList: UITableView!
    
    var articles : [Article]? = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.delegate = self
        
        fetchNews("apple")
        
    }
    
    //        fetchNews("apple") { error, articles in
    //            DispatchQueue.main.async {
    //                self.articles = articles
    //                self.tvList.reloadData()
    //            }
    //        }
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem


// MARK: - Table view data source

func fetchNews(_ keyword:String){
    let urlString = "https://newsapi.org/v2/everything?from=2023-05-23&to=2023-05-23&sortBy=popularity&apiKey=db89878a37f141f3a09c8a61d0ced395&q=" + keyword
    let url = URL(string: urlString)
    AF.request(url!, method: HTTPMethod.get, parameters: nil, headers: nil, interceptor: nil, requestModifier: nil).responseDecodable(of:ArticleResponse.self){
        response in
        
        if let error = response.error {
            
        }
        
        if let articles = response.value?.articles {
            DispatchQueue.main.async {
                self.articles = articles
                self.tvList.reloadData()
            }
        }
    }
}

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles!.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! ArticleTableViewCell
        
        let article = self.articles![indexPath.row]
        
        cell.lblTitle.text = article.title!
        cell.lblContent.text = article.content!
        if let urlToImage = article.urlToImage {
            let url = URL(string: urlToImage)
            cell.imgView.sd_setImage(with: url)
        }
        return cell
        
    }
    
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
         if segue.identifier == "sgDetail" {
             let cell = sender as! ArticleTableViewCell
             
             let indexPath = self.tvList.indexPath(for: cell)
             
             let article = self.articles![indexPath!.row]
             
             let detailView = segue.destination as! DetailViewController
             
             detailView.article = article
             
             detailView.img = cell.imgView.image
         }
     }
     
    
    
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        fetchNews(searchBar.text!)
    }
    
}
