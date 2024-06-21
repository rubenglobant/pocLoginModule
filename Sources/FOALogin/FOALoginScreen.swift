import SwiftUI

public struct FOALoginScreen: View {
    @State private var navigateToLogin = false
    
    public init() { }
    
    public var body: some View {
        NavigationView {
            ZStack {
//                Image("background_image")
//                    .resizable()
//                    .scaledToFill()
//                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Text("FIFA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Start your journey")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.top, 1)
                    
                    Text("Enjoy the latest content about Football all over the world")
                        .font(.body)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                        .padding(.top, 1)
                    
                    Spacer()
                    
                    VStack(spacing: 16) {
                        NavigationLink(destination: FOASigninScreen(), isActive: $navigateToLogin) {
                            Button(action: {
                                navigateToLogin = true
                            }) {
                                Text("SIGN IN")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                        }
                        
                        Button(action: {
                            // Sign Up action
                        }) {
                            Text("SIGN UP")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.clear)
                                .foregroundColor(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        
                        Button(action: {
                            // Maybe Later action
                        }) {
                            Text("Maybe later")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.horizontal, 40)
                    
                    Spacer()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        FOALoginScreen()
    }
}
