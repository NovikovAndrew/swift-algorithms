/*
 Dijkstra's-algorithm containts 4 steps
 1. Min time complexity
 2. Update neg
 3. Repeate for all
 4. Calculate total way
 */

/*
 
 step 1
 
        / -------6 min(A) \
       /        |         \
start |         | 3 min    | end
       \        |         /
        \-------2 min(B) /
         
 A - 6
 B - 2
 end - inf
 
 
 step 2 from bo to all
 
 
        / -------6 min(A) \
       /        |          \ 1 min
start |         | 3 min    | end
       \        |         / 5 min
        \-------2 min(B) /
         
 A - 5
 B - 2
 end - 7
 
 wa
 */

var graph = [String: Int]()

enum Entity {
    static let book = "book"
    static let poster = "poster"
    static let plastina = "plastina"
    static let baraban = "baraban"
    static let gitara = "gitara"
    static let pianino = "pianino"
}
