
import 'package:flutter/material.dart';

void main() => runApp(new KarwashProfileStless());

class KarwashProfileStless extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'KarwashAppProfile',
      home: new KarwashProfileStful(),
    );
  }
}

class KarwashProfileStful extends StatefulWidget {
  @override
  _KarwashProfileState createState() => new _KarwashProfileState();
}

class _KarwashProfileState extends State<KarwashProfileStful> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.build),
        onPressed: () {},
      ),
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('Karwash Profile'),
      ),
     body: new Stack(
       children: <Widget>[
         ClipPath(
           child: Container(
             color: Colors.black.withOpacity(0.8)
           ),
           clipper: getClipper(),
         ),
         Positioned(
           width: 350.0,
           left: 25.0,
           top: MediaQuery.of(context).size.height/5,
           child:Column(
             children: <Widget>[
               Container(
                 width: 150.0,
                 height: 150.0,
                 decoration: BoxDecoration(
                   color: Colors.red,
                   image: DecorationImage(
                     image: NetworkImage('https://i0.wp.com/img02.deviantart.net/4e35/i/2012/214/3/d/m4dman_logo_by_deadlinerz-d59j261.jpg?w=600'),
                     fit: BoxFit.cover
                   ),
                   borderRadius: BorderRadius.all(Radius.circular(75.0)
                   ),
                   boxShadow: [
                     BoxShadow(blurRadius: 7.0, color: Colors.black)
                   ]             
                 )
               ),
               SizedBox(height: 90.0),
               Text(
                 'Dman2lit',
                 style: TextStyle(
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               SizedBox(height: 15.0),
               Text(
                 'Hire',
                 style: TextStyle(
                   fontSize: 17.0,
                   fontStyle: FontStyle.italic,
                 ),
               ),
               SizedBox(height: 25.0),
               Container(
                 height: 30.0,
                 width: 95.0,
                 child: Material(
                   borderRadius: BorderRadius.circular(20.0),
                   shadowColor: Colors.redAccent,
                   color: Colors.red,
                   elevation: 7.0,
                   child: GestureDetector(
                     onTap: () {
                       child: Center(
                         child: Text(
                           'Hire Me',
                           style: TextStyle(color: Colors.blue,fontSize: 17.0),
                         ),
                       );
                     },
                   ),
                 )
               )
             ],
           )
         )
       ],
     ),
    );  
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size ) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;

  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
  