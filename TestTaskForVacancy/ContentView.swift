//
//  ContentView.swift
//  TestTaskForVacancy
//
//  Created by Khachatryan Arsen on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var stateForPicker = 0
    
    var body: some View {
        
        VStack{
            
            ScrollView{
                VStack{
                    
                    Button {
                        //
                    } label: {
                        ZStack() {
                            RoundedRectangle(cornerRadius: 4).fill(.green) .frame(width: 120,height: 35)
                            Text("Цена по крате") .tint(.white) .frame(width: 100,height: 20) .font(.system(size: 12))
                        }
                        
                    } .padding(.trailing,220)
                    
                    Image("tovar", label: Text("tovar")).frame(width: 10)
                    
                    HStack {
                        
                        Image(systemName: "star.fill") .foregroundStyle(.yellow) .padding(.leading)
                        Text("4.1")
                        Rectangle().fill(.gray).frame(width: 1,height: 20)
                        Text("19 отзывов") .foregroundStyle(.gray)
                        Spacer()
                        Image("skidka", label: Text("skidka")) .padding()
                    }
                } .padding(.top,120)
                VStack(alignment: .leading, content: {
                    Text("Добавка ''Липа'' к чаю 200 г") .font(.system(size: 45)).padding()
                    ZStack{
                        Rectangle() .foregroundStyle(.white).shadow(radius: 1)
                        VStack{
                            HStack{
                                Image("spain", label: Text("spain")).padding()
                                Text("Испания, Рихоа") .tint(.gray)
                                Spacer()
                            }
                            
                            Text("Описание").padding(.leading) .padding(.top) .bold()
                            Text ("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.") .padding(.leading) .padding(.top,4) .padding(.bottom)
                            
                            Text("Основные характеристики") .padding(.leading).padding(.top).padding(.trailing).bold()
                            
                            
                            HStack(alignment: .top, content: {
                                Text ("Производство").font(.system(size: 15))
                                Text("...............................") .foregroundStyle(.gray).font(.system(size: 13))
                                Text("Россия, Краснодарский край").font(.system(size: 15))
                            }).padding()
                            
                            
                            HStack(alignment: .top, content: {
                                Text ("Энергетическая  ценность, ккал/100 г").font(.system(size: 15))
                                Text("..............................") .foregroundStyle(.gray).font(.system(size: 13))
                                Text("25 ккал, 105 кДж").font(.system(size: 15))
                            }).padding()
                            
                            
                            HStack(alignment: .top, content: {
                                Text ("Жиры/100 г").font(.system(size: 15))
                                Text(".............................................................") .foregroundStyle(.gray).font(.system(size: 13))
                                Text("0,1 г").font(.system(size: 15))
                            }).padding()
                            
                            
                            HStack(alignment: .top, content: {
                                Text ("Белки/100 г").font(.system(size: 15))
                                Text(".............................................................") .foregroundStyle(.gray).font(.system(size: 13))
                                Text("1,3 г").font(.system(size: 15))
                            }).padding()
                            
                            
                            HStack(alignment: .top, content: {
                                Text ("Углеводы/100 г").font(.system(size: 15))
                                Text(".....................................................") .foregroundStyle(.gray).font(.system(size: 13))
                                Text("3,3 г").font(.system(size: 15))
                            }).padding()
                            
                            Text("Все характеристики").bold().foregroundStyle(.green) .font(.system(size: 25)) .padding()
                            HStack{
                                Text("Отзывы").bold().font(.system(size: 30))
                                Spacer()
                                Text("Все 152").bold().font(.system(size: 30)).foregroundStyle(.green)
                                
                            } .padding(.trailing).padding(.leading)
                            
                            ScrollView(.horizontal,content: {
                                HStack{
                                    
                                    ForEach(0 ..< 152) { item in
                                        ZStack{
                                            Rectangle().fill(.white).clipShape(RoundedRectangle(cornerRadius: 20)) .shadow(radius: 2) .frame(width: 270,height: 200) .padding()
                                            VStack(alignment: .leading, content: {
                                                Text("Александр В.").bold().font(.system(size: 25))
                                                Text("7 мая 2021") .foregroundStyle(.gray).font(.system(size: 20))
                                                HStack{
                                                    ForEach (0..<4){ item in
                                                        Image(systemName: "star.fill").foregroundStyle(.yellow)
                                                    }
                                                    Image(systemName: "star.fill").foregroundStyle(.gray)
                                                }.padding(.top,1)
                                                
                                                Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!").padding(.trailing) .padding(.top,4)
                                                
                                                
                                            }).frame(width: 250)
                                            
                                        }
                                    }
                                    
                                }
                            })
                            Button {
                                //
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 50) .stroke(.green, lineWidth: 4) .frame(width: 350,height: 50) .foregroundStyle(.gray)
                                    
                                    Text("Оставить отзыв") .font(.system(size: 25)).foregroundStyle(.green).bold()
                                }
                            }
                            
                        }
                    }
                })
                
                
                
                
                
            }.ignoresSafeArea().safeAreaInset(edge: .top) {
                ZStack {
                    Rectangle() .fill(Color(.white)).shadow(radius: 1)
                    HStack{
                        
                        Image(systemName: "arrow.left") .foregroundStyle(.green).padding()
                        Spacer()
                        Image(systemName: "list.clipboard").foregroundStyle(.green)
                        Image(systemName: "tray.and.arrow.up").foregroundStyle(.green)
                        Image(systemName: "heart").foregroundStyle(.green) .padding(.trailing)
                    }.padding(.top,50)
                    
                }.frame(height: 100).ignoresSafeArea()
            }
            
            VStack{
                
                Picker("picker", selection: $stateForPicker) {
                    Text("Шт").tag(0)
                    Text("Кг").tag(1)
                }.pickerStyle(SegmentedPickerStyle()) .frame(width: 350, height: 50, alignment: .center)
                
                
                HStack {
                    VStack(alignment: .leading, content: {
                        HStack{
                            Text("55.9").bold() .font(.system(size: 35)) .padding(.leading)
                            Text("₽/кг").bold().font(.system(size: 15))
                        }
                        
                        Text("199,0").foregroundStyle(.gray).background {
                            Rectangle().frame(width: 40, height: 1) .foregroundStyle(.gray)
                        }.padding(.leading)
                        
                        
                        
                    })
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 50).frame(width: 180, height: 55).padding().foregroundStyle(.green)
                        HStack{
                            
                            Button {
                                //
                            } label: {
                                Rectangle().frame(width: 20, height: 2) .foregroundStyle(.white)
                            }.padding(.trailing)
                            
                            VStack{
                                Text("1 шт").bold()
                                Text("120,0 р")
                            }.foregroundStyle(.white)
                            
                            
                            Button {
                                //
                            } label: {
                                ZStack{
                                    Rectangle().frame(width: 20, height: 2) .foregroundStyle(.white)
                                    Rectangle().frame(width: 2, height: 20) .foregroundStyle(.white)
                                }
                            }.padding(.leading)
                            
                        }
                    }
                }
                
                HStack {
                    
                    Button {
                        //
                    } label: {
                        VStack{
                            Image("tabbar1", label: Text("tabbar1"))
                            Text("Главная").foregroundStyle(.green)
                        }
                    }
                    Spacer()
                    Button {
                        //
                    } label: {
                        VStack{
                            Image("tabbar2", label: Text("tabbar2"))
                            Text("Каталог").foregroundStyle(.black)
                        }
                    }
                    Spacer()
                    Button {
                        //
                    } label: {
                        VStack{
                            Image("tabbar3", label: Text("tabbar3"))
                            Text("Корзина").foregroundStyle(.black)
                        }
                    }
                    Spacer()
                    Button {
                        //
                    } label: {
                        VStack{
                            Image("tabbar4", label: Text("tabbar4"))
                            Text("Профиль").foregroundStyle(.black)
                        }
                    }
                    
                } .padding()
                
            }
        }
    }
}

struct SecondView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button {
                    //
                } label: {
                    VStack{
                        Image("tabbar1", label: Text("tabbar1"))
                        Text("Главная").foregroundStyle(.green)
                    }
                }
                Spacer()
                Button {
                    //
                } label: {
                    VStack{
                        Image("tabbar2", label: Text("tabbar2"))
                        Text("Каталог").foregroundStyle(.black)
                    }
                }
                Spacer()
                Button {
                    //
                } label: {
                    VStack{
                        Image("tabbar3", label: Text("tabbar3"))
                        Text("Корзина").foregroundStyle(.black)
                    }
                }
                Spacer()
                Button {
                    //
                } label: {
                    VStack{
                        Image("tabbar4", label: Text("tabbar4"))
                        Text("Профиль").foregroundStyle(.black)
                    }
                }
                
            } .padding()
            

            
        }
        
        
    }
}

#Preview {
    ContentView()
}
