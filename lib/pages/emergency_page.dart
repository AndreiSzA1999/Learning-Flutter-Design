import 'package:flutter/material.dart';
import 'package:flutter_vscode/widgets/boton_gordo.dart';
import 'package:flutter_vscode/widgets/headers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: ListView(
            physics:
                AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            children: [
              SizedBox(
                height: 300,
              ),
              BotonGordo(
                titulo: "Motor Accident",
                color1: Color(0xff6989F5),
                color2: Color(0xff906EF5),
                icono: FontAwesomeIcons.carCrash,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Medical Emergency",
                color1: Color(0xff66A9F2),
                color2: Color(0xff536CF6),
                icono: FontAwesomeIcons.plus,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Theft / Harrasement",
                color1: Color(0xffF2D572),
                color2: Color(0xffE06AA3),
                icono: FontAwesomeIcons.theaterMasks,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Awars",
                color1: Color(0xff317183),
                color2: Color(0xff46997D),
                icono: FontAwesomeIcons.biking,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Motor Accident",
                color1: Color(0xff6989F5),
                color2: Color(0xff906EF5),
                icono: FontAwesomeIcons.carCrash,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Medical Emergency",
                color1: Color(0xff66A9F2),
                color2: Color(0xff536CF6),
                icono: FontAwesomeIcons.plus,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Theft / Harrasement",
                color1: Color(0xffF2D572),
                color2: Color(0xffE06AA3),
                icono: FontAwesomeIcons.theaterMasks,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Awars",
                color1: Color(0xff317183),
                color2: Color(0xff46997D),
                icono: FontAwesomeIcons.biking,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Motor Accident",
                color1: Color(0xff6989F5),
                color2: Color(0xff906EF5),
                icono: FontAwesomeIcons.carCrash,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Medical Emergency",
                color1: Color(0xff66A9F2),
                color2: Color(0xff536CF6),
                icono: FontAwesomeIcons.plus,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Theft / Harrasement",
                color1: Color(0xffF2D572),
                color2: Color(0xffE06AA3),
                icono: FontAwesomeIcons.theaterMasks,
                onPress: () {
                  print("Hola");
                },
              ),
              BotonGordo(
                titulo: "Awars",
                color1: Color(0xff317183),
                color2: Color(0xff46997D),
                icono: FontAwesomeIcons.biking,
                onPress: () {
                  print("Hola");
                },
              ),
            ],
          ),
        ),
        IconHeader(
            icon: FontAwesomeIcons.plus,
            titulo: "Asistencia Médica",
            subTitulo: "Haz Solicitado")
      ],
    ));
  }
}

class PageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Asistenica Médica',
      subTitulo: 'Haz solicitado',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
    );
  }
}
