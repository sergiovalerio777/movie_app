import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage2 extends StatelessWidget {
  const AlertPage2({super.key});

  showMyAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Titutlo del Alertdialog"),
            backgroundColor: Colors.white,
            elevation: 50,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/Eo_circle_green_checkmark.svg.png",
                  height: 90,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Flutter alert",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                  style:
                      GoogleFonts.poppins(color: Colors.black.withOpacity(0.8)),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Aceptar")),
              Text("Boton"),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cerrar")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          onPressed: () {
            showMyAlert(context);
          },
          child: Text("Boton de alerta",
          style: TextStyle(
            color:  Colors.white,)
          
          ),
          
          
        ),
      ),
    );
  }
}
