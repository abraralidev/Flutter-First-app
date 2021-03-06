// 1- First page | Scaffold
// 2- Container & Text
// 3- Row & Column

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(title: "First App", home: HomePage()));
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My app"),
//       ),
//       body: Container(
//         // width: MediaQuery.of(context).size.width,
//         // height: MediaQuery.of(context).size.height,
//         color: Colors.black,
//         child: Row(
//                 // body: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//             Container(
//               padding: const EdgeInsets.all(20),
//               alignment: Alignment.center,
//               color: Colors.teal,
//               width: 100,
//               height: 100,
//               // decoration: BoxDecoration(
//               //     // shape: BoxShape.circle,
//               //     borderRadius: BorderRadius.circular(15),
//               //     boxShadow: [
//               //       BoxShadow(
//               //           color: Color.fromRGBO(189, 189, 189, 1),
//               //           blurRadius: 5,
//               //           offset: Offset(2.0, 10)),
//               //     ],
//               //     color: Colors.teal,
//               //     gradient: LinearGradient(
//               //         colors: [Colors.red, Colors.pink, Colors.blue])),
//               // child: Text("Box",
//               //     style: TextStyle(
//               //       color: Colors.white,
//               //       fontSize: 20,
//               //       fontWeight: FontWeight.bold,
//               //     )),
//             ),
//             Container(
//               padding: const EdgeInsets.all(20),
//               alignment: Alignment.center,
//               color: Colors.red,
//               width: 100,
//               height: 100,
//             ),
//             Container(
//               padding: const EdgeInsets.all(20),
//               alignment: Alignment.center,
//               color: Colors.blue,
//               width: 100,
//               height: 100,
//             ),
//           ]
//           ),
//       ),
//       );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(title: "First App", home: HomePage()));
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My app"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Align(
//           // alignment: Alignment.bottomLeft,
//           alignment: Alignment.center,
//           child: Container(
//             // width: MediaQuery.of(context).size.width,
//             width: 200,
//             height: 400,
//             // height: MediaQuery.of(context).size.height,
//             color: Colors.black,
//             child: Column(
//               children: [
//                 Column(
//                         // body: row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                     Container(
//                       padding: const EdgeInsets.all(20),
//                       alignment: Alignment.center,
//                       color: Colors.teal,
//                       width: 100,
//                       height: 100,
//                       // decoration: BoxDecoration(
//                       //     // shape: BoxShape.circle,
//                       //     borderRadius: BorderRadius.circular(15),
//                       //     boxShadow: [
//                       //       BoxShadow(
//                       //           color: Color.fromRGBO(189, 189, 189, 1),
//                       //           blurRadius: 5,
//                       //           offset: Offset(2.0, 10)),
//                       //     ],
//                       //     color: Colors.teal,
//                       //     gradient: LinearGradient(
//                       //         colors: [Colors.red, Colors.pink, Colors.blue])),
//                       // child: Text("Box",
//                       //     style: TextStyle(
//                       //       color: Colors.white,
//                       //       fontSize: 20,
//                       //       fontWeight: FontWeight.bold,
//                       //     )),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(20),
//                       alignment: Alignment.center,
//                       color: Colors.red,
//                       width: 100,
//                       height: 100,
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(20),
//                       alignment: Alignment.center,
//                       color: Colors.blue,
//                       width: 100,
//                       height: 100,
//                     ),
//                   ]
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "First App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Learning"),
      ),
      body: Container(),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     "Hi, I'm Abrar Ali",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 0, 55, 133),
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Abrar Ali"),
            accountEmail: Text("Abrarali@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personl"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("Abrarali@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
