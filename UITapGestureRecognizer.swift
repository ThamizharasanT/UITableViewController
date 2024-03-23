class LoginVC: UITableViewController,UITextFieldDelegate {
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return.lightContent
    }
   override func viewDidLoad() {
        super.viewDidLoad()
        schoolDropdownApi()
     // Create a UITapGestureRecognizer
     let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
         Add the gesture recognizer to the table view
        tableView.addGestureRecognizer(tapGesture)
     tableView.contentInset.top = -topSafeAreaInset()
       
    }
   @objc func handleTap(_ gestureRecognizer: UITapGestureRecognizer) {
      let location = gestureRecognizer.location(in: tableView)       if let indexPath = tableView.indexPathForRow(at: location) {
           // Handle the tap on the specific row at the indexPath
           print("Tapped row: \(indexPath.row)")
           self.view.endEditing(true)
       }
   }
}
