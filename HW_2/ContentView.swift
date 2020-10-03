//
//  ContentView.swift
//  HW2
//
//  Created by 林湘羚 on 2020/9/24.
//

import SwiftUI

struct foot: Shape {
    func path(in rect:CGRect)->Path{
        Path({ path in  //左腳
            path.move(to: CGPoint(x:90, y:420))
            //短腿
            path.addQuadCurve(to: CGPoint(x:97, y:434), control: CGPoint(x:93, y:428))
            path.addQuadCurve(to: CGPoint(x:115, y:434), control: CGPoint(x:105, y:435))
            path.addQuadCurve(to: CGPoint(x:113, y:429), control: CGPoint(x:112, y:432))
            //長腿
            /*path.addQuadCurve(to: CGPoint(x:97, y:454), control: CGPoint(x:93, y:428))
            path.addQuadCurve(to: CGPoint(x:115, y:454), control: CGPoint(x:105, y:455))
            path.addQuadCurve(to: CGPoint(x:113, y:449), control: CGPoint(x:112, y:432))*/
            path.addQuadCurve(to: CGPoint(x:117, y:418), control: CGPoint(x:117, y:418))
        })
    }
}
struct eye: Shape {
    func path(in rect:CGRect)->Path{
        Path({ path in  //左眼
            path.move(to: CGPoint(x:100, y:292))
            path.addQuadCurve(to: CGPoint(x:106, y:285), control: CGPoint(x:103, y:287))
            path.addQuadCurve(to: CGPoint(x:114, y:284), control: CGPoint(x:111, y:283))
            path.addQuadCurve(to: CGPoint(x:118, y:292), control: CGPoint(x:117, y:287))
            path.addQuadCurve(to: CGPoint(x:113, y:301), control: CGPoint(x:117, y:297))
            path.addQuadCurve(to: CGPoint(x:102, y:300), control: CGPoint(x:108, y:302))
            path.addQuadCurve(to: CGPoint(x:100, y:292), control: CGPoint(x:99, y:296))
        })
    }
}
struct hand: Shape{
    func path(in rect:CGRect)->Path{
        Path({ path in  //左手
            path.move(to: CGPoint(x:102, y:352))
            path.addQuadCurve(to: CGPoint(x:105, y:343), control: CGPoint(x:104, y:346))
            path.addQuadCurve(to: CGPoint(x:109, y:346), control: CGPoint(x:107, y:342))
            path.addQuadCurve(to: CGPoint(x:114, y:350), control: CGPoint(x:110, y:350))
            path.addQuadCurve(to: CGPoint(x:118, y:351), control: CGPoint(x:117, y:350))
            path.addQuadCurve(to: CGPoint(x:116, y:358), control: CGPoint(x:118, y:353))
            path.addQuadCurve(to: CGPoint(x:116, y:365), control: CGPoint(x:117, y:362))
            path.addQuadCurve(to: CGPoint(x:107, y:367), control: CGPoint(x:112, y:367))
            path.addQuadCurve(to: CGPoint(x:98, y:360), control: CGPoint(x:101, y:364))
            path.addQuadCurve(to: CGPoint(x:102, y:352), control: CGPoint(x:99, y:355))
        })
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Group{
                Image("Image")    //背景圖片，竹子(上)
                    .resizable()
                    .scaledToFit()
                    .position(x:200, y:500)
                
                Image("Image")    //背景圖片，竹子（下）
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(.degrees(180))
                    .position(x:100, y:20)
                
                Path({ path in  //上半臉
                    path.move(to: CGPoint(x:63, y:295))
                    path.addQuadCurve(to: CGPoint(x:66, y:271), control: CGPoint(x:62, y:283))
                    path.addQuadCurve(to: CGPoint(x:76, y:251), control: CGPoint(x:69, y:261))
                    path.addQuadCurve(to: CGPoint(x:96, y:233), control: CGPoint(x:85, y:242))
                    path.addQuadCurve(to: CGPoint(x:107, y:227), control: CGPoint(x:105, y:228))
                    path.addQuadCurve(to: CGPoint(x:119, y:223), control: CGPoint(x:114, y:224))
                    path.addQuadCurve(to: CGPoint(x:136, y:220), control: CGPoint(x:127, y:221))
                    path.addQuadCurve(to: CGPoint(x:147, y:220), control: CGPoint(x:144, y:220))
                    path.addQuadCurve(to: CGPoint(x:154, y:222), control: CGPoint(x:152, y:221))
                    path.addQuadCurve(to: CGPoint(x:169, y:226), control: CGPoint(x:163, y:224))
                    path.addQuadCurve(to: CGPoint(x:173, y:228), control: CGPoint(x:171, y:227))
                    path.addQuadCurve(to: CGPoint(x:192, y:241), control: CGPoint(x:181, y:233))
                    path.addQuadCurve(to: CGPoint(x:207, y:262), control: CGPoint(x:201, y:249))
                    path.addQuadCurve(to: CGPoint(x:214, y:284), control: CGPoint(x:212, y:272))
                    path.addQuadCurve(to: CGPoint(x:215, y:296), control: CGPoint(x:214, y:288))
                    
                })
                .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
                
                Path({ path in   //下半臉
                    path.move(to: CGPoint(x:71, y:287))
                    path.addQuadCurve(to: CGPoint(x:60, y:301), control: CGPoint(x:65, y:293))
                    path.addQuadCurve(to: CGPoint(x:55, y:328), control: CGPoint(x:56, y:313))
                    path.addQuadCurve(to: CGPoint(x:63, y:347), control: CGPoint(x:58, y:338))
                    path.addQuadCurve(to: CGPoint(x:80, y:356), control: CGPoint(x:70, y:353))
                    path.addQuadCurve(to: CGPoint(x:105, y:357), control: CGPoint(x:91, y:359))
                    path.addQuadCurve(to: CGPoint(x:125, y:363), control: CGPoint(x:115, y:359))
                    path.addQuadCurve(to: CGPoint(x:142, y:365), control: CGPoint(x:132, y:364))
                    path.addQuadCurve(to: CGPoint(x:163, y:362), control: CGPoint(x:153, y:364))
                    path.addQuadCurve(to: CGPoint(x:181, y:361), control: CGPoint(x:173, y:358))
                    path.addQuadCurve(to: CGPoint(x:206, y:356), control: CGPoint(x:194, y:361))
                    path.addQuadCurve(to: CGPoint(x:220, y:345), control: CGPoint(x:215, y:351))
                    path.addQuadCurve(to: CGPoint(x:225, y:325), control: CGPoint(x:224, y:336))
                    path.addQuadCurve(to: CGPoint(x:222, y:310), control: CGPoint(x:224, y:316))
                    path.addQuadCurve(to: CGPoint(x:215, y:298), control: CGPoint(x:219, y:305))
                    path.addQuadCurve(to: CGPoint(x:208, y:290), control: CGPoint(x:212, y:294))
                })
                .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
                
                Path({ path in   //左耳
                    path.move(to: CGPoint(x:77, y:251))
                    path.addQuadCurve(to: CGPoint(x:76, y:233), control: CGPoint(x:74, y:238))
                    path.addQuadCurve(to: CGPoint(x:88, y:227), control: CGPoint(x:81, y:229))
                    path.addQuadCurve(to: CGPoint(x:99, y:231), control: CGPoint(x:92, y:227))
                    path.addQuadCurve(to: CGPoint(x:90, y:238), control: CGPoint(x:93, y:235))
                    path.addQuadCurve(to: CGPoint(x:81, y:245), control: CGPoint(x:86, y:245))
                    path.addQuadCurve(to: CGPoint(x:77, y:251), control: CGPoint(x:80, y:248))
                })
                .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
                Path({ path in  //右耳
                    path.move(to: CGPoint(x:175, y:229))
                    path.addQuadCurve(to: CGPoint(x:182, y:224), control: CGPoint(x:178, y:226))
                    path.addQuadCurve(to: CGPoint(x:189, y:224), control: CGPoint(x:186, y:224))
                    path.addQuadCurve(to: CGPoint(x:196, y:227), control: CGPoint(x:193, y:225))
                    path.addQuadCurve(to: CGPoint(x:200, y:234), control: CGPoint(x:199, y:230))
                    path.addQuadCurve(to: CGPoint(x:201, y:239), control: CGPoint(x:201, y:237))
                    path.addQuadCurve(to: CGPoint(x:198, y:245), control: CGPoint(x:200, y:241))
                    path.addQuadCurve(to: CGPoint(x:190, y:239), control: CGPoint(x:193, y:242))
                    path.addQuadCurve(to: CGPoint(x:183, y:234), control: CGPoint(x:186, y:236))
                    path.addQuadCurve(to: CGPoint(x:179, y:232), control: CGPoint(x:181, y:234))
                    path.addQuadCurve(to: CGPoint(x:175, y:229), control: CGPoint(x:177, y:231))
                })
                .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
                Path({ path in  //左邊身體
                    path.move(to: CGPoint(x:90, y:359))
                    path.addQuadCurve(to: CGPoint(x:84, y:368), control: CGPoint(x:87, y:364))
                    path.addQuadCurve(to: CGPoint(x:83, y:373), control: CGPoint(x:84, y:369))
                    path.addQuadCurve(to: CGPoint(x:71, y:378), control: CGPoint(x:76, y:375))
                    path.addQuadCurve(to: CGPoint(x:66, y:387), control: CGPoint(x:67, y:383))
                    path.addQuadCurve(to: CGPoint(x:65, y:402), control: CGPoint(x:64, y:395))
                    path.addQuadCurve(to: CGPoint(x:72, y:412), control: CGPoint(x:68, y:407))
                    path.addQuadCurve(to: CGPoint(x:82, y:417), control: CGPoint(x:76, y:414))
                    path.addQuadCurve(to: CGPoint(x:101, y:420), control: CGPoint(x:91, y:420))
                    path.addQuadCurve(to: CGPoint(x:115, y:419), control: CGPoint(x:108, y:421))
                })
                .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
                
                Path({ path in  //胯下
                    path.move(to: CGPoint(x:109, y:413))
                    path.addQuadCurve(to: CGPoint(x:128, y:420), control: CGPoint(x:108, y:421))
                    path.addQuadCurve(to: CGPoint(x:181, y:414), control: CGPoint(x:140, y:424))
                })
                .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
                
                Path({ path in  //右邊身體
                    path.move(to: CGPoint(x:193, y:361))
                    path.addQuadCurve(to: CGPoint(x:202, y:374), control: CGPoint(x:197, y:365))
                    path.addQuadCurve(to: CGPoint(x:212, y:384), control: CGPoint(x:208, y:378))
                    path.addQuadCurve(to: CGPoint(x:214, y:399), control: CGPoint(x:214, y:392))
                    path.addQuadCurve(to: CGPoint(x:209, y:412), control: CGPoint(x:213, y:406))
                    path.addQuadCurve(to: CGPoint(x:200, y:418), control: CGPoint(x:205, y:416))
                    path.addQuadCurve(to: CGPoint(x:191, y:419), control: CGPoint(x:196, y:419))
                    path.addQuadCurve(to: CGPoint(x:174, y:416), control: CGPoint(x:186, y:419))
                })
                .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
                
                Group{  //左腮紅
                    //左腮紅
                    Path(ellipseIn: CGRect(x: 70, y: 300, width: 40, height: 40))
                        .fill(Color(red: (254/256), green: (205/256), blue: (197/256)))
                    Path({ path in  //腮紅
                        path.move(to: CGPoint(x:89, y:304))
                        path.addLine(to: CGPoint(x:88, y:308))
                    })
                    .stroke(Color(red: (219/255), green: (128/255), blue: (121/255)),lineWidth: 2)
                    
                    Path({ path in  //腮紅
                        path.move(to: CGPoint(x:95, y:304))
                        path.addLine(to: CGPoint(x:96, y:308))
                    })
                    .stroke(Color(red: (219/255), green: (128/255), blue: (121/255)),lineWidth: 2)
                }
            }
            
            Group{
                Group{  //右腮紅
                    //右腮紅
                    Path(ellipseIn: CGRect(x:  165, y: 300, width: 40, height: 40))
                        .fill(Color(red: (254/256), green: (205/256), blue: (197/256)))
                    Path({ path in  //腮紅
                        path.move(to: CGPoint(x:184, y:304))
                        path.addLine(to: CGPoint(x:183, y:308))
                    })
                    .stroke(Color(red: (219/255), green: (128/255), blue: (121/255)),lineWidth: 2)
                    
                    Path({ path in  //腮紅
                        path.move(to: CGPoint(x:190, y:304))
                        path.addLine(to: CGPoint(x:191, y:308))
                    })
                    .stroke(Color(red: (219/255), green: (128/255), blue: (121/255)), lineWidth: 2)
                }
                Text("I'm 胖達")
                    .position(x:200, y:200)
                
                leftHand()  //左手

                rightHand() //右手
              
                leftEye()   //左眼
                
                rightEye()  //右眼
                                
                leftFoot()  //左腳
                
                rightFoot()  //右腳
                
                Path({ path in  //nose
                    path.move(to: CGPoint(x:136, y:292))
                    path.addLine(to: CGPoint(x:142, y:293))
                })
                .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
                
                Path({ path in  //mouth
                    path.move(to: CGPoint(x:123, y:301))
                    path.addQuadCurve(to: CGPoint(x:138, y:298), control: CGPoint(x:132, y:303))
                    path.addQuadCurve(to: CGPoint(x:156, y:305), control: CGPoint(x:146, y:304))
                })
                .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
            }
            Group{
                
                ZStack{
                    Path({ path in  //heart
                        path.move(to: CGPoint(x:42, y:264))
                        path.addQuadCurve(to: CGPoint(x:25, y:256), control: CGPoint(x:31, y:261))
                        path.addQuadCurve(to: CGPoint(x:14, y:246), control: CGPoint(x:18, y:250))
                        path.addQuadCurve(to: CGPoint(x:10, y:239), control: CGPoint(x:12, y:243))
                        path.addQuadCurve(to: CGPoint(x:13, y:226), control: CGPoint(x:10, y:231))
                        path.addQuadCurve(to: CGPoint(x:19, y:220), control: CGPoint(x:15, y:222))
                        path.addQuadCurve(to: CGPoint(x:29, y:227), control: CGPoint(x:24, y:221))
                        path.addQuadCurve(to: CGPoint(x:39, y:215), control: CGPoint(x:34, y:218))
                        path.addQuadCurve(to: CGPoint(x:53, y:217), control: CGPoint(x:45, y:214))
                        path.addQuadCurve(to: CGPoint(x:56, y:231), control: CGPoint(x:56, y:222))
                        path.addQuadCurve(to: CGPoint(x:51, y:249), control: CGPoint(x:54, y:240))
                        path.addQuadCurve(to: CGPoint(x:42 ,y:264), control: CGPoint(x:49, y:253))
                    })
                    .fill(Color(red: 1, green: (138/255), blue: (149/255)))
                    
                    Path({ path in  //heart
                        path.move(to: CGPoint(x:42, y:264))
                        path.addQuadCurve(to: CGPoint(x:25, y:256), control: CGPoint(x:31, y:261))
                        path.addQuadCurve(to: CGPoint(x:14, y:246), control: CGPoint(x:18, y:250))
                        path.addQuadCurve(to: CGPoint(x:10, y:239), control: CGPoint(x:12, y:243))
                        path.addQuadCurve(to: CGPoint(x:13, y:226), control: CGPoint(x:10, y:231))
                        path.addQuadCurve(to: CGPoint(x:19, y:220), control: CGPoint(x:15, y:222))
                        path.addQuadCurve(to: CGPoint(x:29, y:227), control: CGPoint(x:24, y:221))
                        path.addQuadCurve(to: CGPoint(x:39, y:215), control: CGPoint(x:34, y:218))
                        path.addQuadCurve(to: CGPoint(x:53, y:217), control: CGPoint(x:45, y:214))
                        path.addQuadCurve(to: CGPoint(x:56, y:231), control: CGPoint(x:56, y:222))
                        path.addQuadCurve(to: CGPoint(x:51, y:249), control: CGPoint(x:54, y:240))
                        path.addQuadCurve(to: CGPoint(x:42 ,y:264), control: CGPoint(x:49, y:253))
                    })
                    .stroke(Color(red: (60/255), green: (30/255), blue: (30/255)))
                }
                
                
                Path({ path in  //胸
                    path.move(to: CGPoint(x:97, y:359))
                    path.addQuadCurve(to: CGPoint(x:91 ,y:358), control: CGPoint(x:95, y:359))
                    path.addQuadCurve(to: CGPoint(x:89 ,y:362), control: CGPoint(x:91, y:360))
                    path.addQuadCurve(to: CGPoint(x:91 ,y:369), control: CGPoint(x:86, y:365))
                    path.addQuadCurve(to: CGPoint(x:108 ,y:377), control: CGPoint(x:98, y:374))
                    path.addQuadCurve(to: CGPoint(x:127 ,y:378), control: CGPoint(x:121, y:378))
                    path.addQuadCurve(to: CGPoint(x:144 ,y:378), control: CGPoint(x:134, y:378))
                    path.addQuadCurve(to: CGPoint(x:163 ,y:376), control: CGPoint(x:153, y:377))
                    path.addQuadCurve(to: CGPoint(x:178 ,y:373), control: CGPoint(x:170, y:375))
                    path.addQuadCurve(to: CGPoint(x:191 ,y:369), control: CGPoint(x:185, y:371))
                    path.addQuadCurve(to: CGPoint(x:195 ,y:360), control: CGPoint(x:198, y:367))
                    path.addQuadCurve(to: CGPoint(x:185 ,y:363), control: CGPoint(x:189, y:361))
                    path.addQuadCurve(to: CGPoint(x:175 ,y:369), control: CGPoint(x:181, y:367))
                    path.addQuadCurve(to: CGPoint(x:163 ,y:360), control: CGPoint(x:170, y:363))
                    path.addQuadCurve(to: CGPoint(x:148 ,y:363), control: CGPoint(x:154, y:363))
                    path.addQuadCurve(to: CGPoint(x:134 ,y:364), control: CGPoint(x:142, y:364))
                    path.addQuadCurve(to: CGPoint(x:123 ,y:361), control: CGPoint(x:128, y:361))
                    path.addQuadCurve(to: CGPoint(x:114 ,y:364), control: CGPoint(x:118, y:359))
                    path.addQuadCurve(to: CGPoint(x:107 ,y:370), control: CGPoint(x:112, y:369))
                    path.addQuadCurve(to: CGPoint(x:98 ,y:362), control: CGPoint(x:101, y:367))
                    path.addQuadCurve(to: CGPoint(x:97 ,y:359), control: CGPoint(x:98, y:362))
                })
                .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct rightHand: View {
    var body: some View {
        hand()//右手
            .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
            .rotation3DEffect(
                .degrees(180),
                axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/)
            .offset(x: -35, y: 0)
    }
}

struct rightEye: View {
    var body: some View {
        eye()   //右眼
            .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
            .rotation3DEffect(
                .degrees(180),
                axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/)
            .offset(x: -40, y: 0)
    }
}

struct leftHand: View {
    var body: some View {
        hand()//左手
            .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
    }
}

struct  leftEye: View {
    var body: some View {
        eye()   //左眼
            .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
    }
}

struct leftFoot: View {
    var body: some View {
        foot()  //左腳
            .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
    }
}

struct rightFoot: View {
    var body: some View {
        foot()  //右腳
            .fill(Color(red: (60/255), green: (30/255), blue: (30/255)))
            .offset(x: 70, y: -2)
    }
}

