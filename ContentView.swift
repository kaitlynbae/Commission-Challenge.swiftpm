import SwiftUI

struct ContentView: View {
    let basePay = 500
    @State var commissionPay = 0 
    @State var totalPay = 0
    var body: some View {
        HStack {
            
            VStack (alignment: .trailing, spacing: 30){
                Text("Base Pay")
                Text("Commission Pay")
                Text("Total Pay")
            }
            
            VStack (alignment: .leading, spacing: 30) {
                Text("\(basePay)")
                TextField("Enter Commission Pay" ,
                          value: $commissionPay, format: .currency(code: "USD"))
                Text("$\(totalPay)")
            }
            .padding()
            
            Button("Calculate"){ 
                totalPay = basePay + commissionPay
            }
            Button("Clear"){
                clear()
            }
        }
        
    }
   func clear(){
       totalPay = 0 
       commissionPay = 0
   } 
}
