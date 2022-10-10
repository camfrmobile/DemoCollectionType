//
//  Function.swift
//  DemoCollectionType
//
//  Created by Trần Văn Cam on 27/09/2022.
//

import Foundation

// MARK: Hàm

// 1. Hàm không có tham số trả về, không có tham số truyền vào
func nhapTen() {
    print("Tên của bạn là: Camoi")
    print("")
}
// 2. Hàm có tham số truyền vào, không có kiểu trả về
// soA và soB là tham số truyền vào, sử dụng trong thân hàm.
func tinhTong(soA: Int, soB: Int) {
    let tong = soA + soB
    print("Tổng của \(soA) và \(soB) là: \(tong)")
}

// hàm có thể đặt trùng tên nhưng phải khác tham số truyền vào
// 3. Hàm có kiểu trả về
func tinhTong(a: Int, b: Int) -> Int {
    let tong = a + b
    // Đối với hàm có kiểu trả về phải đúng kiểu dữ liệu
    return tong
}

// BTVD: Tính Chu vi Diện tích Hình chữ nhật

func tinhHCN(chieuDai: Float, chieuRong: Float) {
    let chuVi = tinhChuVi(dai: chieuDai, rong: chieuRong)
    print("Chu vi hcn là:", chuVi)
    print("Dien tich hcn là:", tinhDienTich(dai: chieuDai, rong: chieuRong))
}
// Hàm tính chu vi có kiểu dữ liệu trả về
func tinhChuVi(dai: Float, rong: Float) -> Float {
    
    return (dai+rong)*2
}
// Hàm tính diện tích
func tinhDienTich(dai: Float, rong: Float) -> Float {
    return dai*rong
}
