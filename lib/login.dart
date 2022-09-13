import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreenChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
       // mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(),
          ClipPath(
            clipper: TopClipper(),

            child: Container(
              height: 300,
              padding: EdgeInsets.only(left: 40, top: 50, right: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                  colors: [
                    Color.fromRGBO(248, 152, 94, 1),
                    Color.fromRGBO(244, 120, 96, 1),
                    Color.fromRGBO(240, 103, 94, 1),
                  ],
                ),
              ),
            ),
          ),
          Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
                    Row(
                      children: [
                        Expanded(
                        child: Container(
                          width: 250,
                          height: 140,
                         
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100.0),
                              bottomRight: Radius.circular(100.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  label: Text('User Name'),
                                  icon: Icon(Icons.person),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  label: Text('Password'),
                                  icon: Icon(Icons.person),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ]
                    ),
                    Positioned(
                      bottom: 40,
                      right: -25,
                      child: Container(
                        width: 50,
                        child: CircleAvatar(
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            backgroundColor: Color.fromRGBO(29, 209, 183, 1),
                            radius: 35.0,
                          ),
                      ),
                    ),




            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forget?',
              style: TextStyle(fontSize: 20.0, color: Colors.grey),
            ),
          ),
          Align(
             alignment: Alignment.centerLeft,
            child: Text(
                'Register',
                style: TextStyle(fontSize: 20.0, color: Colors.deepOrange),
              ),
          ),

          Spacer(),
          ClipPath(
            clipper: bottomClipper(),
            child: Container(
              height: 255,
              padding: EdgeInsets.only(left: 40, top: 50, right: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(18,228,242, 1),
                    Color.fromRGBO(58,194,254, 1),
                    Color.fromRGBO(70,182,255, 1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);

    var startPoint1 = Offset(size.width / 8, size.height - 35);
    var endPoint1 = Offset(size.width / 7, size.height / 1.5);
    path.quadraticBezierTo(
        startPoint1.dx, startPoint1.dy, endPoint1.dx, endPoint1.dy);

    var startPoint2 = Offset(size.width / 5, size.height / 5);
    var endPoint2 = Offset(size.width / 1.5, size.height / 5);
    path.quadraticBezierTo(
        startPoint2.dx, startPoint2.dy, endPoint2.dx, endPoint2.dy);

    var startPoint3 = Offset(size.width - (size.width / 10), size.height / 6);
    var endPoint3 = Offset(size.width, 0.0);
    path.quadraticBezierTo(
        startPoint3.dx, startPoint3.dy, endPoint3.dx, endPoint3.dy);

    path.lineTo(size.width, 0.0);
    //  path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class bottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height-60);


    var startPoint2 = Offset(size.width -(size.width/6), size.height);
    var endPoint2 = Offset(size.width , 0.0);
    path.quadraticBezierTo(
        startPoint2.dx, startPoint2.dy, endPoint2.dx, endPoint2.dy);


    path.lineTo(size.width, 0.0);
    //  path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
