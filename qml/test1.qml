import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.9
import QtQuick 2.9

Page {

    id: testy1


    Page{
        id: test1

          title: "الاختبار الاول"

    //rd1
          Dialog{

              id:right1
              title: "اجابة صحيحة"
              Text {
                  id: t1
                  x:240
                  text: qsTr("اضغط نعم لاستكمال اللعب")
              }

              positiveActionLabel: "نعم"
              negativeActionLabel: "لا"
              onCanceled: close()
              onAccepted: close()

              Image {
                  anchors.centerIn: parent
                  id: img1
                  width: 250
                  height: 250
                  source: "../assets/img/بطة.jpg"
              }

          }



       //wd
          Dialog{
              visible: parent
                //enabled: visible


              id:customwrong
              title: "اجابة خاطئة"
              Text {
                  id: t2
                  x:240
                  text: qsTr("اضغط نعم للاعادة")
              }

              positiveActionLabel: "نعم"
              negativeActionLabel: "لا"
              onAccepted: close()
              onCanceled: close()

              Image {
                  anchors.centerIn: parent
                  id: img2
                  width: 250
                  height: 250
                  source: "../assets/img/عيوطة.jpg"
              }

          }



          //choice1
               AppCard{
                          id: card_1
                               margin: dp(15)
                               paper.radius: dp(10)
                               header: SimpleRow{
                                   text: "أسد"
                                    detailText: "اختار الصورة التي تشير الي الحرف"
                                    anchors.centerIn:parent.Center
                                    enabled: true
                                          style: StyleSimpleRow {
                                            showDisclosure: true
                                            backgroundColor: "transparent"
                                          }
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
                        onClicked: page.navigationStack.push(c2)
                      }

                      AppText{
                          id:text1
                        visible: !text1.visible
                        text: "بطة"
                        fontSize: 40
                        x:370
                        y:600
                      }

                      AppText{
                          id:text2
                        visible: !text2.visible
                        text: "ثعبان"
                        fontSize: 40
                        x:870
                        y:600
                      }

                AppButton {

                  width: 325
                  height: 325
                  x:1300
                  y:275
                  backgroundColor: "white"
                  backgroundColorPressed: "green"

                  BackgroundImage { Image {
                          x:7.5
                          y:7.5
                          width: 300
                          height: 300
                      source: "../assets/img/اسد.jpg"
                  }
                  }

                  onClicked:{
                      right1.open()
                      text1.visible =!text1.visible
                      text2.visible =!text2.visible
                      b1.visible=!b1.visible


                  }

                }

                AppButton {
                    id:b1
                   anchors.centerIn: parent
                   width: 325
                  height: 325

                  backgroundColor: "white"
                  backgroundColorPressed: "red"

                  BackgroundImage { Image {

                          x:7.5
                          y:7.5
                          width: 300
                          height: 300
                      source: "../assets/img/ثعبان.jpg"
                  }
                  }

                  onClicked: {

                      customwrong.open()
                      b1.visible=!b1.visible


                  }
                }

                AppButton {
                  width: 325
                  height: 325
                  x:300
                  y:275
                  backgroundColor: "white"
                  backgroundColorPressed: "red"

                  BackgroundImage { Image {
                          x:7.5
                          y:7.5
                          width: 300
                          height: 300
                      source: "../assets/img/بطة.jpg"
                  }
                  }

                  onClicked:{
                      customwrong.open()
                      b1.visible=!b1.visible



                  }
                }



                //choice2
                Component{
                    id:c2
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "تفاحة"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }


                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c3)
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
                              onClicked: page.navigationStack.push(test1)
                            }


                            AppText{
                                id:text3
                              visible: !text3.visible
                              text: "شجرة"
                              fontSize: 40
                              x:1370
                              y:600
                            }

                            AppText{
                                id:text4
                              visible: !text4.visible
                              text: "جمل"
                              fontSize: 40
                              x:870
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/شجرة.png"
                        }
                        }

                        onClicked: customwrong.open()


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/جمل.jpg"
                        }
                        }

                        onClicked: customwrong.open()

                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/تفاحة.jpg"
                        }
                        }

                        onClicked: {
                            right1.open()
                        text3.visible =!text3.visible
                        text4.visible =!text4.visible

                      }

                      }

                    }

                }



                //choice3
                Component{
                    id:c3
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "حمامة"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }


                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c4)
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
                              onClicked: page.navigationStack.push(c2)
                            }


                            AppText{
                                id:text5
                              visible: !text5.visible
                              text: "نخلة"
                              fontSize: 40
                              x:1370
                              y:600
                            }

                            AppText{
                                id:text6
                              visible: !text6.visible
                              text: "غزال"
                              fontSize: 40
                              x:870
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/نخلة.png"
                        }
                        }

                        onClicked: customwrong.open()


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/غزال.jpg"
                        }
                        }

                        onClicked: customwrong.open()

                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/حمامة.jpg"
                        }
                        }

                        onClicked: {
                            right1.open()
                        text5.visible =!text5.visible
                        text6.visible =!text6.visible

                      }

                      }

                    }

                }


                //choice4
                Component{
                    id:c4
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "خروف"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }

                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c5)
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
                              onClicked: page.navigationStack.push(c3)
                            }


                            AppText{
                                id:text7
                              visible: !text7.visible
                              text: "مدرسة"
                              fontSize: 40
                              x:870
                              y:600
                            }

                            AppText{
                                id:text8
                              visible: !text8.visible
                              text: "يد"
                              fontSize: 40
                              x:370
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/خروف.jpg"
                        }
                        }

                        onClicked:{

                            right1.open()
                        text7.visible =!text7.visible
                        text8.visible =!text8.visible
                        }


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/مدرسة.jpg"
                        }
                        }

                        onClicked: customwrong.open()
                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/يد.png"
                        }
                        }

                        onClicked: {
                            customwrong.open()


                      }

                      }

                    }

                }




                //choice5
                Component{
                    id:c5
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "دجاجة"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }


                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c6)
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
                              onClicked: page.navigationStack.push(c4)
                            }


                            AppText{
                                id:text9
                              visible: !text9.visible
                              text: "سمكة"
                              fontSize: 40
                              x:870
                              y:600
                            }

                            AppText{
                                id:text10
                              visible: !text10.visible
                              text: "كتاب"
                              fontSize: 40
                              x:370
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/دجاجة.jpg"
                        }
                        }

                        onClicked:{

                            right1.open()
                        text9.visible =!text9.visible
                        text10.visible =!text10.visible
                        }


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/سمكة.jpeg"
                        }
                        }

                        onClicked: customwrong.open()
                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/كتاب.jpg"
                        }
                        }

                        onClicked: {
                            customwrong.open()


                      }

                      }

                    }

                }



                //choice6
                Component{
                    id:c6
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "ذئب"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }


                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c7)
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
                              onClicked: page.navigationStack.push(c5)
                            }


                            AppText{
                                id:text11
                              visible: !text11.visible
                              text: "هدهد"
                              fontSize: 40
                              x:870
                              y:600
                            }

                            AppText{
                                id:text12
                              visible: !text12.visible
                              text: "ضابط"
                              fontSize: 40
                              x:1370
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/ضابط.png"
                        }
                        }

                        onClicked:{

                            customwrong.open()
                        }


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/هدهد.png"
                        }
                        }

                        onClicked: customwrong.open()
                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/ذئب.jpg"
                        }
                        }

                        onClicked: {

                            right1.open()
                        text11.visible =!text11.visible
                        text12.visible =!text12.visible

                      }

                      }

                    }

                }




                //choice7
                Component{
                    id:c7
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "رمانة"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }

                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c8)
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
                              onClicked: page.navigationStack.push(c6)
                            }


                            AppText{
                                id:text13
                              visible: !text13.visible
                              text: "ظرف"
                              fontSize: 40
                              x:1370
                              y:600
                            }

                            AppText{
                                id:text14
                              visible: !text14.visible
                              text: "ولد"
                              fontSize: 40
                              x:370
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/ظرف.jpg"
                        }
                        }

                        onClicked:{

                            customwrong.open()
                        }


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/رمانة.jpg"
                        }
                        }

                        onClicked: {

                            right1.open()
                        text13.visible =!text13.visible
                        text14.visible =!text14.visible
                        }
                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/ولد.jpg"
                        }
                        }

                        onClicked: {
                            customwrong.open()


                      }

                      }

                    }

                }




                //choice8
                Component{
                    id:c8
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "زرافة"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }


                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c9)
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
                              onClicked: page.navigationStack.push(c7)
                            }


                            AppText{
                                id:text15
                              visible: !text15.visible
                              text: "فراشة"
                              fontSize: 40
                              x:870
                              y:600
                            }

                            AppText{
                                id:text16
                              visible: !text16.visible
                              text: "ليمون"
                              fontSize: 40
                              x:1370
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/ليمون.jpg"
                        }
                        }

                        onClicked:{

                            customwrong.open()
                        }


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/فراشة.png"
                        }
                        }

                        onClicked: customwrong.open()
                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/زرافة.jpg"
                        }
                        }

                        onClicked: {
                            right1.open()
                        text15.visible =!text15.visible
                        text16.visible =!text16.visible


                      }

                      }

                    }

                }




                //choice9
                Component{
                    id:c9
                    Page{
                     AppCard{
                                id: card_1
                                     margin: dp(15)
                                     paper.radius: dp(10)
                                     header: SimpleRow{
                                         text: "عنب"
                                          detailText: "اختار الصورة التي تشير الي الكلمة"
                                          anchors.centerIn:parent.Center
                                          enabled: true
                                                style: StyleSimpleRow {
                                                  showDisclosure: true
                                                  backgroundColor: "transparent"
                                                }
                                     }

                            }


                     AppButton {
                             anchors.bottom: parent.bottom
                             anchors.right: parent.right
                             text: "الاختبار التالي"
                             onClicked: {
                                 page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
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
                              onClicked: page.navigationStack.push(c8)
                            }


                            AppText{
                                id:text17
                              visible: !text17.visible
                              text: "صياد"
                              fontSize: 40
                              x:870
                              y:600
                            }

                            AppText{
                                id:text18
                              visible: !text18.visible
                              text: "طائرة"
                              fontSize: 40
                              x:370
                              y:600
                            }

                      AppButton {

                        width: 325
                        height: 325
                        x:1300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "green"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/عنب.jpg"
                        }
                        }

                        onClicked:{

                            right1.open()
                        text17.visible =!text17.visible
                        text18.visible =!text18.visible
                        }


                      }

                      AppButton {
                          anchors.centerIn: parent
                        width: 325
                        height: 325

                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/صياد.jpg"
                        }
                        }

                        onClicked: customwrong.open()
                      }

                      AppButton {
                        width: 325
                        height: 325
                        x:300
                        y:275
                        backgroundColor: "white"
                        backgroundColorPressed: "red"

                        BackgroundImage { Image {
                                x:7.5
                                y:7.5
                                width: 300
                                height: 300
                            source: "../assets/img/طائرة.jpg"
                        }
                        }

                        onClicked: {
                            customwrong.open()


                      }

                      }

                    }

                }








    AppButton {
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            text: "الاختبار التالي"
            onClicked: {
                page.navigationStack.push(Qt.resolvedUrl("test2.qml"))
            }
        }



 }
}






