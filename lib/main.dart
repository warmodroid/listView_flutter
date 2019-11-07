import 'package:flutter/material.dart';
import 'package:custom_list_flutter_app/Person.dart';

void main() => runApp(MaterialApp(
  home: MyHome(),
));


class MyHome extends StatefulWidget {
  
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

   List<Person> persons = [
     Person(name: 'Bill Will', profileImg: 'img/pic-1.png', bio: "Software Developer"),
     Person(name: 'Andy Smith', profileImg: 'img/pic-2.png', bio: "UI Designer"),
     Person(name: 'Creepy Story', profileImg: 'img/pic-3.png', bio: "Software Tester")
  ];

   Widget personDetailCard(Person) {
     return Padding(
       padding: const EdgeInsets.all(10.0),
       child: Card(
         color: Colors.grey[800],
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                     width: 50.0,
                     height: 50.0,
                     decoration: new BoxDecoration(
                         shape: BoxShape.circle,
                         image: new DecorationImage(
                             fit: BoxFit.cover,
                             image: AssetImage(Person.profileImg)
                         )
                     )),
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(Person.name,
                     style: TextStyle (
                         color: Colors.white,
                         fontSize: 18
                     ),
                   ),
                   Text(Person.bio,
                     style: TextStyle (
                         color: Colors.white,
                         fontSize: 12
                     ),
                   )
                 ],
               )
             ],
           ),
         ),
       ),
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.menu, size: 35, color: Colors.white),
                Text('Notifications',
                  style: TextStyle (
                    color: Colors.white,
                    fontSize: 25
                  ),
                ),
                Icon(Icons.notifications_none, size: 35, color: Colors.white)
              ],
            ),
            Column(
              children: persons.map((p) {
                return personDetailCard(p);
              }).toList()
            )
          ],
        ),
      ),
    );
  }
}


