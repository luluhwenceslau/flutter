import 'package:alubank/components/theme/my_theme.dart';
import 'package:alubank/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Alubank());
}

class Alubank extends StatelessWidget {
const Alubank({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Alubank',
      theme: myTheme,
      home: const Home(),
    );
  }
}
