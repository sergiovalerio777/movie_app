import 'package:flutter/material.dart';

class CapturaValoresdelInputPage extends StatefulWidget {
  @override
  State<CapturaValoresdelInputPage> createState() => _CapturaValoresdelInputPageState();
}

class _CapturaValoresdelInputPageState extends State<CapturaValoresdelInputPage> {
  String name = "";
  TextEditingController _nameController = TextEditingController(text: "Por defecto");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capturando Inputs"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Ingrese tu nombre"),
              ),
              onChanged: (String value) {
                name = value;
                print(name);
              },
              onTap: () {
                print("SERIO ANDRE VALERIO TAYPE !!!");
              },
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                label: Text("Ingrese tu nombre"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(_nameController.text);
                // _nameController.text = "Juan";
                // setNameData();
                setState(() {});
              },
              child: Text("Mostrar Valor!"),
            ),
            SizedBox(height: 30.0),
            TextField(
              keyboardType: TextInputType.number,
              // keyboardType: TextInputType.emailAddress,
              // keyboardType: TextInputType.url,
              // keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                label: Text("Teclados"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getNameData() {
    print(_nameController.text);
  }
}
