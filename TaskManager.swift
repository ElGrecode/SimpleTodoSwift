import UIKit

// Creates a global instance of our taskManager object
var taskMGR: TaskManager = TaskManager()

// The base object we create our tasks from
struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

// Class TaskManager blueprint for our global taskMGR object instance
class TaskManager: NSObject {
    var tasks : [task] = []
    func addTask(name:String, desc:String){
        tasks.append(task(name:name, desc:desc))
    }
}
