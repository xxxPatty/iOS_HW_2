//
//  ContentView.swift
//  Conan
//
//  Created by 慈慈 on 2020/9/28.
//

import SwiftUI

struct cloth:Shape{
    func path(in rect: CGRect) -> Path {
        //衣服
        Path{(path) in
            path.move(to: CGPoint(x:60, y:560))
            path.addQuadCurve(to: CGPoint(x:80, y:510), control: CGPoint(x:60, y:510))
            path.addLine(to: CGPoint(x:90, y:510))
            path.addQuadCurve(to: CGPoint(x:120, y:500), control:CGPoint(x:110, y:510))
            path.addQuadCurve(to: CGPoint(x:129, y:535), control:CGPoint(x:120, y:525))
            path.addQuadCurve(to: CGPoint(x:165, y:505), control:CGPoint(x:150, y:530))
            path.addLine(to: CGPoint(x:165, y:560))
        }
    }
}

struct collar:Shape{
    func path(in rect: CGRect) -> Path {
        //領子
        Path{(path) in
            path.move(to: CGPoint(x:120, y:500))
            path.addQuadCurve(to: CGPoint(x:129, y:535), control:CGPoint(x:120, y:525))
            path.addQuadCurve(to: CGPoint(x:165, y:505), control:CGPoint(x:150, y:530))
            path.addQuadCurve(to: CGPoint(x:127, y:485), control:CGPoint(x:160, y:505))
            path.closeSubpath()
        }
    }
}

struct neck:Shape{
    func path(in rect: CGRect) -> Path {
        //脖子
        Path{(path) in
            path.move(to: CGPoint(x:135, y:490))
            path.addLine(to: CGPoint(x:135,y:475))
            path.addLine(to: CGPoint(x:165, y:490))
            path.addLine(to: CGPoint(x:195, y:475))
            path.addLine(to: CGPoint(x: 195, y:489))
            path.addLine(to: CGPoint(x:165, y:505))
            path.closeSubpath()
        }
    }
}

struct face:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:165, y:490))
            path.addQuadCurve(to: CGPoint(x:86, y:445), control:CGPoint(x:120, y:470))
            path.addLine(to: CGPoint(x:67, y:370))
            path.addQuadCurve(to: CGPoint(x:160, y:330), control: CGPoint(x:99, y:350))
            path.addQuadCurve(to: CGPoint(x:250, y:360), control: CGPoint(x:200, y:340))
            path.addLine(to: CGPoint(x:230, y:445))
            path.addLine(to: CGPoint(x:195, y:475))
            path.closeSubpath()
        }
    }
}

struct nose:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:148, y:425))
            path.addLine(to: CGPoint(x:155, y:429))
            path.addLine(to: CGPoint(x:157, y:424))
            path.closeSubpath()
        }
    }
}

struct mouse:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to:CGPoint(x:153, y:460))
            path.addQuadCurve(to: CGPoint(x:160, y:447), control: CGPoint(x:150, y:447))
            path.addQuadCurve(to: CGPoint(x:170, y:460), control: CGPoint(x:172, y:447))
            path.addQuadCurve(to: CGPoint(x:153, y:460), control: CGPoint(x:155, y:463))
        }
    }
}

struct eye2:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:175, y:396))
            path.addQuadCurve(to: CGPoint(x:213, y:391), control: CGPoint(x:195, y:388))
            path.addQuadCurve(to: CGPoint(x:203, y:408), control: CGPoint(x:215, y:398))
            path.addQuadCurve(to: CGPoint(x:183, y:406), control: CGPoint(x:190, y:411))
            path.closeSubpath()
            //path.addLine(to: CGPoint(x:187, y:410))
        }
    }
}

struct rouge:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:210, y:423))
            path.addLine(to: CGPoint(x:208, y:433))
        }
    }
}

struct leftEar:Shape{
    func path(in rect: CGRect) -> Path {
        //左耳
        Path{(path) in
            path.move(to: CGPoint(x:73, y:390))
            path.addQuadCurve(to: CGPoint(x:63, y:400), control: CGPoint(x:63, y:390))
            path.addLine(to: CGPoint(x:70, y:423))
            path.addQuadCurve(to: CGPoint(x:82, y:438), control: CGPoint(x:80, y:440))
        }
    }
}

struct rightEar:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:245, y:383))
            path.addQuadCurve(to: CGPoint(x:263, y:400), control: CGPoint(x:265, y:380))
            path.addLine(to: CGPoint(x:245, y:430))
            path.addLine(to: CGPoint(x:233, y:438))
        }
    }
}

struct hatEdge:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:160, y:330))
            path.addQuadCurve(to: CGPoint(x:55, y:380), control: CGPoint(x:99, y:350))
            path.addQuadCurve(to: CGPoint(x:156, y:315), control: CGPoint(x:99, y:330))
            path.addQuadCurve(to: CGPoint(x:248, y:354), control: CGPoint(x:230, y:330))
            path.addLine(to: CGPoint(x:278, y:390))
            path.addQuadCurve(to: CGPoint(x:160, y:330), control: CGPoint(x:225, y:340))
            
        }
    }
}

struct leftHat:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:64, y:400))
            path.addLine(to: CGPoint(x:44, y:390))
            path.addLine(to: CGPoint(x:67, y:370))
            path.addLine(to: CGPoint(x:75, y:400))
        }
    }
}

struct rightHat:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:240, y:400))
            path.addLine(to: CGPoint(x:280, y:390))
            path.addLine(to: CGPoint(x:250, y:370))
            //path.closeSubpath()
        }
    }
}

struct upHat:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:66, y:367))
            path.addLine(to: CGPoint(x:66, y:320))
            path.addQuadCurve(to: CGPoint(x:88, y:290), control: CGPoint(x:79, y:295))
            path.addQuadCurve(to: CGPoint(x:235, y:285), control: CGPoint(x:150, y:245))
            path.addQuadCurve(to: CGPoint(x:250, y:315), control:CGPoint(x:245, y:300))
            path.addLine(to: CGPoint(x:260, y:367))
        }
    }
}

struct hair:Shape{
    func path(in rect: CGRect) -> Path {
        //頭髮
        
        Path{(path) in
            //hair1
            path.move(to: CGPoint(x:71, y:370))
            path.addQuadCurve(to: CGPoint(x:82, y:400), control: CGPoint(x:75, y:390))
            path.addQuadCurve(to: CGPoint(x:80, y:367), control: CGPoint(x:80, y:390))
            path.closeSubpath()
            //hair2
            path.move(to: CGPoint(x:94, y:361))
            path.addQuadCurve(to: CGPoint(x:92, y:373), control: CGPoint(x:89, y:361))
            path.addQuadCurve(to: CGPoint(x:97, y:358), control: CGPoint(x:93, y:383))
            path.closeSubpath()
            //hair3
            path.move(to: CGPoint(x:111, y:350))
            //path.addLine(to: CGPoint(x:104, y:380))
            path.addQuadCurve(to: CGPoint(x:107, y:380), control: CGPoint(x:104, y:365))
            path.addQuadCurve(to: CGPoint(x:117, y:348), control: CGPoint(x:107, y:379))
            path.closeSubpath()
            //hair4
            path.move(to: CGPoint(x:129, y:342))
            path.addQuadCurve(to: CGPoint(x:132, y:372), control: CGPoint(x:125, y:363))
            path.addQuadCurve(to: CGPoint(x:135, y:348), control: CGPoint(x:131, y:365))
            path.addQuadCurve(to: CGPoint(x:167, y:385), control: CGPoint(x:140, y:375))
            path.addQuadCurve(to: CGPoint(x:155, y:332), control: CGPoint(x:148, y:335))
            path.closeSubpath()
            //hair5
            path.move(to: CGPoint(x:162, y:332))
            path.addQuadCurve(to: CGPoint(x:165, y:380), control: CGPoint(x:170, y:350))
            path.addQuadCurve(to: CGPoint(x:172, y:332), control: CGPoint(x:175, y:350))
            path.closeSubpath()
            //hair6
            path.move(to: CGPoint(x:179, y:337))
            path.addQuadCurve(to: CGPoint(x:196, y:365), control: CGPoint(x:183, y:358))
            path.addQuadCurve(to: CGPoint(x:183, y:338), control: CGPoint(x:185, y:358))
            path.addQuadCurve(to: CGPoint(x:220, y:370), control: CGPoint(x:205, y:369))
            path.addQuadCurve(to: CGPoint(x:203, y:342), control: CGPoint(x:205, y:360))
            path.closeSubpath()
            //hair7
            path.move(to: CGPoint(x:214, y:347))
            path.addQuadCurve(to: CGPoint(x:220, y:375), control: CGPoint(x:224, y:360))
            path.addQuadCurve(to: CGPoint(x:224, y:352), control: CGPoint(x:223, y:350))
            path.closeSubpath()
            //hair8
            path.move(to: CGPoint(x:233, y:356))
            path.addQuadCurve(to: CGPoint(x:234, y:375), control: CGPoint(x:239, y:365))
            path.addQuadCurve(to: CGPoint(x:237, y:358), control: CGPoint(x:239, y:365))
            path.closeSubpath()
            
            }
    }
}

struct Conan: View {
    var body: some View {
        ZStack{
            Group{
                //左邊衣服
                cloth().fill(Color(red:135/255, green:206/255, blue:235/255))
                cloth().stroke(lineWidth: 5)
                
                //右邊衣服
                cloth().fill(Color(red:135/255, green:206/255, blue:235/255))
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .position(x:170, y:273)
                
                cloth().stroke(lineWidth: 5)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .position(x:170, y:273)
                
                //扣子
                Circle().fill(Color.white)
                    .frame(width:7, height:7)
                    .position(x:175, y:535)
                    .zIndex(1)
                Circle().stroke(Color.black, lineWidth: 3)
                    .frame(width:7, height:7)
                    .position(x:175, y:535)
                    .zIndex(1)
                
                    
                Group{
                    //左邊領子
                    collar().fill(Color.white)
                    collar().stroke(lineWidth: 5)
                    
                    //右邊領子
                    collar().fill(Color.white).rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0, y:1, z:0))
                        .position(x:169, y:273)
                    
                    collar().stroke(lineWidth: 5)
                        .rotation3DEffect(
                            .degrees(180),
                            axis: (x: 0, y:1, z:0))
                            .position(x:169, y:273)
                }
                
                //肩膀下垂直的線
                Path{(path) in
                    path.move(to: CGPoint(x:90, y:560))
                    path.addLine(to: CGPoint(x:90, y:530))
                    path.move(to: CGPoint(x:240, y:560))
                    path.addLine(to: CGPoint(x: 240, y:530))
                }.stroke(lineWidth: 5)
            }
            
            //脖子
            Group{
                neck().fill(Color(red:255/255, green:218/255, blue:185/255))
                neck().stroke(lineWidth: 5)
            }
            
            //臉
            Group{
                face().fill(Color(red:255/255, green:218/255, blue:185/255))
                face().stroke(lineWidth: 5)
                nose().fill(Color(red:233/255, green:150/255, blue:122/255))
                nose().stroke(lineWidth: 2)
                mouse().fill(Color(red:162/255, green:98/255, blue:96/255))
                mouse().stroke(lineWidth: 2)
                
                //眼睛
                Group{
                    //左眼
                    Path{(path) in
                        path.move(to: CGPoint(x:138, y:400))
                        path.addLine(to: CGPoint(x:123, y:408))
                        path.addLine(to:CGPoint(x:104, y:408))
                    }.stroke(lineWidth: 3)
                    
                    //右眼
                    eye().fill(Color.white)
                    eye().stroke(lineWidth: 3)
                    Circle().fill(Color(red:65/255, green:105/255, blue:225/255))
                        .frame(width:18, height:18)
                        .position(x:196, y:400)
                    Circle().fill(Color.white)
                        .frame(width:8, height:8)
                        .position(x:192, y:398)
                    Path(CGRect(x:263, y:353, width:3, height:11)).fill(Color.white).rotationEffect(.degrees(10), anchor: .topLeading)
                    Group{
                        //腮紅
                        //右邊
                        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3)
                        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3)
                            .position(x:168, y:272)
                            .zIndex(3)
                        //左邊
                        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3).position(x:65, y:272)
                        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3).position(x:57, y:272)
                    }
                    //眉毛
                    Path{(path) in
                        //左眉毛
                        path.move(to: CGPoint(x:140, y:385))
                        path.addLine(to: CGPoint(x:98, y:383))
                        //右眉毛
                        path.move(to: CGPoint(x:172, y:383))
                        path.addLine(to: CGPoint(x:216, y:374))
                    }.stroke(lineWidth: 4)
                    
                    Group{
                        //耳朵
                        //左耳
                        leftEar().fill(Color(red:255/255, green:218/255, blue:185/255))
                        leftEar().stroke(lineWidth: 4)
                        
                        //右耳
                        rightEar().fill(Color(red:255/255, green:218/255, blue:185/255))
                        rightEar().stroke(lineWidth: 4)
                    }.zIndex(-1)
                    
                    Group{
                        //帽子
                        hatEdge().fill(Color(red:255/255, green:255/255, blue:153/255))
                        hatEdge().stroke(lineWidth: 5)
                        //左下帽子
                        leftHat().fill(Color(red:230/255, green:217/255, blue:51/255))
                            .zIndex(-2)
                        leftHat().stroke(lineWidth: 5)
                            .zIndex(-2)
                        //右下帽子
                        rightHat().fill(Color(red:230/255, green:217/255, blue:51/255))
                            .zIndex(-2)
                        rightHat().stroke(lineWidth: 5)
                            .zIndex(-2)
                        //上面帽子
                        upHat().fill(Color(red:255/255, green:255/255, blue:153/255))
                            .zIndex(-2)
                        upHat().stroke(lineWidth: 5)
                        
                        //帽子上的線
                        Path{(path) in
                            //左
                            path.move(to: CGPoint(x:100, y:281))
                            path.addQuadCurve(to: CGPoint(x:100, y:342), control: CGPoint(x:90, y:300))
                            path.move(to: CGPoint(x:104, y:281))
                            path.addQuadCurve(to: CGPoint(x:104, y:338), control: CGPoint(x:97, y:300))
                            //右
                            path.move(to: CGPoint(x:200, y:273))
                            path.addQuadCurve(to: CGPoint(x:208, y:328), control: CGPoint(x:210, y:300))
                            path.move(to: CGPoint(x:205, y:273))
                            path.addQuadCurve(to: CGPoint(x:213, y:328), control: CGPoint(x:214, y:300))
                        }.stroke(lineWidth: 3)
                    }
                }
                
                hair().fill(Color.black)
                hair().stroke(lineWidth: 4)
            }
        }
    }
}

struct Conan_Previews: PreviewProvider {
    static var previews: some View {
        Conan()
    }
}
