import UIKit
import CoreData

class ViewController: UIViewController {

    //let defaults = NSUserDefaults.standardUserDefaults()
    //defaults.setInteger(199, forKey: "MyNumber")

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    let newPost = Post(title: "Post One", name: "Billy Farroll")
        
        save()
        
        let posts = loadPosts()
        for post in posts {
        print(post.title + "By" + post.name)
        
        
        }
    }
    
    
    func save() {
        
        let appDelegate = UIApplication.sharedApplication().delegate as!
        AppDelegate
        let managedContext = appDelegate.managedObjectContext
    
        
        do {
        
           try managedContext.save()
        
        } catch let error as NSError {
        
        print(error)
        
        }
    
    }
    
    
    func loadPosts() -> [Post] {
    
    let appDelegate = UIApplication.sharedApplication().delegate as!
        AppDelegate
    let managedContext = appDelegate.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Post")
    
        
        var posts = [Post]()
        
        do {
        
        let results = try managedContext.executeFetchRequest(fetchRequest)
            posts = results as! [Post]
        
        } catch let error as NSError {
        
        print(error)
        
        }
        
        return posts
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

