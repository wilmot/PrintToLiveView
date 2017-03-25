// `lprint()` is a function that lets you print to Swift Playground's Live View. To enable Live View printing, you must add the line `lprintToLiveView()` to the bottom of your playground page. Any copies of this playground will be able to print to the Live View. Tap `Run My Code` to view the output.

lprint("Hello, playground. We're live!")

let a = 42, b = true, c = "Hi"
lprint(a,b,c)

for i in 1...100 {
    lprint("\ti = \(i)")
}

lprintToLiveView()
