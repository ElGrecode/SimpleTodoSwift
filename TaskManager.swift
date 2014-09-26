import UIKit

var taskMGR: TaskManager = TaskManager()

// The base object we create our tasks from
struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks : [task] = []
    func addTask(name:String, desc:String){
        tasks.append(task(name:name, desc:desc))
    }
}
