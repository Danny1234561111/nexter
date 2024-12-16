import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")
    property int defMargin: 10
    StackView {
        id: stack_view
        width: parent.width
        height: parent.height
        initialItem: page1
    }
    My_Page {
        id: page1
        backgroundColor: "red"
        buttonText: "GO"
        onButtonClicked: {
            // stack_view.push(page2) // Переход на страницу 2
            var arr=[]

            console.log(stack_view.depth)
            for(let i=0; i<stack_view.depth;i++){
                let Item = stack_view.currentItem // Получаем текущий элемент
                        if (i==stack_view.depth-1) {
                            arr.push(Item) // Используем Item
                        }
                            }
            arr.push(page2)
            stack_view.replace(arr)
        }
        button3.onClicked: {
            stack_view.pop() // Возврат на предыдущую страницу
        }
    }
    My_Page {
        id: page2
        visible: false
        backgroundColor: "yellow"
        buttonText: "GO"

        onButtonClicked: {
            var arr=[]

            console.log(stack_view.depth)
            for(let i=0; i<stack_view.depth;i++){
                let Item = stack_view.currentItem // Получаем текущий элемент
                        if (i==stack_view.depth-1) {
                            arr.push(Item) // Используем Item
                        }
                    }
            arr.push(page3)
            stack_view.replace(arr)
        }
        button3.onClicked: {
            stack_view.pop() // Возврат на предыдущую страницу
        }
    }
    My_Page {
        id: page3
        visible: false
        backgroundColor: "green"
        buttonText: "GO"
        onButtonClicked: {
            var arr=[]

            console.log(stack_view.depth)
            for(let i=0; i<stack_view.depth;i++){
                let Item = stack_view.currentItem // Получаем текущий элемент
                                if (i==stack_view.depth-1) {
                                    arr.push(Item) // Используем Item
                                }
                            }
            arr.push(page1)
            stack_view.replace(arr)
        }
        button3.onClicked: {
            stack_view.pop() // Возврат на предыдущую страницу        }
    }
}
}
