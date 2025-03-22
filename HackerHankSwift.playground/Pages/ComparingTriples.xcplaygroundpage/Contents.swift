import Foundation

func compareTriples(a: [Int], b: [Int]) -> [Int] {
    var scores = [0,0]
    for i in 0..<a.count {
        if a[i] > b[i] {
            scores[0] += 1
        } else if a[i] < b[i] {
            scores[1] += 1
        }
    }
    return scores
}

func compareTriplesZIP(a: [Int], b: [Int]) -> [Int]? {
    var scores = [0,0]
    for (valA, valB) in zip(a,b) {
        if valA > valB {
            scores[0] += 1
        } else if valA < valB {
            scores[1] += 1
        }
    }
    return scores
}

let compTriples = compareTriples(a: [1,10,2,15], b: [10,5,1,15])
print(compTriples)
