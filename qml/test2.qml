import QtQuick 2.0
import Felgo 3.0

Page {


    id: testy2


    Page{
        id:test2
        title: "الاختبار الثاني"


              AppText {
                    x:370; y:10
                    text:"تفاحة" }

                    AppText {
                    x:870; y:10
                    text:"بطة" }

                    AppText {
                    x:1370; y:10
                    text:"اسد" }

                         Rectangle {
                             id :re
                             anchors.fill: dropArea
                           border.color: 'black' }

                         DropArea {
                           id: dropArea
                           x: 300; y: 100
                            width: 250; height: 250

                           onContainsDragChanged: {
                             if (rec1) {
                                    tex1.visible=!tex1.visible }
                            else {te1.visible=!te1.visible}
                            }

                           onPositionChanged:  {
                                                  if (rec1) {
                                                         tex1.visible=!tex1.visible }
                                                 else if (!rec1){ te1.visible=!te1.visible }

                                                  }

                         }

                         AppText {
                         id: tex1
                         x:370; y:350
                         visible:!tex1.visible
                         text:"صحيح" }

                          AppText {
                                 id: te1
                                x:370; y:350
                                 visible:!te1.visible
                                text:"حطأ"  }
                          Rectangle {
                                        id:rec1
                                       x: 370; y: 500
                                       width: 200;  height: 200
                                       z: 1
                           Image {
                                         id:img1
                                          anchors.centerIn: parent
                                           width: 200;  height: 200
                                          source: "../assets/img/اسد.jpg"   }
                               Drag.active: dragArea.drag.active
                        MouseArea {
                             id: dragArea
                            anchors.fill: parent
                           drag.target: parent
                          }
                        }




              /* second div */
                          Rectangle { anchors.fill: dropArea2
                            border.color: 'black' }

                          DropArea {
                            id: dropArea2
                            x: 800; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec2) {
                                     tex2.visible=!tex2.visible }
                              else{
                                  te2.visible=!te2.visible  }}

                            onPositionChanged:  {
                                                   if (rec2) {
                                                          tex2.visible=!tex2.visible }
                                                  else if (!rec2){ te2.visible=!te2.visible }

                                                   }

                         }

                          AppText {
                        id: tex2
                          x:870; y:350
                          visible:!tex2.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te2
                                 x:870; y:350
                                  visible:!te2.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec2
                                       x: 870; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img2
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/بطة.jpg"   }
                                Drag.active: dragArea2.drag.active
                        MouseArea {
                            id: dragArea2
                            anchors.fill: parent
                           drag.target: parent
                           }
                        }

                          /*third*/


                          Rectangle { anchors.fill: dropArea3
                            border.color: 'black' }

                          DropArea {
                            id: dropArea3
                            x: 1300; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec3) {
                                     tex3.visible=!tex3.visible }
                              else {te3.visible=!te3.visible}
                              }

                            onPositionChanged:  {
                                                   if (rec3) {
                                                          tex3.visible=!tex3.visible }
                                                  else if (!rec3){ te3.visible=!te3.visible }

                                                   }

                         }

                          AppText {
                        id: tex3
                          x:1370; y:350
                          visible:!tex3.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te3
                                 x:1370; y:350
                                  visible:!te3.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec3
                                       x: 1370; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img3
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/تفاحة.jpg"   }
                                Drag.active: dragArea3.drag.active
                        MouseArea {
                            id: dragArea3
                            anchors.fill: parent
                           drag.target: parent
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
                            onClicked: page.navigationStack.push(test2_1)
                          }

                          AppButton {
                              anchors.bottom: parent.bottom
                              anchors.left: parent.left
                              text: "الاختبار السابق"
                              onClicked: {
                                  page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                              }
                          }

        /***********************************************frist Component*******************************************************/
              Component{
                id:test2_1
                 Page{
                   title: "ضع الصور في مكانها الصحيح"

                     AppText {
                           x:370; y:10
                           text:"جمل" }

                           AppText {
                           x:870; y:10
                           text:"ثعبان" }

                           AppText {
                           x:1370; y:10
                           text:"حمامة" }

                                Rectangle {
                                    id :re
                                    anchors.fill: dropArea
                                  border.color: 'black' }

                                DropArea {
                                  id: dropArea
                                  x: 300; y: 100
                                   width: 250; height: 250

                                  onContainsDragChanged: {
                                    if (rec1) {
                                           tex1.visible=!tex1.visible }
                                   else { te1.visible=!te1.visible }
                                   }
                                  onPositionChanged:  {
                                                         if (rec1) {
                                                                tex1.visible=!tex1.visible }
                                                        else if (!rec1){ te1.visible=!te1.visible }

                                                         }

                                }

                                AppText {
                                id: tex1
                                x:370; y:350
                                visible:!tex1.visible
                                text:"صحيح" }

                                 AppText {
                                        id: te1
                                       x:370; y:350
                                        visible:!te1.visible
                                       text:"حطأ"  }
                                 Rectangle {
                                               id:rec1
                                              x: 370; y: 500
                                              width: 200;  height: 200
                                              z: 1
                                  Image {
                                                id:img1
                                                 anchors.centerIn: parent
                                                  width: 200;  height: 200
                                                 source: "../assets/img/ثعبان.jpg"   }
                                      Drag.active: dragArea.drag.active
                               MouseArea {
                                    id: dragArea
                                   anchors.fill: parent
                                  drag.target: parent
                                 }
                               }




                     /* second div */
                                 Rectangle { anchors.fill: dropArea2
                                   border.color: 'black' }

                                 DropArea {
                                   id: dropArea2
                                   x: 800; y: 100
                                   width: 250; height: 250
                                   onContainsDragChanged: {
                                     if (rec2) {
                                            tex2.visible=!tex2.visible }
                                      else {te2.visible=!te2.visible}
                                     }

                                   onPositionChanged:  {
                                                          if (rec2) {
                                                                 tex2.visible=!tex2.visible }
                                                         else if (!rec2){ te2.visible=!te2.visible }

                                                          }

                                }

                                 AppText {
                               id: tex2
                                 x:870; y:350
                                 visible:!tex2.visible
                                 text:"صحيح"
                                  }
                                  AppText {
                                        id: te2
                                        x:870; y:350
                                         visible:!te2.visible
                                        text:"حطأ"  }
                                 Rectangle {
                                              id:rec2
                                              x: 870; y: 500
                                               width: 200;  height: 200
                                              z: 1
                                   Image {
                                                id:img2
                                                  anchors.centerIn: parent
                                                   width: 200;  height: 200
                                                  source: "../assets/img/جمل.jpg"   }
                                       Drag.active: dragArea2.drag.active
                               MouseArea {
                                   id: dragArea2
                                   anchors.fill: parent
                                  drag.target: parent
                                  }
                               }

                                 /*third*/


                                 Rectangle { anchors.fill: dropArea3
                                   border.color: 'black' }

                                 DropArea {
                                   id: dropArea3
                                   x: 1300; y: 100
                                   width: 250; height: 250
                                   onContainsDragChanged: {
                                     if (rec3) {
                                            tex3.visible=!tex3.visible }
                                     else {te3.visible=!te3.visible}
                                     }

                                   onPositionChanged:  {
                                                          if (rec3) {
                                                                 tex3.visible=!tex3.visible }
                                                         else if (!rec3){ te3.visible=!te3.visible }

                                                          }

                                }

                                 AppText {
                               id: tex3
                                 x:1370; y:350
                                 visible:!tex3.visible
                                 text:"صحيح"
                                  }
                                  AppText {
                                        id: te3
                                        x:1370; y:350
                                         visible:!te3.visible
                                        text:"حطأ"  }
                                 Rectangle {
                                              id:rec3
                                              x: 1370; y: 500
                                               width: 200;  height: 200
                                              z: 1
                                   Image {
                                                id:img3
                                                  anchors.centerIn: parent
                                                   width: 200;  height: 200
                                                  source: "../assets/img/حمامة.jpg"   }
                                       Drag.active: dragArea3.drag.active
                               MouseArea {
                                   id: dragArea3
                                   anchors.fill: parent
                                  drag.target: parent
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
                 onClicked: page.navigationStack.push(test2_2)
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
                 onClicked: page.navigationStack.push(page)
                }

               AppButton {
                   anchors.bottom: parent.bottom
                   anchors.left: parent.left
                   text: "الاختبار السابق"
                   onClicked: {
                       page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                   }
               }

               }
              }
          /********************************************second Component *************************************/



              Component{
                id:test2_2
                 Page{

              title: "ضع الصور في مكانها الصحيح"
              AppText {
                    x:370; y:10
                    text:"خروف" }

                    AppText {
                    x:870; y:10
                    text:"دجاجة" }

                    AppText {
                    x:1370; y:10
                    text:"ذئب" }

                         Rectangle {
                             id :re
                             anchors.fill: dropArea
                           border.color: 'black' }

                         DropArea {
                           id: dropArea
                           x: 300; y: 100
                            width: 250; height: 250

                           onContainsDragChanged: {
                             if (rec1) {
                                    tex1.visible=!tex1.visible }
                            else if (!rec1){ te1.visible=!te1.visible }
                            }

                         }

                         AppText {
                         id: tex1
                         x:370; y:350
                         visible:!tex1.visible
                         text:"صحيح" }

                          AppText {
                                 id: te1
                                x:370; y:350
                                 visible:!te1.visible
                                text:"حطأ"  }
                          Rectangle {
                                        id:rec1
                                       x: 370; y: 500
                                       width: 200;  height: 200
                                       z: 1
                           Image {
                                         id:img1
                                          anchors.centerIn: parent
                                           width: 200;  height: 200
                                          source: "../assets/img/خروف.jpg"   }
                               Drag.active: dragArea.drag.active
                        MouseArea {
                             id: dragArea
                            anchors.fill: parent
                           drag.target: parent
                          }
                        }




              /* second div */
                          Rectangle { anchors.fill: dropArea2
                            border.color: 'black' }

                          DropArea {
                            id: dropArea2
                            x: 800; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec2) {
                                     tex2.visible=!tex2.visible }
                               else {te2.visible=!te2.visible}
                              }

                         }

                          AppText {
                        id: tex2
                          x:870; y:350
                          visible:!tex2.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te2
                                 x:870; y:350
                                  visible:!te2.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec2
                                       x: 870; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img2
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/دجاجة.jpg"   }
                                Drag.active: dragArea2.drag.active
                        MouseArea {
                            id: dragArea2
                            anchors.fill: parent
                           drag.target: parent
                           }
                        }

                          /*third*/


                          Rectangle { anchors.fill: dropArea3
                            border.color: 'black' }

                          DropArea {
                            id: dropArea3
                            x: 1300; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec3) {
                                     tex3.visible=!tex3.visible }
                              else if(img2) {te3.visible=!te3.visible}
                              }
                         }

                          AppText {
                        id: tex3
                          x:1370; y:350
                          visible:!tex3.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te3
                                 x:1370; y:350
                                  visible:!te3.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec3
                                       x: 1370; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img3
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/ذئب.jpg"   }
                                Drag.active: dragArea3.drag.active
                        MouseArea {
                            id: dragArea3
                            anchors.fill: parent
                           drag.target: parent
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
                 onClicked: page.navigationStack.push(test2_3)
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
                 onClicked: page.navigationStack.push(test2_1)
                }

               AppButton {
                   anchors.bottom: parent.bottom
                   anchors.left: parent.left
                   text: "الاختبار السابق"
                   onClicked: {
                       page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                   }
               }

               }
              }

        /*******************************************third commponant ********************************************/




              Component{
                id:test2_3
                 Page{

              title: "ضع الصور في مكانها الصحيح"
              AppText {
                    x:370; y:10
                    text:"رمانة" }

                    AppText {
                    x:870; y:10
                    text:"زرافة" }

                    AppText {
                    x:1370; y:10
                    text:"سمكة" }

                         Rectangle {
                             id :re
                             anchors.fill: dropArea
                           border.color: 'black' }

                         DropArea {
                           id: dropArea
                           x: 300; y: 100
                            width: 250; height: 250

                           onContainsDragChanged: {
                             if (rec1) {
                                    tex1.visible=!tex1.visible }
                            else { te1.visible=!te1.visible }
                            }

                         }

                         AppText {
                         id: tex1
                         x:370; y:350
                         visible:!tex1.visible
                         text:"صحيح" }

                          AppText {
                                 id: te1
                                x:370; y:350
                                 visible:!te1.visible
                                text:"حطأ"  }
                          Rectangle {
                                        id:rec1
                                       x: 370; y: 500
                                       width: 200;  height: 200
                                       z: 1
                           Image {
                                         id:img1
                                          anchors.centerIn: parent
                                           width: 200;  height: 200
                                          source: "../assets/img/رمانة.jpg"   }
                               Drag.active: dragArea.drag.active
                        MouseArea {
                             id: dragArea
                            anchors.fill: parent
                           drag.target: parent
                          }
                        }




              /* second div */
                          Rectangle { anchors.fill: dropArea2
                            border.color: 'black' }

                          DropArea {
                            id: dropArea2
                            x: 800; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec2) {
                                     tex2.visible=!tex2.visible }
                               else {te2.visible=!te2.visible}
                               }
                         }

                          AppText {
                        id: tex2
                          x:870; y:350
                          visible:!tex2.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te2
                                 x:870; y:350
                                  visible:!te2.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec2
                                       x: 870; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img2
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/زرافة.jpg"   }
                                Drag.active: dragArea2.drag.active
                        MouseArea {
                            id: dragArea2
                            anchors.fill: parent
                           drag.target: parent
                           }
                        }

                          /*third*/


                          Rectangle { anchors.fill: dropArea3
                            border.color: 'black' }

                          DropArea {
                            id: dropArea3
                            x: 1300; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec3) {
                                     tex3.visible=!tex3.visible }
                              else {te3.visible=!te3.visible}
                              }
                         }

                          AppText {
                        id: tex3
                          x:1370; y:350
                          visible:!tex3.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te3
                                 x:1370; y:350
                                  visible:!te3.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec3
                                       x: 1370; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img3
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/سمكة.JPEG"   }
                                Drag.active: dragArea3.drag.active
                        MouseArea {
                            id: dragArea3
                            anchors.fill: parent
                           drag.target: parent
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
                 onClicked: page.navigationStack.push(test2_4)
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
                 onClicked: page.navigationStack.push(test2_2)
                }

               AppButton {
                   anchors.bottom: parent.bottom
                   anchors.left: parent.left
                   text: "الاختبار السابق"
                   onClicked: {
                       page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                   }
               }

               }
              }

        /***************************************************************4 Component ********************/

              Component{
                id:test2_4
                 Page{

              title: "ضع الصور في مكانها الصحيح"
              AppText {
                    x:370; y:10
                    text:"شجرة" }

                    AppText {
                    x:870; y:10
                    text:"صياد" }

                    AppText {
                    x:1370; y:10
                    text:"ضابط" }

                         Rectangle {
                             id :re
                             anchors.fill: dropArea
                           border.color: 'black' }

                         DropArea {
                           id: dropArea
                           x: 300; y: 100
                            width: 250; height: 250

                           onContainsDragChanged: {
                             if (rec1) {
                                    tex1.visible=!tex1.visible }
                            else { te1.visible=!te1.visible }
                            }
                         }

                         AppText {
                         id: tex1
                         x:370; y:350
                         visible:!tex1.visible
                         text:"صحيح" }

                          AppText {
                                 id: te1
                                x:370; y:350
                                 visible:!te1.visible
                                text:"حطأ"  }
                          Rectangle {
                                        id:rec1
                                       x: 370; y: 500
                                       width: 200;  height: 200
                                       z: 1
                           Image {
                                         id:img1
                                          anchors.centerIn: parent
                                           width: 200;  height: 200
                                          source: "../assets/img/شجرة.png"   }
                               Drag.active: dragArea.drag.active
                        MouseArea {
                             id: dragArea
                            anchors.fill: parent
                           drag.target: parent
                          }
                        }




              /* second div */
                          Rectangle { anchors.fill: dropArea2
                            border.color: 'black' }

                          DropArea {
                            id: dropArea2
                            x: 800; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec2) {
                                     tex2.visible=!tex2.visible }
                               else {te2.visible=!te2.visible}
                               }
                         }

                          AppText {
                        id: tex2
                          x:870; y:350
                          visible:!tex2.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te2
                                 x:870; y:350
                                  visible:!te2.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec2
                                       x: 870; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img2
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/صياد.jpg"   }
                                Drag.active: dragArea2.drag.active
                        MouseArea {
                            id: dragArea2
                            anchors.fill: parent
                           drag.target: parent
                           }
                        }

                          /*third*/


                          Rectangle { anchors.fill: dropArea3
                            border.color: 'black' }

                          DropArea {
                            id: dropArea3
                            x: 1300; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec3) {
                                     tex3.visible=!tex3.visible }
                              else {te3.visible=!te3.visible}
                              }
                         }

                          AppText {
                        id: tex3
                          x:1370; y:350
                          visible:!tex3.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te3
                                 x:1370; y:350
                                  visible:!te3.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec3
                                       x: 1370; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img3
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/ضابط.PNG"   }
                                Drag.active: dragArea3.drag.active
                        MouseArea {
                            id: dragArea3
                            anchors.fill: parent
                           drag.target: parent
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
                 onClicked: page.navigationStack.push(test2_5)
               }

               IconButton {

                 icon: IconType.arrowcircleleft
                 selectedIcon: IconType.arrowcircleleft
                 size:120
                 x:20
                 y:500
                 toggle: true
                 onToggled: {
                   console.debug("Button toggled")
                 }
                 onClicked: page.navigationStack.push(test2_3)
                }

               AppButton {
                   anchors.bottom: parent.bottom
                   anchors.left: parent.left
                   text: "الاختبار السابق"
                   onClicked: {
                       page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                   }
               }

               }
              }
              /**********************************************************5 Component***********************/



              Component{
                id:test2_5
                 Page{

              title: "ضع الصور في مكانها الصحيح"
              AppText {
                    x:370; y:10
                    text:"طائرة" }

                    AppText {
                    x:870; y:10
                    text:"ظرف" }

                    AppText {
                    x:1370; y:10
                    text:"عنب" }

                         Rectangle {
                             id :re
                             anchors.fill: dropArea
                           border.color: 'black' }

                         DropArea {
                           id: dropArea
                           x: 300; y: 100
                            width: 250; height: 250

                           onContainsDragChanged: {
                             if (rec1) {
                                    tex1.visible=!tex1.visible }
                            else { te1.visible=!te1.visible }
                            }

                         }

                         AppText {
                         id: tex1
                         x:370; y:350
                         visible:!tex1.visible
                         text:"صحيح" }

                          AppText {
                                 id: te1
                                x:370; y:350
                                 visible:!te1.visible
                                text:"حطأ"  }
                          Rectangle {
                                        id:rec1
                                       x: 370; y: 500
                                       width: 200;  height: 200
                                       z: 1
                           Image {
                                         id:img1
                                          anchors.centerIn: parent
                                           width: 200;  height: 200
                                          source: "../assets/img/طائرة.JPG"   }
                               Drag.active: dragArea.drag.active
                        MouseArea {
                             id: dragArea
                            anchors.fill: parent
                           drag.target: parent
                          }
                        }




              /* second div */
                          Rectangle { anchors.fill: dropArea2
                            border.color: 'black' }

                          DropArea {
                            id: dropArea2
                            x: 800; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec2) {
                                     tex2.visible=!tex2.visible }
                               else {te2.visible=!te2.visible}
                               }
                         }

                          AppText {
                        id: tex2
                          x:870; y:350
                          visible:!tex2.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te2
                                 x:870; y:350
                                  visible:!te2.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec2
                                       x: 870; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img2
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/ظرف.JPG"   }
                                Drag.active: dragArea2.drag.active
                        MouseArea {
                            id: dragArea2
                            anchors.fill: parent
                           drag.target: parent
                           }
                        }

                          /*third*/


                          Rectangle { anchors.fill: dropArea3
                            border.color: 'black' }

                          DropArea {
                            id: dropArea3
                            x: 1300; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec3) {
                                     tex3.visible=!tex3.visible }
                              else {te3.visible=!te3.visible}
                              }
                         }

                          AppText {
                        id: tex3
                          x:1370; y:350
                          visible:!tex3.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te3
                                 x:1370; y:350
                                  visible:!te3.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec3
                                       x: 1370; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img3
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/عنب.JPG"   }
                                Drag.active: dragArea3.drag.active
                        MouseArea {
                            id: dragArea3
                            anchors.fill: parent
                           drag.target: parent
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
                 onClicked: page.navigationStack.push(test2_6)
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
                 onClicked: page.navigationStack.push(test2_4)
                }

               AppButton {
                   anchors.bottom: parent.bottom
                   anchors.left: parent.left
                   text: "الاختبار السابق"
                   onClicked: {
                       page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                   }
               }

               }
              }
              /*******************************************************6 Component *******************************************/





              Component{
                id:test2_6
                 Page{

              title: "ضع الصور في مكانها الصحيح"
              AppText {
                    x:370; y:10
                    text:"غزال" }

                    AppText {
                    x:870; y:10
                    text:"فراشة" }

                    AppText {
                    x:1370; y:10
                    text:"قلم" }

                    Rectangle {
                        id :re
                        anchors.fill: dropArea
                      border.color: 'black' }

                    DropArea {
                      id: dropArea
                      x: 300; y: 100
                       width: 250; height: 250

                      onContainsDragChanged: {
                        if (rec1) {
                               tex1.visible=!tex1.visible }
                       else { te1.visible=!te1.visible }
                       }

                    }

                    AppText {
                    id: tex1
                    x:370; y:350
                    visible:!tex1.visible
                    text:"صحيح" }

                     AppText {
                            id: te1
                           x:370; y:350
                            visible:!te1.visible
                           text:"حطأ"  }
                     Rectangle {
                                   id:rec1
                                  x: 370; y: 500
                                  width: 200;  height: 200
                                  z: 1
                      Image {
                                    id:img1
                                     anchors.centerIn: parent
                                      width: 200;  height: 200
                                     source: "../assets/img/قلم.PNG"   }
                          Drag.active: dragArea.drag.active
                   MouseArea {
                        id: dragArea
                       anchors.fill: parent
                      drag.target: parent
                     }
                   }





              /* second div */
                          Rectangle { anchors.fill: dropArea2
                            border.color: 'black' }

                          DropArea {
                            id: dropArea2
                            x: 800; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec2) {
                                     tex2.visible=!tex2.visible }
                               else {te2.visible=!te2.visible}
                               }
                         }

                          AppText {
                        id: tex2
                          x:870; y:350
                          visible:!tex2.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te2
                                 x:870; y:350
                                  visible:!te2.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec2
                                       x: 870; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img2
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/غزال.JPG"   }
                                Drag.active: dragArea2.drag.active
                        MouseArea {
                            id: dragArea2
                            anchors.fill: parent
                           drag.target: parent
                           }
                        }

                          /*third*/


                          Rectangle { anchors.fill: dropArea3
                            border.color: 'black' }

                          DropArea {
                            id: dropArea3
                            x: 1300; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec3) {
                                     tex3.visible=!tex3.visible }
                              else {te3.visible=!te3.visible}
                              }
                         }

                          AppText {
                        id: tex3
                          x:1370; y:350
                          visible:!tex3.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te3
                                 x:1370; y:350
                                  visible:!te3.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec3
                                       x: 1370; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img3
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/فراشة.PNG"   }
                                Drag.active: dragArea3.drag.active
                        MouseArea {
                            id: dragArea3
                            anchors.fill: parent
                           drag.target: parent
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
                 onClicked: page.navigationStack.push(test2_7)
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
                 onClicked: page.navigationStack.push(test2_5)
                }

               AppButton {
                   anchors.bottom: parent.bottom
                   anchors.left: parent.left
                   text: "الاختبار السابق"
                   onClicked: {
                       page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                   }
               }

               }
              }

              /*************************************************** 7 completed()******************************/

              Component{
                id:test2_7
                 Page{

              title: "ضع الصور في مكانها الصحيح"
              AppText {
                    x:370; y:10
                    text:"مدرسة" }

                    AppText {
                    x:870; y:10
                    text:"كتاب" }

                    AppText {
                    x:1370; y:10
                    text:"ليمون" }

                    Rectangle {
                        id :re
                        anchors.fill: dropArea
                      border.color: 'black' }

                    DropArea {
                      id: dropArea
                      x: 300; y: 100
                       width: 250; height: 250

                      onContainsDragChanged: {
                        if (rec1) {
                               tex1.visible=!tex1.visible }
                       else { te1.visible=!te1.visible }
                       }

                    }

                    AppText {
                    id: tex1
                    x:370; y:350
                    visible:!tex1.visible
                    text:"صحيح" }

                     AppText {
                            id: te1
                           x:370; y:350
                            visible:!te1.visible
                           text:"حطأ"  }
                     Rectangle {
                                   id:rec1
                                  x: 370; y: 500
                                  width: 200;  height: 200
                                  z: 1
                      Image {
                                    id:img1
                                     anchors.centerIn: parent
                                      width: 200;  height: 200
                                     source: "../assets/img/مدرسة.JPG"   }
                          Drag.active: dragArea.drag.active
                   MouseArea {
                        id: dragArea
                       anchors.fill: parent
                      drag.target: parent
                     }
                   }




              /* second div */
                          Rectangle { anchors.fill: dropArea2
                            border.color: 'black' }

                          DropArea {
                            id: dropArea2
                            x: 800; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec2) {
                                     tex2.visible=!tex2.visible }
                               else {te2.visible=!te2.visible}
                                }
                         }

                          AppText {
                        id: tex2
                          x:870; y:350
                          visible:!tex2.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te2
                                 x:870; y:350
                                  visible:!te2.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec2
                                       x: 870; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img2
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/كتاب.JPG"   }
                                Drag.active: dragArea2.drag.active
                        MouseArea {
                            id: dragArea2
                            anchors.fill: parent
                           drag.target: parent
                           }
                        }

                          /*third*/


                          Rectangle { anchors.fill: dropArea3
                            border.color: 'black' }

                          DropArea {
                            id: dropArea3
                            x: 1300; y: 100
                            width: 250; height: 250
                            onContainsDragChanged: {
                              if (rec3) {
                                     tex3.visible=!tex3.visible }
                              else {te3.visible=!te3.visible}
                              }
                         }

                          AppText {
                        id: tex3
                          x:1370; y:350
                          visible:!tex3.visible
                          text:"صحيح"
                           }
                           AppText {
                                 id: te3
                                 x:1370; y:350
                                  visible:!te3.visible
                                 text:"حطأ"  }
                          Rectangle {
                                       id:rec3
                                       x: 1370; y: 500
                                        width: 200;  height: 200
                                       z: 1
                            Image {
                                         id:img3
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/ليمون.JPG"   }
                                Drag.active: dragArea3.drag.active
                        MouseArea {
                            id: dragArea3
                            anchors.fill: parent
                           drag.target: parent
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
                 onClicked: page.navigationStack.push(test2_8)
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
                 onClicked: page.navigationStack.push(test2_6)
                }

               AppButton {
                   anchors.bottom: parent.bottom
                   anchors.left: parent.left
                   text: "الاختبار السابق"
                   onClicked: {
                       page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                   }
               }

               }
              }
              /******************************************************8 Component **************************/


               Component{
                 id:test2_8
                  Page{

               title: "ضع الصور في مكانها الصحيح"
               AppText {
                     x:370; y:10
                     text:"هدهد" }

                     AppText {
                     x:870; y:10
                     text:"ولد" }

                     AppText {
                     x:1370; y:10
                     text:"يد" }

                          Rectangle {
                              id :re
                              anchors.fill: dropArea
                            border.color: 'black' }

                          DropArea {
                            id: dropArea
                            x: 300; y: 100
                             width: 250; height: 250

                            onContainsDragChanged: {
                              if (rec1) {
                                     tex1.visible=!tex1.visible }
                             else { te1.visible=!te1.visible }
                             }

                          }

                          AppText {
                          id: tex1
                          x:370; y:350
                          visible:!tex1.visible
                          text:"صحيح" }

                           AppText {
                                  id: te1
                                 x:370; y:350
                                  visible:!te1.visible
                                 text:"حطأ"  }
                           Rectangle {
                                         id:rec1
                                        x: 370; y: 500
                                        width: 200;  height: 200
                                        z: 1
                            Image {
                                          id:img1
                                           anchors.centerIn: parent
                                            width: 200;  height: 200
                                           source: "../assets/img/يد.PNG"   }
                                Drag.active: dragArea.drag.active
                         MouseArea {
                              id: dragArea
                             anchors.fill: parent
                            drag.target: parent
                           }
                         }




               /* second div */
                           Rectangle { anchors.fill: dropArea2
                             border.color: 'black' }

                           DropArea {
                             id: dropArea2
                             x: 800; y: 100
                             width: 250; height: 250
                             onContainsDragChanged: {
                               if (rec2) {
                                      tex2.visible=!tex2.visible }
                                else {te2.visible=!te2.visible}
                                }
                          }

                           AppText {
                         id: tex2
                           x:870; y:350
                           visible:!tex2.visible
                           text:"صحيح"
                            }
                            AppText {
                                  id: te2
                                 x:870; y:350
                                   visible:!te2.visible
                                  text:"حطأ"  }
                           Rectangle {
                                        id:rec2
                                        x: 870; y: 500
                                         width: 200;  height: 200
                                        z: 1
                             Image {
                                          id:img2
                                            anchors.centerIn: parent
                                             width: 200;  height: 200
                                            source: "../assets/img/ولد.JPG"   }
                                 Drag.active: dragArea2.drag.active
                         MouseArea {
                             id: dragArea2
                             anchors.fill: parent
                            drag.target: parent
                            }
                         }

                           /*third*/


                           Rectangle { anchors.fill: dropArea3
                             border.color: 'black' }

                           DropArea {
                             id: dropArea3
                             x: 1300; y: 100
                             width: 250; height: 250
                             onContainsDragChanged: {
                               if (rec3) {
                                      tex3.visible=!tex3.visible }
                               else {te3.visible=!te3.visible}
                               }
                          }

                           AppText {
                         id: tex3
                           x:1370; y:350
                           visible:!tex3.visible
                           text:"صحيح"
                            }
                            AppText {
                                  id: te3
                                  x:1370; y:350
                                   visible:!te3.visible
                                  text:"حطأ"  }
                           Rectangle {
                                        id:rec3
                                        x: 1370; y: 500
                                         width: 200;  height: 200
                                        z: 1
                             Image {
                                          id:img3
                                            anchors.centerIn: parent
                                             width: 200;  height: 200
                                            source: "../assets/img/هدهد.PNG"   }
                                 Drag.active: dragArea3.drag.active
                         MouseArea {
                             id: dragArea3
                             anchors.fill: parent
                            drag.target: parent
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
                  onClicked: page.navigationStack.push(test2_7)
                 }

                AppButton {
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    text: "الاختبار السابق"
                    onClicked: {
                        page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
                    }
                }

                }
               }




AppButton {
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    text: "الاختبار السابق"
    onClicked: {
        page.navigationStack.push(Qt.resolvedUrl("test1.qml"))
    }
}



    }
}
