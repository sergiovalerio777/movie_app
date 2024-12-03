import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semana9/pages/avatar_page.dart';
import 'package:semana9/pages/avatar_page2.dart';
import 'package:semana9/pages/alert_page2.dart';
import 'package:semana9/pages/alert_page.dart';
import 'package:semana9/pages/input_page.dart';
import 'package:semana9/pages/drawer_y_stack_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(
                      4,
                      4,
                    ),
                    blurRadius: 12,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://ih1.redbubble.net/image.1265185535.8327/raf,360x360,075,t,fafafa:ca443f4786.jpg",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Flutter Componentes",
              style: GoogleFonts.oregano(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 160,
              child: Divider(
                thickness: 0.5,
              ),
            ),
            ItemComponentWidget(title: "Avatar", toPage: AvatarPage()),
            ItemComponentWidget(title: "Avatar2", toPage: AvatarPage2()),
            ItemComponentWidget(title: "Alert", toPage: AlertPage()),  
            ItemComponentWidget(title: "Alert2", toPage: AlertPage2()),       
            ItemComponentWidget(title: "Inputs", toPage: InputPage()),
            ItemComponentWidget(title: "Drawer y Stack", toPage: DrawerYStackPage()),          
          ],
        ),
      )),
      backgroundColor: Colors.white70,
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  final String title;
  final Widget toPage;

  ItemComponentWidget({
    required this.title,
    required this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(4.0, 4.0),
              blurRadius: 12.0,
            )
          ]),
      child: ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => toPage));
          },
          leading: Icon(
            Icons.check_circle_outline,
            color: Color(0xff636b7c),
          ),
          title: Text(
            title,
          ),
          subtitle: Text("Ir a detalle de $title"),
          trailing: Icon(
            Icons.chevron_right,
          )),
    );
  }
}
