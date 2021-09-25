import Felgo 3.0
import QtQuick.Controls 2.0 as QuickControls2
import QtQuick 2.0
import QtMultimedia 5.9




App {
    id:app


    NavigationStack {

        Page {
            id: page
            title: qsTr("Main Page")
           backgroundColor:  "#35c8cb"
Column{
    anchors.centerIn: parent

            AppButton {
                     text: "تعلم الحروف"
                     backgroundColor: "#f04e26"
                     textColor: "blue"
                     textColorPressed: "#f04e26"
                     backgroundColorPressed: "red"
                     textSize: 40
                     height: 100
                     width: 200
                     fontBold: true
                     onClicked: {

                       // You need to specify the NavigationStack where to push the new page
                       // You can either give the NavigationStack and id, or like in this example, use the navigationStack property of the current page
                        page.navigationStack.push(menu)
                         //page.navigationStack.push(Qt.resolvedUrl("levels.qml"))

                     }
                   }

          Component{
              id:menu
              Page{

                  Row{
                      anchors.centerIn: parent
            AppButton {
                     text: "الحروف"
                     backgroundColor: "#f04e26"
                     backgroundColorPressed: "red"
                     textSize: 40
                     height: 100
                     width: 200
                     fontBold: true
                     onClicked: {

                       // You need to specify the NavigationStack where to push the new page
                       // You can either give the NavigationStack and id, or like in this example, use the navigationStack property of the current page
                       // page.navigationStack.push(subPage)
                         page.navigationStack.push(Qt.resolvedUrl("levels.qml"))

                     }
                   }



            //test 1
            AppButton {
                text: "الاختبار الاول"
                backgroundColor: "#f04e26"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                }
            }

            //test 2
            AppButton {
                text: "الاختبار الثاني"
                backgroundColor: "#f04e26"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
                }
            }
            }

              }
          }


            AppButton {
                text: "تعلم الاعداد "
                backgroundColor: "white"
                textColor: "blue"
                textColorPressed: "#f04e26"
                backgroundColorPressed: "red"
                textSize: 40
                height: 100
                width: 200
                fontBold: true
                onClicked: {

                    page.navigationStack.push(numberspage)

            }

        }
            AppButton {
                text: "اللغة العربية"
                backgroundColor: "green"
                textColor: "blue"
                textColorPressed: "#f04e26"
                backgroundColorPressed: "red"
                textSize: 40
                height: 100
                width: 200
                fontBold: true
                onClicked: {

                    page.navigationStack.push(alphawid)
            }

        }
}//Column



    }
    }


        //AlphaVideo
                Component {
                    id: alphawid

                    NavigationStack{
                     Page{
                         title: "الحروف العربية"

                     AppButton{
                         text: "ارجع"
                         anchors.bottom: parent.bottom
                         backgroundColor: "purple"
                         onClicked: page.navigationStack.push(page)
                     }


                 MediaPlayer {
                          id: mediaplayer0
                          autoPlay: true

                          source: "../assets/vid/Arabic alphabet song 10 - Alphabet arabe chanson 10 - 10 أنشودة الحروف العربية.mp4"
                        }

                        VideoOutput {
                          anchors.fill: parent
                          source: mediaplayer0
                        }

                     }
                }
            }





        //numberpage
            Component {
                id: numberspage

                NavigationStack{
                 Page{
                     title: "الارقام العربية"
                     backgroundColor: "#00c9ff"
        Column {
            anchors.centerIn: parent
                       AppButton {
                                 text:"تعلم الارقام العربيه من خلال الفيديو "
                                 backgroundColor: "#f04e26"
                                 textColor: "white"
                                 textColorPressed: "#f04e26"
                                 backgroundColorPressed: "white"
                                 horizontalMargin: 50
                                 verticalMargin:50
                                 radius: 10
                                 borderColor: "white"
                                 borderWidth: 2
                                 textSize: 40
                                 dropShadow:true
                                 minimumHeight: 70
                                 minimumWidth: 70
                                 fontBold: true
                                 onClicked:page.navigationStack.push(numbervideo)

                       }

                       AppButton {
                                 text: "الارقام العربيه "
                                 backgroundColor: "white"
                                 textColor: "#f04e26"
                                 textColorPressed: "white"
                                 backgroundColorPressed: "#f04e26"
                                 horizontalMargin: 220
                                 verticalMargin:50
                                 borderColor: "#f04e26"
                                 borderWidth: 2
                                 radius: 10
                                 textSize: 40
                                 minimumHeight: 70
                                 minimumWidth: 70
                                 fontBold: true
                                 onClicked:page.navigationStack.push(num1)
                               }


              }

        AppButton{
            text: "ارجع"
            anchors.bottom: parent.bottom
            backgroundColor: "purple"
            onClicked: page.navigationStack.push(page)

        }

                 }
                }
            }



        //numberVideo
            Component {
                id: numbervideo

                NavigationStack{
                 Page{
                     title: "الارقام العربية"

                 AppButton{
                     text: "ارجع"
                     anchors.bottom: parent.bottom
                     onClicked: page.navigationStack.push(numberspage)
                 }


                MediaPlayer {
                         id: mediaplayer1
                         autoPlay: true

                         source: "../assets/vid/أغنية_الأرقام_-_Numbers_Song__قناة_حموص_وحموصة(480p).mp4"
                       }

                       VideoOutput {
                         anchors.fill: parent
                         source: mediaplayer1
                       }

                     }
                }
            }



            //num1
                Component{
                    id:num1
                    Page{
                        title: "رقم واحد"

                        AppButton{
                            text: "ارجع"
                            anchors.bottom: parent.bottom
                            backgroundColor: "purple"
                            onClicked: page.navigationStack.push(numberspage)

                        }

                AppCard{
                          id: card_1
                               margin: dp(15)
                               paper.radius: dp(10)
                               header: SimpleRow{
                                   text: "رقم 1 "
                                    detailText: "هو اول الارقام العربيه "
                                    anchors.centerIn:parent.Center
                                    enabled: true
                                          image.radius: image.width/2
                                          image.fillMode: Image.PreserveAspectCrop
                                          style: StyleSimpleRow {
                                            showDisclosure: true
                                            backgroundColor: "transparent"
                                          }
                               }
                               media:AppImage {
                                   width: 500
                                   height: 500
                                   x:parent.width/4
                                   y:parent.height/4.5
                                   fillMode: Image.PreserveAspectFit
                                   source: "../assets/num/1.png"
                                 }
                      }


                      IconButton {
                        icon: IconType.arrowcircleright
                        selectedIcon: IconType.arrowcircleright
                        size:120
                        x:1720
                        y:310
                        toggle: true
                        onToggled: {
                          console.debug("Button toggled")
                        }
                        onClicked: page.navigationStack.push(num2)
                      }
                    }


                }

            //num2
                Component{
                        id:num2
                        Page{
                            title: "رقم اثنان"

                            AppButton{
                                text: "ارجع"
                                anchors.bottom: parent.bottom
                                backgroundColor: "purple"
                                onClicked: page.navigationStack.push(numberspage)

                            }

                    AppCard{
                              id: card_1
                                   margin: dp(15)
                                   paper.radius: dp(10)
                                   header: SimpleRow{
                                       text: "رقم 2 "
                                        detailText: "هو ثاني الارقام العربيه "
                                        anchors.centerIn:parent.Center
                                        enabled: true
                                              image.radius: image.width/2
                                              image.fillMode: Image.PreserveAspectCrop
                                              style: StyleSimpleRow {
                                                showDisclosure: true
                                                backgroundColor: "transparent"
                                              }
                                   }
                                   media:AppImage {
                                       width: 500
                                       height: 500
                                       x:parent.width/4
                                       y:parent.height/4.5
                                       fillMode: Image.PreserveAspectFit
                                       source: "../assets/num/2.png"
                                     }
                          }


                          IconButton {
                            icon: IconType.arrowcircleright
                            selectedIcon: IconType.arrowcircleright
                            size:120
                            x:1720
                            y:310
                            toggle: true
                            onToggled: {
                              console.debug("Button toggled")
                            }
                            onClicked: page.navigationStack.push(num3)
                          }

                          IconButton {

                            icon: IconType.arrowcircleleft
                            selectedIcon: IconType.arrowcircleleft
                            size:120
                            x:70
                            y:310
                            toggle: true
                            onToggled: {
                              console.debug("Button toggled")
                            }
                            onClicked: page.navigationStack.push(num1)
                          }



                        }
                    }

            //num3
                Component{
                        id:num3
                        Page{
                            title: "رقم ثلاثة"

                            AppButton{
                                text: "ارجع"
                                anchors.bottom: parent.bottom
                                backgroundColor: "purple"
                                onClicked: page.navigationStack.push(numberspage)

                            }

                    AppCard{
                              id: card_1
                                   margin: dp(15)
                                   paper.radius: dp(10)
                                   header: SimpleRow{
                                       text: "رقم 3 "
                                        detailText: "هو ثالث الارقام العربيه "
                                        anchors.centerIn:parent.Center
                                        enabled: true
                                              image.radius: image.width/2
                                              image.fillMode: Image.PreserveAspectCrop
                                              style: StyleSimpleRow {
                                                showDisclosure: true
                                                backgroundColor: "transparent"
                                              }
                                   }
                                   media:AppImage {
                                       width: 500
                                       height: 500
                                       x:parent.width/4
                                       y:parent.height/4.5
                                       fillMode: Image.PreserveAspectFit
                                       source: "../assets/num/3.jpg"
                                     }
                          }


                    IconButton {
                      icon: IconType.arrowcircleright
                      selectedIcon: IconType.arrowcircleright
                      size:120
                      x:1720
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num4)
                    }

                    IconButton {
                      icon: IconType.arrowcircleleft
                      selectedIcon: IconType.arrowcircleleft
                      size:120
                      x:70
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num2)
                    }


                        }
                    }

            //num4
                Component{
                        id:num4
                        Page{
                            title: "رقم اربعة"

                            AppButton{
                                text: "ارجع"
                                anchors.bottom: parent.bottom
                                backgroundColor: "purple"
                                onClicked: page.navigationStack.push(numberspage)

                            }

                    AppCard{
                              id: card_1
                                   margin: dp(15)
                                   paper.radius: dp(10)
                                   header: SimpleRow{
                                       text: "رقم 4 "
                                        detailText: "هو رابع الارقام العربيه "
                                        anchors.centerIn:parent.Center
                                        enabled: true
                                              image.radius: image.width/2
                                              image.fillMode: Image.PreserveAspectCrop
                                              style: StyleSimpleRow {
                                                showDisclosure: true
                                                backgroundColor: "transparent"
                                              }
                                   }
                                   media:AppImage {
                                       width: 500
                                       height: 500
                                       x:parent.width/4
                                       y:parent.height/4.5
                                       fillMode: Image.PreserveAspectFit
                                       source: "../assets/num/4.jpg"
                                     }
                          }


                    IconButton {
                      icon: IconType.arrowcircleright
                      selectedIcon: IconType.arrowcircleright
                      size:120
                      x:1720
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num5)
                    }

                    IconButton {
                      icon: IconType.arrowcircleleft
                      selectedIcon: IconType.arrowcircleleft
                      size:120
                      x:70
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num3)
                    }

                        }
                    }

            //num5
                Component{
                        id:num5
                        Page{
                            title: "رقم خمسة"

                            AppButton{
                                text: "ارجع"
                                anchors.bottom: parent.bottom
                                backgroundColor: "purple"
                                onClicked: page.navigationStack.push(numberspage)

                            }

                    AppCard{
                              id: card_1
                                   margin: dp(15)
                                   paper.radius: dp(10)
                                   header: SimpleRow{
                                       text: "رقم 5 "
                                        detailText: "هو خامس الارقام العربيه "
                                        anchors.centerIn:parent.Center
                                        enabled: true
                                              image.radius: image.width/2
                                              image.fillMode: Image.PreserveAspectCrop
                                              style: StyleSimpleRow {
                                                showDisclosure: true
                                                backgroundColor: "transparent"
                                              }
                                   }
                                   media:AppImage {
                                       width: 500
                                       height: 500
                                       x:parent.width/4
                                       y:parent.height/4.5
                                       fillMode: Image.PreserveAspectFit
                                       source: "../assets/num/5.png"
                                     }
                          }


                    IconButton {
                      icon: IconType.arrowcircleright
                      selectedIcon: IconType.arrowcircleright
                      size:120
                      x:1720
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num6)
                    }

                    IconButton {
                      icon: IconType.arrowcircleleft
                      selectedIcon: IconType.arrowcircleleft
                      size:120
                      x:70
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num4)
                    }


                        }
                    }

            //num6
                Component{
                    id:num6
                    Page{
                        title: "رقم ستة"

                        AppButton{
                            text: "ارجع"
                            anchors.bottom: parent.bottom
                            backgroundColor: "purple"
                            onClicked: page.navigationStack.push(numberspage)

                        }

                AppCard{
                          id: card_1
                               margin: dp(15)
                               paper.radius: dp(10)
                               header: SimpleRow{
                                   text: "رقم 6 "
                                    detailText: "هو سادس الارقام العربيه "
                                    anchors.centerIn:parent.Center
                                    enabled: true
                                          image.radius: image.width/2
                                          image.fillMode: Image.PreserveAspectCrop
                                          style: StyleSimpleRow {
                                            showDisclosure: true
                                            backgroundColor: "transparent"
                                          }
                               }
                               media:AppImage {
                                   width: 500
                                   height: 500
                                   x:parent.width/4
                                   y:parent.height/4.5
                                   fillMode: Image.PreserveAspectFit
                                   source: "../assets/num/6.jpg"
                                 }
                      }


                IconButton {
                  icon: IconType.arrowcircleright
                  selectedIcon: IconType.arrowcircleright
                  size:120
                  x:1720
                  y:310
                  toggle: true
                  onToggled: {
                    console.debug("Button toggled")
                  }
                  onClicked: page.navigationStack.push(num7)
                }

                IconButton {
                  icon: IconType.arrowcircleleft
                  selectedIcon: IconType.arrowcircleleft
                  size:120
                  x:70
                  y:310
                  toggle: true
                  onToggled: {
                    console.debug("Button toggled")
                  }
                  onClicked: page.navigationStack.push(num5)
                }


                    }
                }

            //num7
                Component{
                        id:num7
                        Page{
                            title: "رقم سابعة"

                            AppButton{
                                text: "ارجع"
                                anchors.bottom: parent.bottom
                                backgroundColor: "purple"
                                onClicked: page.navigationStack.push(numberspage)

                            }

                    AppCard{
                              id: card_1
                                   margin: dp(15)
                                   paper.radius: dp(10)
                                   header: SimpleRow{
                                       text: "رقم 7 "
                                        detailText: "هو سابع الارقام العربيه "
                                        anchors.centerIn:parent.Center
                                        enabled: true
                                              image.radius: image.width/2
                                              image.fillMode: Image.PreserveAspectCrop
                                              style: StyleSimpleRow {
                                                showDisclosure: true
                                                backgroundColor: "transparent"
                                              }
                                   }
                                   media:AppImage {
                                       width: 500
                                       height: 500
                                       x:parent.width/4
                                       y:parent.height/4.5
                                       fillMode: Image.PreserveAspectFit
                                       source: "../assets/num/7.png"
                                     }
                          }


                    IconButton {
                      icon: IconType.arrowcircleright
                      selectedIcon: IconType.arrowcircleright
                      size:120
                      x:1720
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num8)
                    }

                    IconButton {
                      icon: IconType.arrowcircleleft
                      selectedIcon: IconType.arrowcircleleft
                      size:120
                      x:70
                      y:310
                      toggle: true
                      onToggled: {
                        console.debug("Button toggled")
                      }
                      onClicked: page.navigationStack.push(num6)
                    }


                        }
                    }

            //num8
                Component{
                            id:num8
                            Page{
                                title: "رقم ثمانية"

                                AppButton{
                                    text: "ارجع"
                                    anchors.bottom: parent.bottom
                                    backgroundColor: "purple"
                                    onClicked: page.navigationStack.push(numberspage)

                                }

                        AppCard{
                                  id: card_1
                                       margin: dp(15)
                                       paper.radius: dp(10)
                                       header: SimpleRow{
                                           text: "رقم 8 "
                                            detailText: "هو ثامن الارقام العربيه "
                                            anchors.centerIn:parent.Center
                                            enabled: true
                                                  image.radius: image.width/2
                                                  image.fillMode: Image.PreserveAspectCrop
                                                  style: StyleSimpleRow {
                                                    showDisclosure: true
                                                    backgroundColor: "transparent"
                                                  }
                                       }
                                       media:AppImage {
                                           width: 500
                                           height: 500
                                           x:parent.width/4
                                           y:parent.height/4.5
                                           fillMode: Image.PreserveAspectFit
                                           source: "../assets/num/8.jpg"
                                         }
                              }


                        IconButton {
                          icon: IconType.arrowcircleright
                          selectedIcon: IconType.arrowcircleright
                          size:120
                          x:1720
                          y:310
                          toggle: true
                          onToggled: {
                            console.debug("Button toggled")
                          }
                          onClicked: page.navigationStack.push(num9)
                        }

                        IconButton {
                          icon: IconType.arrowcircleleft
                          selectedIcon: IconType.arrowcircleleft
                          size:120
                          x:70
                          y:310
                          toggle: true
                          onToggled: {
                            console.debug("Button toggled")
                          }
                          onClicked: page.navigationStack.push(num7)
                        }


                            }
                        }

            //num9
                Component{
                                id:num9
                                Page{
                                    title: "رقم تسعة"

                                    AppButton{
                                        text: "ارجع"
                                        anchors.bottom: parent.bottom
                                        backgroundColor: "purple"
                                        onClicked: page.navigationStack.push(numberspage)

                                    }

                            AppCard{
                                      id: card_1
                                           margin: dp(15)
                                           paper.radius: dp(10)
                                           header: SimpleRow{
                                               text: "رقم 9 "
                                                detailText: "هو تاسع الارقام العربيه "
                                                anchors.centerIn:parent.Center
                                                enabled: true
                                                      image.radius: image.width/2
                                                      image.fillMode: Image.PreserveAspectCrop
                                                      style: StyleSimpleRow {
                                                        showDisclosure: true
                                                        backgroundColor: "transparent"
                                                      }
                                           }
                                           media:AppImage {
                                               width: 500
                                               height: 500
                                               x:parent.width/4
                                               y:parent.height/4.5
                                               fillMode: Image.PreserveAspectFit
                                               source: "../assets/num/9.jpg"
                                             }
                                  }


                            IconButton {
                              icon: IconType.arrowcircleright
                              selectedIcon: IconType.arrowcircleright
                              size:120
                              x:1720
                              y:310
                              toggle: true
                              onToggled: {
                                console.debug("Button toggled")
                              }
                              onClicked: page.navigationStack.push(num10)
                            }

                            IconButton {
                              icon: IconType.arrowcircleleft
                              selectedIcon: IconType.arrowcircleleft
                              size:120
                              x:70
                              y:310
                              toggle: true
                              onToggled: {
                                console.debug("Button toggled")
                              }
                              onClicked: page.navigationStack.push(num8)
                            }


                                }
                            }

            //num10
                Component{
                                        id:num10
                                        Page{
                                            title: "رقم عشرة"

                                            AppButton{
                                                text: "ارجع"
                                                anchors.bottom: parent.bottom
                                                backgroundColor: "purple"
                                                onClicked: page.navigationStack.push(numberspage)

                                            }

                                    AppCard{
                                              id: card_1
                                                   margin: dp(15)
                                                   paper.radius: dp(10)
                                                   header: SimpleRow{
                                                       text: "رقم 10 "
                                                        detailText: "هو عاشر الارقام العربيه "
                                                        anchors.centerIn:parent.Center
                                                        enabled: true
                                                              image.radius: image.width/2
                                                              image.fillMode: Image.PreserveAspectCrop
                                                              style: StyleSimpleRow {
                                                                showDisclosure: true
                                                                backgroundColor: "transparent"
                                                              }
                                                   }
                                                   media:AppImage {
                                                       width: 500
                                                       height: 500
                                                       x:parent.width/4
                                                       y:parent.height/4.5
                                                       fillMode: Image.PreserveAspectFit
                                                       source: "../assets/num/10.jpg"
                                                     }
                                          }


                                    IconButton {
                                      icon: IconType.arrowcircleleft
                                      selectedIcon: IconType.arrowcircleleft
                                      size:120
                                      x:70
                                      y:310
                                      toggle: true
                                      onToggled: {
                                        console.debug("Button toggled")
                                      }
                                      onClicked: page.navigationStack.push(num9)
                                    }


                                        }
                                    }




            //alef
            Component {
              id: page1
              Page {

                title: "حرف الالف"
                AppButton {
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    text: "المستوي التالي"
                    onClicked: {
                        page.navigationStack.push(page2)
                    }
                }

                Audio {
                        id: a1
                        source: "../assets/voc/ا.m4a"
                    }

                AppButton{


                    anchors.right: parent.right
                    width: 250
                    height: 250

                    BackgroundImage { Image {

                            width: 250
                            height: 250
                        source: "../assets/alpha/ا.jpg"
                    }
                    }

                    onClicked: a1.play()


                }



        Row{
            anchors.centerIn: parent

                AppButton {
                    horizontalMargin: 100

                  text: "أسد"
                  flat: true

                  Audio {
                          id: p1
                          source: "../assets/voc/اسد.m4a"
                      }
                  Image {
                      anchors.centerIn: parent
                      width: 300
                      height: 300
                      id: i1
                      source: "../assets/img/اسد.jpg"
                      visible: !i1.visible
                      enabled: !animation.running
                    MouseArea{ //MouseArea for image of lion once you clicked on , it animates
                        anchors.fill: parent
                        onClicked: animation.start()
                  }
                  }


                  onClicked:{
                      onclicked: i1.visible =!i1.visible
                      p1.play()
                  }
                }

                  NumberAnimation {
                    id: animation
                    target: i1
                    property: "rotation"
                    from: 0
                    to: 360
                    duration: 3000
                    easing.type:"OutBack"
                    loops: 1
                  }

                AppButton {
                    horizontalMargin: 100
                  text: "أرنب"
                  flat : true
                  Audio {
                          id: p2
                          source: "../assets/voc/ارنب.m4a"
                      }
                 Image { 
                     anchors.centerIn: parent
                     width: 300
                     height: 300
                      id: i2
                      source: "../assets/img/ارنب.jpg"
                      visible: !i2.visible
                      enabled: !animation.running
                    MouseArea{ //MouseArea for image of  once you clicked on , it animates
                        anchors.fill: parent
                        onClicked: rabbit.start()
                  }
                 }
                  onClicked:{
                       onclicked: i2.visible =!i2.visible
                      p2.play()
                  }
                }


                 NumberAnimation {
                   id: rabbit
                   target: i2
                   property: "rotation"
                   from: 0
                   to: 360
                   duration: 3000
                   easing.type:"OutBack"
                   loops: 1
                 }
        }//row
              }
            }

            //Beh
                Component {
                  id: page2
                  Page {
                    title: "حرف الباء"
                    AppButton {
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right
                        text: "المستوي التالي"
                        onClicked: {
                            page.navigationStack.push(page3)
                        }
                    }
                    AppButton {
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        text: "المستوي السابق"
                        onClicked: {
                            page.navigationStack.push(page1)
                        }
                    }

                    Audio {
                            id: a2
                            source: "../assets/voc/ب.m4a"
                        }

                    AppButton{

                        anchors.right: parent.right
                        width: 250
                        height: 250

                        BackgroundImage { Image {
                                width: 250
                                height: 250
                            source: "../assets/alpha/ب.jpg"
                        }
                        }

                        onClicked: a2.play()


                    }


            //anchors.bottom: parent
                    AppButton {
                        anchors.centerIn: parent
                      text: "بطة"
                      flat: true
                      Audio {
                              id: p3
                              source: "../assets/voc/بطة.m4a"
                          }
                      Image {
                          anchors.centerIn: parent
                          width: 300
                          height: 300
                          id: i3
                          source: "../assets/img/بطة.jpg"
                          visible: !i3.visible
                          enabled: !animation.running
                        MouseArea{ //MouseArea for image of  once you clicked on , it animates
                            anchors.fill: parent
                            onClicked: duck.start()
                        }
                      }
                      onClicked:{
                          onclicked: i3.visible =!i3.visible
                          p3.play()
                      }
                    }

                    NumberAnimation {
                      id: duck
                      target: i3
                      property: "rotation"
                      from: 0
                      to: 360
                      duration: 3000
                      easing.type:"OutBack"
                      loops: 1
                    }

}
                }


              //teh
                    Component {
                      id: page3
                      Page {
                        title: "حرف التاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page4)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"

                            onClicked: {
                                page.navigationStack.push(page2)
                            }
                        }

                        Audio {
                                id: a3
                                source: "../assets/voc/ت.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250
                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ت.jpg"
                            }
                            }

                            onClicked: a3.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "تفاحة"
                          flat: true
                          Audio {
                                  id: p4
                                  source: "../assets/voc/تفاحة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i4
                              source: "../assets/img/تفاحة.jpg"
                              visible: !i4.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: apple.start()
                            }
                          }
                          onClicked:{
                             onclicked: i4.visible =!i4.visible
                              p4.play()
                          }
                        }

                        NumberAnimation {
                          id: apple
                          target: i4
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

}
                    }


        //theh
                    Component {
                      id: page4
                      Page {
                        title: "حرف الثاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page5)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page3)
                            }
                        }

                        Audio {
                                id: a4
                                source: "../assets/voc/ث.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ث.jpg"
                            }
                            }

                            onClicked: a4.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "ثعبان"
                          flat: true
                          Audio {
                                  id: p5
                                  source: "../assets/voc/ثعبان.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i5
                              source: "../assets/img/ثعبان.jpg"
                              visible: !i5.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: snake.start()
                            }
                          }

                          onClicked:{
                             onclicked: i5.visible =!i5.visible
                              p5.play()
                          }
                        }

                        NumberAnimation {
                          id: snake
                          target: i5
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //gem
                    Component {
                      id: page5
                      Page {
                        title: "حرف الجيم"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page6)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page4)
                            }
                        }

                        Audio {
                                id: a5
                                source: "../assets/voc/ج.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250
                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ج.jpg"
                            }
                            }

                            onClicked: a5.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "جمل"
                          flat: true
                          Audio {
                                  id: p6
                                  source: "../assets/voc/جمل.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i6
                              source: "../assets/img/جمل.jpg"
                              visible: !i6.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: camel.start()
                            }
                          }

                          onClicked:{
                              onclicked: i6.visible =!i6.visible
                              p6.play()
                          }
                        }

                        NumberAnimation {
                          id:camel
                          target: i6
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }


                      }
                    }

                    //hah
                    Component {
                      id: page6
                      Page {
                        title: "حرف الحاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page7)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page5)
                            }
                        }

                        Audio {
                                id: a6
                                source: "../assets/voc/ح.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ح.jpg"
                            }
                            }

                            onClicked: a6.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "حمامة"
                          flat: true
                          Audio {
                                  id: p7
                                  source: "../assets/voc/حمامة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i7
                              source: "../assets/img/حمامة.jpg"
                              visible: !i7.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: bird.start()
                          }
                          }

                          onClicked:{
                              onclicked: i7.visible =!i7.visible
                              p7.play()
                          }
                        }

                        NumberAnimation {
                          id:bird
                          target: i7
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //khah
                    Component {
                      id: page7
                      Page {
                        title: "حرف الخاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page8)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page6)
                            }
                        }

                        Audio {
                                id: a7
                                source: "../assets/voc/خ.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/خ.jpg"
                            }
                            }

                            onClicked: a7.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "خروف"
                          flat: true
                          Audio {
                                  id: p8
                                  source: "../assets/voc/خروف.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i8
                              source: "../assets/img/خروف.jpg"
                              visible: !i8.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: goat.start()
                          }

                          }

                          onClicked:{
                              onclicked: i8.visible =!i8.visible
                              p8.play()
                          }
                        }

                        NumberAnimation {
                          id:goat
                          target: i8
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //dal
                    Component {
                      id: page8
                      Page {
                        title: "حرف الدال"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page9)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page7)
                            }
                        }

                        Audio {
                                id: a8
                                source: "../assets/voc/د.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/د.jpg"
                            }
                            }

                            onClicked: a8.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "دجاجة"
                          flat: true
                          Audio {
                                  id: p9
                                  source: "../assets/voc/دجاجة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i9
                              source: "../assets/img/دجاجة.jpg"
                              visible: !i9.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: chick.start()
                          }
                          }

                          onClicked:{
                              onclicked: i9.visible =!i9.visible
                              p9.play()

                          }
                        }

                        NumberAnimation {
                          id:chick
                          target: i9
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //zal
                    Component {
                      id: page9
                      Page {
                        title: "حرف الذال"

                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page10)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page8)
                            }
                        }

                        Audio {
                                id: a9
                                source: "../assets/voc/ذ.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ذ.jpg"
                            }
                            }

                            onClicked: a9.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "ذئب"
                          flat: true
                          Audio {
                                  id: p10
                                  source: "../assets/voc/ذئب.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i10
                              source: "../assets/img/ذئب.jpg"
                              visible: !i10.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: fox.start()
                          }
                          }

                          onClicked:{
                              onclicked: i10.visible =!i10.visible
                              p10.play()
                          }
                        }

                        NumberAnimation {
                          id:fox
                          target: i10
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //rah
                    Component {
                      id: page10
                      Page {
                        title: "حرف الراء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page11)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page9)
                            }
                        }

                        Audio {
                                id: a10
                                source: "../assets/voc/ر.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ر.jpg"
                            }
                            }

                            onClicked: a10.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "رمانة"
                          flat: true
                          Audio {
                                  id: p11
                                  source: "../assets/voc/رمانة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i11
                              source: "../assets/img/رمانة.jpg"
                              visible: !i11.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: romana.start()
                          }
                          }

                          onClicked:{
                              onclicked: i11.visible =!i11.visible
                              p11.play()
                          }
                        }

                        NumberAnimation {
                          id:romana
                          target: i11
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //zen
                    Component {
                      id: page11
                      Page {
                        title: "حرف الزين"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page12)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page10)
                            }
                        }

                        Audio {
                                id: a11
                                source: "../assets/voc/ز.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ز.jpg"
                            }
                            }

                            onClicked: a11.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "زرافة"
                          flat: true
                          Audio {
                                  id: p12
                                  source: "../assets/voc/زرافة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i12
                              source: "../assets/img/زرافة.jpg"
                              visible: !i12.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: zraph.start()
                          }
                          }

                          onClicked:{
                              onclicked:i12.visible =!i12.visible
                              p12.play()
                          }
                        }

                        NumberAnimation {
                          id:zraph
                          target: i12
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //seen
                    Component {
                      id: page12
                      Page {
                        title: "حرف السين"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page13)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page11)
                            }
                        }

                        Audio {
                                id: a12
                                source: "../assets/voc/س.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/س.png"
                            }
                            }

                            onClicked: a12.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "سمكة"
                          flat: true
                          Audio {
                                  id: p13
                                  source: "../assets/voc/سمكة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i13
                              source: "../assets/img/سمكة.jpeg"
                              visible: !i13.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: fish.start()
                          }
                          }

                          onClicked:{
                              onclicked: i13.visible =!i13.visible
                              p13.play()
                          }
                        }

                        NumberAnimation {
                          id:fish
                          target: i13
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //sheen
                    Component {
                      id: page13
                      Page {
                        title: "حرف الشين"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page14)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page12)
                            }
                        }

                        Audio {
                                id: a13
                                source: "../assets/voc/ش.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ش.jpg"
                            }
                            }

                            onClicked: a13.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "شجرة"
                          flat: true
                          Audio {
                                  id: p14
                                  source: "../assets/voc/شجرة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i14
                              source: "../assets/img/شجرة.png"
                              visible: !i14.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: tree.start()
                          }

                          }

                          onClicked:{
                              onclicked: i14.visible =!i14.visible
                              p14.play()
                          }
                        }
                        NumberAnimation {
                          id:tree
                          target: i14
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }
                    //saad
                    Component {
                      id: page14
                      Page {
                        title: "حرف الصاد"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page15)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page13)
                            }
                        }

                        Audio {
                                id: a14
                                source: "../assets/voc/ص.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ص.jpg"
                            }
                            }

                            onClicked: a14.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "صياد"
                          flat: true
                          Audio {
                                  id: p15
                                  source: "../assets/voc/صياد.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i15
                              source: "../assets/img/صياد.jpg"
                              visible: !i15.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: hanter.start()
                          }
                          }

                          onClicked:{
                              onclicked: i15.visible =!i15.visible
                              p15.play()
                          }
                        }

                        NumberAnimation {
                          id:hanter
                          target: i15
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //daad
                    Component {
                      id: page15
                      Page {
                        title: "حرف الضاد"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page16)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page14)
                            }
                        }

                        Audio {
                                id: a15
                                source: "../assets/voc/ض.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ض.jpg"
                            }
                            }

                            onClicked: a15.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "ضابط"
                          flat: true
                          Audio {
                                  id: p16
                                  source: "../assets/voc/ضابط.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i16
                              source: "../assets/img/ضابط.png"
                              visible: !i16.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: officer.start()
                          }
                          }

                          onClicked:{
                              onclicked: i16.visible =!i16.visible
                              p16.play()
                          }
                        }

                        NumberAnimation {
                          id:officer
                          target: i16
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //tah
                    Component {
                      id: page16
                      Page {
                        title: "حرف الطاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page17)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page15)
                            }
                        }

                        Audio {
                                id: a16
                                source: "../assets/voc/ط.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ط.jpg"
                            }
                            }

                            onClicked: a16.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "طائرة"
                          flat: true
                          Audio {
                                  id: p17
                                  source: "../assets/voc/طائرة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i17
                              source: "../assets/img/طائرة.jpg"
                              visible: !i17.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: plane.start()
                          }
                          }

                          onClicked:{
                              onclicked: i17.visible =!i17.visible
                              p17.play()
                          }
                        }

                        NumberAnimation {
                          id:plane
                          target: i17
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //thaah
                    Component {
                      id: page17
                      Page {
                        title: "حرف الظاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page18)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page16)
                            }
                        }

                        Audio {
                                id: a17
                                source: "../assets/voc/ظ.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ظ.jpg"
                            }
                            }

                            onClicked: a17.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "ظرف"
                          flat: true
                          Audio {
                                  id: p18
                                  source: "../assets/voc/ظرف.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i18
                              source: "../assets/img/ظرف.jpg"
                              visible: !i18.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: zarf.start()
                          }
                          }

                          onClicked:{
                              onclicked: i18.visible =!i18.visible
                              p18.play()
                          }
                        }

                        NumberAnimation {
                          id:zarf
                          target: i18
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //aan
                    Component {
                      id: page18
                      Page {
                        title: "حرف العين"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page19)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page17)
                            }
                        }

                        Audio {
                                id: a18
                                source: "../assets/voc/ع.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ع.jpg"
                            }
                            }

                            onClicked: a18.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "عنب"
                          flat: true
                          Audio {
                                  id: p19
                                  source: "../assets/voc/عنب.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i19
                              source: "../assets/img/عنب.jpg"
                              visible: !i19.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: anab.start()
                          }
                          }

                          onClicked:{
                              onclicked: i19.visible =!i19.visible
                              p19.play()
                          }
                        }

                        NumberAnimation {
                          id:anab
                          target: i19
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //jaan
                    Component {
                      id: page19
                      Page {
                        title: "حرف الغين"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page20)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page18)
                            }
                        }

                        Audio {
                                id: a19
                                source: "../assets/voc/غ.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/غ.jpg"
                            }
                            }

                            onClicked: a19.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "غزال"
                          flat: true
                          Audio {
                                  id: p20
                                  source: "../assets/voc/غزال.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i20
                              source: "../assets/img/غزال.jpg"
                              visible: !i20.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: deer.start()
                          }
                          }

                          onClicked:{
                              onclicked: i20.visible =!i20.visible
                              p20.play()
                          }
                        }

                        NumberAnimation {
                          id:deer
                          target: i20
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //feh
                    Component {
                      id: page20
                      Page {
                        title: "حرف الفاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page21)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page19)
                            }
                        }
                        Audio {
                                id: a20
                                source: "../assets/voc/ف.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ف.jpg"
                            }
                            }

                            onClicked: a20.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "فراشة"
                          flat: true
                          Audio {
                                  id: p21
                                  source: "../assets/voc/فراشة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i21
                              source: "../assets/img/فراشة.png"
                              visible: !i21.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: butter.start()
                          }

                          }

                          onClicked:{
                              onclicked: i21.visible =!i21.visible
                              p21.play()
                          }
                        }
                        NumberAnimation {
                          id:butter
                          target: i21
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //qaf
                    Component {
                      id: page21
                      Page {
                        title: "حرف القاف"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page22)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page20)
                            }
                        }

                        Audio {
                                id: a21
                                source: "../assets/voc/ق.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ق.jpg"
                            }
                            }

                            onClicked: a21.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "قلم"
                          flat: true
                          Audio {
                                  id: p22
                                  source: "../assets/voc/قلم.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i22
                              source: "../assets/img/قلم.png"
                              visible: !i22.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: pen.start()
                          }
                          }

                          onClicked:{
                              onclicked: i22.visible =!i22.visible
                              p22.play()
                          }
                        }

                        NumberAnimation {
                          id:pen
                          target: i22
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //kaf
                    Component {
                      id: page22
                      Page {
                        title: "حرف الكاف"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page23)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page21)
                            }
                        }

                        Audio {
                                id: a22
                                source: "../assets/voc/ك.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ك.jpg"
                            }
                            }

                            onClicked: a22.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "كتاب"
                          flat: true
                          Audio {
                                  id: p23
                                  source: "../assets/voc/كتاب.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i23
                              source: "../assets/img/كتاب.jpg"
                              visible: !i23.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: book.start()
                          }
                          }

                          onClicked:{
                              onclicked: i23.visible =!i23.visible
                              p23.play()
                          }
                        }

                        NumberAnimation {
                          id:book
                          target: i23
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //lam
                    Component {
                      id: page23
                      Page {
                        title: "حرف اللام"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page24)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page22)
                            }
                        }

                        Audio {
                                id: a23
                                source: "../assets/voc/ل.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ل.jpg"
                            }
                            }

                            onClicked: a23.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "ليمون"
                          flat: true
                          Audio {
                                  id: p24
                                  source: "../assets/voc/ليمون.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i24
                              source: "../assets/img/ليمون.jpg"
                              visible: !i24.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: lemon.start()
                          }
                          }

                          onClicked:{
                              onclicked: i24.visible =!i24.visible
                              p24.play()
                          }
                        }

                        NumberAnimation {
                          id:lemon
                          target: i24
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //mem
                    Component {
                      id: page24
                      Page {
                        title: "حرف الميم"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page25)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page23)
                            }
                        }

                        Audio {
                                id: a24
                                source: "../assets/voc/م.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/م.jpg"
                            }
                            }

                            onClicked: a24.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "مدرسة"
                          flat: true
                          Audio {
                                  id: p25
                                  source: "../assets/voc/مدرسة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i25
                              source: "../assets/img/مدرسة.jpg"
                              visible: !i25.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: school.start()
                          }
                          }

                          onClicked:{
                              onclicked: i25.visible =!i25.visible
                              p25.play()
                          }
                        }

                        NumberAnimation {
                          id:school
                          target: i25
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //non
                    Component {
                      id: page25
                      Page {
                        title: "حرف النون"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page26)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page24)
                            }
                        }

                        Audio {
                                id: a25
                                source: "../assets/voc/ن.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ن.jpg"
                            }
                            }

                            onClicked: a25.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "نخلة"
                          flat: true
                          Audio {
                                  id: p26
                                  source: "../assets/voc/نخلة.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i26
                              source: "../assets/img/نخلة.png"
                              visible: !i26.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: nakh.start()
                          }
                          }

                          onClicked:{
                              onclicked: i26.visible =!i26.visible
                              p26.play()
                          }
                        }

                        NumberAnimation {
                          id:nakh
                          target: i26
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //heh
                    Component {
                      id: page27
                      Page {
                        title: "حرف الهاء"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page28)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page26)
                            }
                        }

                        Audio {
                                id: a26
                                source: "../assets/voc/ه.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ه.jpg"
                            }
                            }

                            onClicked: a26.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "هدهد"
                          flat: true
                          Audio {
                                  id: p27
                                  source: "../assets/voc/"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i27
                              source: "../assets/img/هدهد.png"
                              visible: !i27.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: hodhod.start()
                          }
                          }


                          onClicked:{
                              onclicked: i27.visible =!i27.visible
                              p27.play()
                          }
                        }

                        NumberAnimation {
                          id:hodhod
                          target: i27
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }

                    //waw
                    Component {
                      id: page26
                      Page {
                        title: "حرف الواو"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(page27)
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page25)
                            }
                        }

                        Audio {
                                id: a27
                                source: "../assets/voc/و.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/و.jpg"
                            }
                            }

                            onClicked: a27.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "ولد"
                          flat: true
                          Audio {
                                  id: p28
                                  source: "../assets/voc/ولد.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i28
                              source: "../assets/img/ولد.jpg"
                              visible: !i28.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: boy.start()
                          }
                          }

                          onClicked:{
                              onclicked: i28.visible =!i28.visible
                              p28.play()
                          }
                        }
                        NumberAnimation {
                          id:boy
                          target: i28
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }



                    //yah
                    Component {
                      id: page28
                      Page {
                        title: "حرف الياء"

                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "المستوي التالي"
                            onClicked: {
                                page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                            }
                        }
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "المستوي السابق"
                            onClicked: {
                                page.navigationStack.push(page27)
                            }
                        }

                        Audio {
                                id: a28
                                source: "../assets/voc/ى.m4a"
                            }

                        AppButton{
                            anchors.right: parent.right
                            width: 250
                            height: 250

                            BackgroundImage { Image {
                                    width: 250
                                    height: 250
                                source: "../assets/alpha/ي.jpg"
                            }
                            }

                            onClicked: a28.play()


                        }


                        AppButton {
                            anchors.centerIn: parent
                          text: "يد"
                          flat: true
                          Audio {
                                  id: p29
                                  source: "../assets/voc/يد.m4a"
                              }
                          Image {
                              anchors.centerIn: parent
                              width: 300
                              height: 300
                              id: i29
                              source: "../assets/img/يد.png"
                              visible: !i29.visible
                              enabled: !animation.running
                            MouseArea{ //MouseArea for image of  once you clicked on , it animates
                                anchors.fill: parent
                                onClicked: hand.start()
                          }
                          }

                          onClicked:{
                              onclicked: i29.visible =!i29.visible
                              p29.play()
                          }
                        }

                        NumberAnimation {
                          id:hand
                          target: i29
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 3000
                          easing.type:"OutBack"
                          loops: 1
                        }

                      }
                    }


              /*
                    //test 1
                    Component {
                      id: page29
                      Page {
                        title: "Test 1"
                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.right: parent.right
                            text: "الاختبار التالي"
                            onClicked: {
                                page.navigationStack.push(page30)
                            }
                        }


                    anchors.bottom: parent
                        AppButton {
                          text: "أسد"
                          flat: true

                          onClicked:{
                              PictureViewer.show(app,"assets/lion.jpg")
                          }
                        }

                      }
                    }


              */



              /*
                    //test 2
                    Component {
                      id: page30
                      Page {
                        title: "Test 2"

                        AppButton {
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            text: "الاختبار السابق"
                            onClicked: {
                                page.navigationStack.push(page29)
                            }
                        }

                    anchors.bottom: parent
                        AppButton {
                          text: "أسد"
                          flat: true

                          onClicked:{
                              PictureViewer.show(app,"assets/lion.jpg")
                          }
                        }

                      }
                    }

        */



}//App
