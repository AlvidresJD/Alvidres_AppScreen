import 'package:flutter/material.dart';
import 'package:flutter_application_1/3_ActividadDrawer/Listas.dart';
import 'package:flutter_application_1/4_ActividadPantalla/pantalla1.dart';
import '1_ActividadContador/app.dart';
import '2_ActividadLayout/Actividad2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: FirstRoute()
    ); 
  }
}