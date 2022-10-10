//
//  main.swift
//  DemoCollectionType
//
//  Created by Trần Văn Cam on 27/09/2022.
//

import Foundation
//
//nhapTen()
//tinhTong(soA: 5, soB: 10)
//tinhTong(soA: 10, soB: 15)
//
//let tongA = tinhTong(a: 399, b: 48)
//print("Tổng A là: ", tongA)

// MARK: CollectionType (Kiểu dữ liệu tập hợp)
// Là 1 tập hợp bao gồm nhiều phần tử có cùng kiểu dữ liệu.
// Truy xuất (duyệt) các phần tử trong rất nhanh vì các ô nhớ được phân phát cạnh nhau

// Khởi tạo mảng
let arrayInts: [Int] // Khai báo một mảng gồm các số nguyên

var arrayNames: [String] = ["Tung", "Hai", "Hung"] // Khai báo và khởi tạo 3 giá trị cho mảng
print(arrayNames)

let arrayOne: [Int] = [Int].init(repeating: 1, count: 12)
print(arrayOne)

// Các thuộc tính giống string
print(arrayNames.count)
print("ArrayNames is Empty?", arrayNames.isEmpty)

print(arrayNames.first, arrayNames.last) // lấy nhanh phần tử đầu và cuối

// Truy xuất đến một phần tử trong mảng
// Phải thông qua index (vị trí của phần tử ở trong mảng, tính bắt đầu từ 0 đến count-1)

print(arrayNames[1]) // lấy ra phần tử index 1 tức là vị trí 2

// Thêm phần tử vào mảng
// 1. Thêm 2 phần tử
arrayNames.append("Quỳnh") // thêm vào cuối

print(arrayNames)

// 2. Thêm nhiều phần tử (thêm 1 mảng)
arrayNames.append(contentsOf: ["ABC", "DEF", "Tech"])

print(arrayNames)

arrayNames += ["master", "IOS"] // thực hiện cùng kiểu
print(arrayNames)

// Xoá phần tử
//arrayNames.removeAll() // Xoá tất cả phần tử
print(arrayNames)

arrayNames.removeFirst(); // xoá phần tử đầu
arrayNames.removeLast(); // Xoá phần tử cuối
arrayNames.remove(at: 3)
print(arrayNames)

// Sắp xếp
print(arrayNames.sorted()) // sắp xếp tăng đần
print(arrayNames.sorted(by: >)) // sắp xếp giảm dần

// Lọc những phần tử theo yêu cầu
//VD: Lọc ra những phần tử có chữ "a" trong đó

let arrFilters = arrayNames.filter { name in
    // điều kiện để lọc
    name.contains("a")
}
print(arrFilters)

// Chèn phần tử mới vào vị trí
arrayNames.insert("Mac mini", at: 0)
print(arrayNames)

// sửa phần tử

arrayNames[0] = "Macbook pro"
print(arrayNames)

// Lấy ra phần tử đầu tiên thoả mãn điều kiện
let firstHai = arrayNames.first { name in
    name.contains("u")
}
print(firstHai)

let firstIndexU = arrayNames.firstIndex { name in
    name.contains("u")
}
print(firstIndexU)
// ngoài ra còn có last index dùng tương tự như 2 hàm trên

// map: áp dụng 1 thao tác cho tất cả phần tử trong mảng

let arrayRemoveH = arrayNames.map { name in
    name.replacingOccurrences(of: "H", with: "")
}
print(arrayRemoveH)

let arrTwo = arrayOne.map { number in
    number*2
}
print(arrTwo)
