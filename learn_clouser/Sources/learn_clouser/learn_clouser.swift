@main
public struct learn_clouser {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(learn_clouser().text)
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"] 
        let reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
        print(reversedNames)
    }
}
