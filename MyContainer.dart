import "package:flutter/material.dart";

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});
  @override
  Widget build(BuildContext context) {
    //Trả về Scaffold - widget cung cấp bố cục Material Déign cơ bản
    // Màn Hình
    return Scaffold(
    // Tiêu đề của ứng dụng
      appBar: AppBar(
      title: Text("App_02"),
        backgroundColor: Colors.yellow,
        // Do nang / do bong cua Appbar
        elevation: 4,
        actions: [
          IconButton(
              onPressed: (){print("b1");}
          ,icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){print("b2");}
            ,icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: (){print("b3");}
            ,icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.green),
        child: Align(
          alignment: Alignment.center,
          child: const Text("Huynh Thi Thanh Truc",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          )
        )
      ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {print("pressed");},
      child: const Icon(Icons.add_ic_call),
    ),
bottomNavigationBar: BottomNavigationBar(items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "Trang chu"),
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "Tim kiem"),
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "Ca nhan"),
]),
    );
  }
}
