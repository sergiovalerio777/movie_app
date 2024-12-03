import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semana9/pages/alert_page.dart';
import 'package:semana9/pages/alert_page2.dart';
import 'package:semana9/pages/avatar_page.dart';
import 'package:semana9/pages/input_page.dart';

class DrawerYStackPage extends StatefulWidget {
  @override
  State<DrawerYStackPage> createState() => _DrawerYStackPageState();
}

class _DrawerYStackPageState extends State<DrawerYStackPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xfffbf5ff),
        drawer: Drawer(
          elevation: 20,
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.pexels.com/photos/1606591/pexels-photo-1606591.jpeg?auto=compress"
                    ),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/5721056/pexels-photo-5721056.jpeg"
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Juan Lopez Perez",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "Colaborador",
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AvatarPage())
                  );
                },
                leading: Icon(Icons.person),
                title: Text("Avatar Page"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertPage())
                  );
                },
                leading: Icon(Icons.warning),
                title: Text("Alert 1"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertPage2())
                  );
                },
                leading: Icon(Icons.warning),
                title: Text("Alert 2"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputPage())
                  );
                },
                leading: Icon(Icons.edit),
                title: Text("Inputs"),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            IconButton(
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Color(0xff944db7),
                size: 30.0,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -150,
                  child: MyCircleWidget(
                    colores: [
                      Color(0xffD74287),
                      Color(0xffE99189),
                    ],
                    radius: 400,
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 30,
                  child: MyCircleWidget(
                    radius: 50,
                    colores: [
                      Color(0xff970ec),
                      Color(0xff0c7544),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -150,
                  left: -100,
                  child: MyCircleWidget(
                    radius: 300,
                    colores: [
                      Color(0xff9730ec),
                      Color(0xff0c7544),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 180.0,
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                          color: Color(0xff362274),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    TextField(
                      style: TextStyle(color: Color(0xff945fc5)),
                      cursorColor: Color(0xff7766ad),
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff7c6cb0),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xff72629b),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9730ec),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(color: Color(0xff945fc5)),
                      cursorColor: Color(0xff7766ad),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff7c6cb0),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff72629b),
                        ),
                        suffixIcon: IconButton(
                          icon: isInvisible
                              ? Icon(Icons.visibility_off, color: Color(0xff72629b))
                              : Icon(Icons.visibility, color: Color(0xff72629b)),
                          onPressed: () {
                            setState(() {
                              isInvisible = !isInvisible;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9730ec),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  final double radius;
  final List<Color> colores;

  MyCircleWidget({required this.radius, required this.colores});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colores,
        ),
        boxShadow: [
          BoxShadow(
            color: colores[0].withOpacity(0.7),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
