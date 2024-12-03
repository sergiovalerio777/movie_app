import 'package:flutter/material.dart';
import 'package:semana9/pages/captura_valores_Input_Page.dart';
import 'package:semana9/pages/home_page.dart';
import 'package:semana9/pages/general_input_page.dart';
import 'package:semana9/pages/password_input_page.dart';

import 'package:semana9/pages/calendar_input_page.dart';
class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage SIIII"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        ItemComponentWidget(title: "General-Inputs", 
        toPage: GeneralInputsPage(),),
        ItemComponentWidget(title: "Password-Inputs",
        toPage: PasswordInputsPage(),),
        ItemComponentWidget(title: "Captura Valores del Input Page",
         toPage: CapturaValoresdelInputPage(),),
        ItemComponentWidget(title: "Calendar Input Page", 
        toPage: CalendarInputPage(),),
      ],),
    );
  }

}
