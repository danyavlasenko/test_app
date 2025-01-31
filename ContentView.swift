
import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var computerCard = "card6"
    
    @State var playerScore = 0
    @State var computerScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                
//                Image("button")
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.headline)
                            
                            
                    }
                    Spacer()
                    VStack{
                        Text("Computer")
                            .font(.largeTitle)
                            .padding(.bottom, 10.0)
                        Text(String(computerScore))
                            .font(.headline)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                .bold()
                Spacer()
                
            }
        }
        
    }
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        var computerCardValue = Int.random(in: 2...14)
        computerCard = "card" + String(computerCardValue)
        if(playerCardValue > computerCardValue){
            playerScore += 1
        } else if(playerCardValue < computerCardValue){
            computerScore += 1
        }
    }
}

#Preview {
    ContentView()
}
