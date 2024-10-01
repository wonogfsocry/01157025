//
//  ContentView.swift
//  01157025
//
//  Created by user10 on 2024/9/24.
//

import SwiftUI

func openYouTubeVideo(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
}

struct StarShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 星星的點
        let points = 5
        let adjustment = CGFloat.pi / 2  // 旋轉調整
        let starExtrusion: CGFloat = 0.5  // 星星內凹的比例
        
        // 計算每個點的位置
        for i in 0..<points * 2 {
            let angle = (CGFloat(i) * CGFloat.pi / CGFloat(points)) + adjustment
            let radius = (i % 2 == 0) ? rect.width / 2 : rect.width / 2 * starExtrusion
            
            let x = rect.midX + radius * cos(angle)
            let y = rect.midY + radius * sin(angle)
            
            if i == 0 {
                path.move(to: CGPoint(x: x, y: y))
            } else {
                path.addLine(to: CGPoint(x: x, y: y))
            }
        }
        
        path.closeSubpath()
        return path
    }
}

struct ContentView: View {
    @State private var offsetX: CGFloat = -137.5
    @State private var moveRight = true
    @State var Imagenum = 1
    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight:.infinity)
                .ignoresSafeArea()
            if Imagenum == 1{
                VStack{
                    Image(.gojo)
                        .resizable()
                        .frame(width: 350.0, height: 450.0)
                        .scaledToFill()
                        .overlay(content:{
                            ZStack{
                                Capsule()
                                    .frame(width: 305.0, height: 55.0)
                                    .foregroundColor(.black)
                                    .offset(x:230, y:100)
                                Capsule()
                                    .frame(width: 300.0, height: 50.0)
                                    .foregroundColor(.white)
                                    .offset(x:230, y: 100.0)
                                    .overlay(content:{
                                        Text("**身高 190cm**")
                                            .foregroundColor(Color.black)
                                            .font(.custom("Cubic_11", size: 21.5))
                                            .offset(x:142, y: 100.0)
                                    })
                            }
                            ZStack{
                                Capsule()
                                    .frame(width: 305.0, height: 55.0)
                                    .foregroundColor(.black)
                                    .offset(x:265, y: 152.5)
                                Capsule()
                                    .frame(width: 300.0, height: 50.0)
                                    .foregroundColor(.white)
                                    .offset(x:265, y: 152.5)
                                    .overlay(content:{
                                        Text("**生日 12/7**")
                                            .foregroundColor(Color.black)
                                            .font(.custom("Cubic_11", size: 16))
                                            .offset(x:158, y: 152.5)
                                    })
                            }
                            ZStack{
                                StarShape()
                                    .fill(Color.black)
                                    .frame(width: 140, height: 140)
                                    .offset(x:-160, y:-75)
                                    .padding()
                                StarShape()
                                    .fill(Color.white)
                                    .frame(width: 135, height: 135)
                                    .offset(x:-160, y:-75)
                                    .padding()
                                    .overlay(content:{
                                        Text("**最強**")
                                            .foregroundColor(Color.black)
                                            .font(.custom("Cubic_11", size: 25))
                                            .offset(x:-150, y: -95.0)
                                            .rotationEffect(.degrees(-7.5))
                                    })
                            }
                            Image(.name)
                                .resizable()
                                .frame(width: 200.0, height: 240.0)
                                .offset(x:130, y: -190)
                                .overlay(content:{
                                    Text("**五條 悟**")
                                        .foregroundColor(Color.black)
                                        .font(.custom("NewTegomin-Regular", size: 27.5))
                                        .offset(x:150, y: -168.5)
                                        .rotationEffect(.degrees(-7.5))
                                })
                        })
                    HStack{
                        ZStack{
                            Capsule()
                                .frame(width: 355.0, height: 250.0)
                                .foregroundColor(.black)
                            Capsule()
                                .frame(width: 350.0, height: 245.0)
                                .foregroundColor(.red)
                            Text("術\n式\n反\n轉\n『赫』")
                                .foregroundColor(Color.black)
                                .font(.custom("NewTegomin-Regular", size: 30))
                                .multilineTextAlignment(.center)
                                .offset(x:50)
                        }
                        .opacity(0.7)
                        .onTapGesture{withAnimation{ Imagenum=2}}
                        ZStack{
                            Capsule()
                                .frame(width: 355.0, height: 250.0)
                                .foregroundColor(.black)
                            Capsule()
                                .frame(width: 350.0, height: 245.0)
                                .foregroundColor(.cyan)
                            Text("術\n式\n順\n轉\n『蒼』")
                            .foregroundColor(Color.black)
                            .font(.custom("NewTegomin-Regular", size: 30))
                            .multilineTextAlignment(.center)
                            .offset(x:-50)
                        }
                        .opacity(0.7)
                        .onTapGesture{withAnimation{ Imagenum=3}}
                    }
                    
                    
                }
            }
            else if Imagenum == 2{
                ExtractedView(title: "學生時期", main:(.main1),introduce: "學生時在咒術高專就讀。雖然五條時常被稱為笨蛋，但因為可靠的能力，似乎任何場合他出現就會讓人感到安心。", saypic:(.pic1), satintro: "", fr1:"夏油傑", fr1link:"https://zh.moegirl.org.cn/夏油杰", fr1image:(.summer),fr2:"家入硝子", fr2link:"https://zh.moegirl.org.cn/家入硝子", fr2image:(.homee),fr3:"伏黑甚爾", fr3link:"https://zh.moegirl.org.cn/伏黑甚尔", fr3image:(.blackk),
                    videolink:"https://youtube.com/clip/Ugkx9RZsLc9iom_z0T3wCewBt04mAYu_MXTh?si=fDYrG6clY7cy-1Nu")
                ZStack {
                    Image(systemName: "arrow.uturn.left.circle")
                        .resizable()
                        .frame(width: 40.0, height: 35.0)
                        .offset(x:offsetX, y:-375)
                        .animation(.easeInOut(duration: 1), value: offsetX)
                }
                .onTapGesture{withAnimation{Imagenum=1}}
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in withAnimation {
                        if moveRight {
                            offsetX = -137.5
                        }
                        else {
                            offsetX = -152.5}
                        moveRight.toggle()
                    }
                    }
                }
            }
            else if Imagenum == 3{
                ExtractedView(title: "導師時期", main:(.main2),introduce: "擔任咒術高專教師。有著「最強的咒術師」稱號，對上任何對手都能占據上風，所以並不願意隨便展現實力。", saypic:(.pic2), satintro: "", fr1:"虎杖悠仁", fr1link:"https://zh.moegirl.org.cn/虎杖悠仁", fr1image:(.tiger),fr2:"伏黑惠", fr2link:"https://zh.moegirl.org.cn/伏黑惠", fr2image:(.blackk2),fr3:"钉崎", fr3link:"https://zh.moegirl.org.cn/钉崎野蔷薇", fr3image:(.redd),
                    videolink:"https://www.youtube.com/watch?v=wQC2W-URm3g")
                ZStack {
                    Image(systemName: "arrow.uturn.left.circle")
                        .resizable()
                        .frame(width: 40.0, height: 35.0)
                        .offset(x:offsetX, y:-375)
                        .animation(.easeInOut(duration: 1), value: offsetX)
                }
                .onTapGesture{withAnimation{Imagenum=1}}
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in withAnimation {
                        if moveRight {
                            offsetX = -137.5
                        }
                        else {
                            offsetX = -152.5}
                        moveRight.toggle()
                    }
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
struct ExtractedView: View {
    @Environment(\.openURL) private var openURL
    let title : String
    let main:ImageResource
    let introduce:String
    let saypic:ImageResource
    let satintro:String
    let fr1:String
    let fr1link:String
    let fr1image:ImageResource
    let fr2:String
    let fr2link:String
    let fr2image:ImageResource
    let fr3:String
    let fr3link:String
    let fr3image:ImageResource
    let videolink:String
    var body: some View {
        ScrollView{
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 155, height: 30)
                        .foregroundColor(.gray)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 150, height: 25)
                        .foregroundColor(.black)
                    Text(title)
                        .foregroundColor(Color.white)
                        .font(.custom("Cubic_11", size: 20))
                }
                .padding(.top, 20)
                .padding(.bottom, 5)
                ZStack {
                    Circle()
                        .frame(width:205)
                        .foregroundColor(.black)
                    Image(main)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 200, height: 200)
                        .transition(.opacity)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 280, height: 180)
                        .foregroundColor(.black)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 270, height: 170)
                        .foregroundColor(.white)
                    VStack{
                        Text("簡介")
                            .foregroundColor(Color.black)
                            .font(.custom("Cubic_11", size: 20))
                            .padding(.bottom, 1.0)
                        Text(introduce)
                            .foregroundColor(Color.black)
                            .font(.custom("Cubic_11", size: 20))
                            .frame(width: 250)
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 155, height: 30)
                        .foregroundColor(.gray)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 150, height: 25)
                        .foregroundColor(.black)
                    Text("相關人物")
                        .foregroundColor(Color.white)
                        .font(.custom("Cubic_11", size: 20))
                }
                .padding(.top, 20)
                .padding(.bottom, 5)
                ScrollView(.horizontal){
                    HStack{
                        VStack{
                            Image(fr1image)
                                .resizable()
                                .frame(width: 150.0, height: 230.0)
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 80, height: 30)
                                    .foregroundColor(.black)
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 75, height: 25)
                                    .foregroundColor(.white)
                                Link(fr1,destination: URL(string:fr1link)!)
                                    .tint(.black)
                                    .font(.custom("NewTegomin-Regular", size: 16.5))
                            }
                        }
                        VStack{
                            Image(fr2image)
                                .resizable()
                                .frame(width: 150.0, height: 230.0)
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 80, height: 30)
                                    .foregroundColor(.black)
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 75, height: 25)
                                    .foregroundColor(.white)
                                Link(fr2,destination: URL(string:fr2link)!)
                                    .tint(.black)
                                    .font(.custom("NewTegomin-Regular", size: 16.5))
                            }
                            
                        }
                        VStack{
                            Image(fr3image)
                                .resizable()
                                .frame(width: 150.0, height: 230.0)
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 80, height: 30)
                                    .foregroundColor(.black)
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 75, height: 25)
                                    .foregroundColor(.white)
                                Link(fr3,destination: URL(string:fr3link)!)
                                    .tint(.black)
                                    .font(.custom("NewTegomin-Regular", size: 16.5))
                            }
                        }
                        
                    }
                }
                
                ZStack {
                    Image(.outside)
                        .resizable()
                        .foregroundColor(Color.white)
                        .padding(-40)
                        .frame(width: 300.0, height: 150.0)
                        .overlay(content: {
                            Capsule()
                                .frame(width: 130.0, height: 60.0)
                                .foregroundColor(Color.white)
                        })
                        .overlay(content: {
                            Text("**名場面**")
                                .foregroundColor(Color.black)
                                .font(.custom("Cubic_11", size: 25))
                        })
                }
                .padding(20)
                ZStack {
                    Rectangle()
                        .frame(width: 300, height: 180)
                        .foregroundColor(.black)
                    VStack{
                        Image(saypic)
                            .resizable()
                            .clipShape(Rectangle())
                            .scaledToFill()
                            .frame(width: 255, height: 160)
                            .transition(.opacity)
                            .onTapGesture {
                                openYouTubeVideo(urlString: videolink)
                            }
                    }
                }
                Rectangle()
                    .padding(.top, -10.0)
                    .frame(width: 15.0, height: 15.0)
                Rectangle()
                    .padding(.top, -10.0)
                    .frame(width: 200.0, height:2.5)
            }
        }
        .scrollIndicators(.hidden)
    }
}
