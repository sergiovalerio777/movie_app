import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.green,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "C",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.orange,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/b2/5e/8c/b25e8c337cb98da2e52f96f3b73a57b0.jpg"
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],            
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 56.0,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/b2/5e/8c/b25e8c337cb98da2e52f96f3b73a57b0.jpg",
            ),
          ),
          Text(
            "Sergio Andre",
            style: GoogleFonts.adamina(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 3.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 18.0),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.orange,
              ),
              title: Text(
                "+51 934680414",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 18.0),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.orange,
              ),
              title: Text(
                "sergioandre@gmail.com",
                style: TextStyle(
                  color: Colors.orange
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
