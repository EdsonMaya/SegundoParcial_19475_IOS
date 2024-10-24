//
//  ContentView.swift
//  SegundoParcial_19475
//
//  Created by Edson Maya Méndez on 23/10/24.
//

import SwiftUI

struct ContentView: View {

    // Variablessssss
    @State private var marioImg = "mario"
    @State private var luigiImg = "luigi"
    @State private var toadImg = "toad"
    @State private var bowserImg = "bowser"
    @State private var borderColorMario = Color.black
    @State private var borderColorLuigi = Color.black
    @State private var borderColorToad = Color.black
    @State private var borderColorBowser = Color.black
    @State private var phrase = ""
    @State var name : String = ""

    //Función para resetear las imagenes y los colores de bordes
    func resetImages() {
            marioImg = "mario"
            luigiImg = "luigi"
            toadImg = "toad"
            bowserImg = "bowser"
            borderColorMario = .black
            borderColorLuigi = .black
            borderColorToad = .black
            borderColorBowser = .black
        }

    var body: some View {
       
        Image("fondo")
            .resizable()
            .ignoresSafeArea()
            .frame(maxWidth: .infinity)
            .opacity(0.5)
            .overlay{
                

                VStack {
                    
                    TextField("Ingresa tu nombre", text: $name)
                        .padding()
                        .background(.white)
                        
                    
                    Text("Player Select")
                        .frame(maxWidth: .infinity, maxHeight: 70)
                        .background(.black)
                        .foregroundColor(.green)
                        .font(.system(size: 35))
                    //-------------------------------

                    HStack {
                        ZStack {
                            Image(marioImg)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .onTapGesture {
                                    resetImages()
                                    marioImg = (marioImg == "mario") ? "mario2" : "mario"
                                    borderColorMario = .red
                                    phrase = "It's a me \(name)!!!"
                                    
                                }

                            VStack {
                                Spacer()
                                Text("MARIO")
                                    .foregroundColor(.black)
                                    .frame(width: 180, height: 60)
                                    .background(
                                        LinearGradient(gradient: Gradient(colors: [Color.graygray, Color.white]), startPoint: .leading, endPoint: .trailing)
                                    )
                                    .font(.system(size: 30))
                            }
                        }
                        .frame(width: 180, height: 260)
                        .background(.black)
                        .border(borderColorMario, width: 6)

                        

                        //--------LUIGI----------------
                        ZStack {
                            Image(luigiImg)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .onTapGesture {
                                    resetImages()
                                    luigiImg = (luigiImg == "luigi") ? "luigi2" : "luigi"
                                    borderColorLuigi = .green
                                    phrase = "\(name)!!!! Where are you?"
                                }

                            VStack {
                                Spacer()
                                Text("LUIGI")
                                    .foregroundColor(.black)
                                    .frame(width: 180, height: 60)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.graygray, Color.white]), startPoint: .leading, endPoint: .trailing))
                                    .font(.system(size: 30))
                            }
                        }
                        .frame(width: 180, height: 260)
                        .background(.black)
                        .border(borderColorLuigi, width: 6)
                    }
                    //-------------TOAD-----------------
                    HStack {
                        ZStack {
                            Image(toadImg)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .onTapGesture {
                                    resetImages()
                                    toadImg = (toadImg == "toad") ? "toad2" : "toad"
                                    borderColorToad = .blue
                                    phrase = "Your \(name) is in another castle"
                                }
                            VStack {
                                Spacer()
                                Text("TOAD")
                                    .foregroundColor(.black)
                                    .frame(width: 180, height: 60)
                                    .background(
                                        LinearGradient(gradient: Gradient(colors: [Color.graygray, Color.white]), startPoint: .leading, endPoint: .trailing)
                                    )
                                    .font(.system(size: 30))
                            }
                        }

                        .frame(width: 180, height: 260)
                        .background(.black)
                        .border(borderColorToad, width: 6)

                        //------------BOWSER---------------
                        ZStack {
                            Image(bowserImg)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .onTapGesture {
                                    resetImages()
                                    bowserImg = (bowserImg == "bowser") ? "bowser2" : "bowser"
                                    borderColorBowser = .yellow
                                    phrase = "\(name)s \(name)s \(name)s!!!"
                                }
                            VStack {
                                Spacer()
                                Text("BOWSER")
                                    .foregroundColor(.black)
                                    .frame(width: 180, height: 60)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.graygray, Color.white]), startPoint: .leading, endPoint: .trailing))
                                    .font(.system(size: 30))
                            }
                        }
                        .frame(width: 180, height: 260)
                        .background(.black)
                        .border(borderColorBowser, width: 6)
                    }
                    // ------------Texto inferior------------------------
                                if !phrase.isEmpty {
                                    Text(phrase)
                                        .frame(maxWidth: .infinity, maxHeight: 70)
                                        .background(Color.black)
                                        .foregroundColor(.yellow)
                                        .font(.system(size: 25))
                                        .padding(.top, 20)
                                }
                }
                .padding()
            }
    }
}
#Preview {
    ContentView()
}
