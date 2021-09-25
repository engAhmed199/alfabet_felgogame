import QtQuick 2.0
import Felgo 3.0


//Alpha Component

Page {

          id: subPage
          backgroundColor: "#00c9ff"
           Page {
            title: qsTr("Levels")
            backgroundColor: "#00c9ff"

            FlickablePage {
                     flickable.contentHeight: col.height
                      scrollIndicator.visible: false


            Column{
                id:col

                Row{


            //level 1
            AppButton {
                text: "المستوي 1"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page1)
                }
            }

            //level 2
            AppButton {
                text: "المستوي 2"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page2)
                }
            }

            //level 3
            AppButton {
                text: "المستوي 3"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page3)
                }
            }

                }

                Row{
            //level 4
            AppButton {
                text: "المستوي 4"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page4)
                }
            }

            //level 5
            AppButton {
                text: "المستوي 5"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page5)
                }
            }

            //level 6
            AppButton {
                text: "المستوي 6"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page6)
                }
            }
                }


                Row{
            //level 7
            AppButton {
                text: "المستوي 7"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page7)
                }
            }

            //level 8
            AppButton {
                text: "المستوي 8"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page8)
                }
            }

            //level 9
            AppButton {
                text: "المستوي 9"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page9)
                }
            }

                }

                Row{
            //level 10
            AppButton {
                text: "المستوي 10"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page10)
                }
            }

            //level 11
            AppButton {
                text: "المستوي 11"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page11)
                }
            }

            //level 12
            AppButton {
                text: "المستوي 12"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page12)
                }
            }

                }

            Row{
            //level 13
            AppButton {
                text: "المستوي 13"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page13)
                }
            }

            //level 14
            AppButton {
                text: "المستوي 14"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page14)
                }
            }

            //level 15
            AppButton {
                text: "المستوي 15"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page15)
                }
            }

            }

            Row{
            //level 16
            AppButton {
                text: "المستوي 16"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page16)
                }
            }

            //level 19
            AppButton {
                text: "المستوي 17"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page17)
                }
            }

            //level 18
            AppButton {
                text: "المستوي 18"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page18)
                }
            }

            }

            Row{
            //level 19
            AppButton {
                text: "المستوي 19"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page19)
                }
            }

            //level 20
            AppButton {
                text: "المستوي 20"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page20)
                }
            }

            //level 21
            AppButton {
                text: "المستوي 21"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page21)
                }
            }

            }


            Row{
            //level 22
            AppButton {
                text: "المستوي 22"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page22)
                }
            }

            //level 23
            AppButton {
                text: "المستوي 23"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page23)
                }
            }

            //level 24
            AppButton {
                text: "المستوي 24"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page24)
                }
            }

            }

            Row{
            //level 25
            AppButton {
                text: "المستوي 25"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page25)
                }
            }

            //level 26
            AppButton {
                text: "المستوي 26"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page26)
                }
            }

            //level 27
            AppButton {
                text: "المستوي 27"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page27)
                }
            }

            }

            Row{
            //level 28
            AppButton {
                text: "المستوي 28"
                backgroundColor: "#6d107e"
                backgroundColorPressed: "#d3cce3"
                onClicked: {
                    page.navigationStack.push(page28)
                }
            }



            }

    }//col



            }

                  }
                }

