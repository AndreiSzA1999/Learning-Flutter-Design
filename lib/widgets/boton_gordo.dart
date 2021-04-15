import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final Color color1;
  final Color color2;
  @required
  final Function onPress;

  BotonGordo(
      {@required this.titulo,
      @required this.icono,
      this.color1 = Colors.grey,
      this.color2 = Colors.blueGrey,
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: Duration(milliseconds: 500),
      child: GestureDetector(
        onTap: onPress,
        child: Stack(children: [
          _BotonGordoBackground(
              icono: this.icono, color1: this.color1, color2: this.color2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 140,
                width: 40,
              ),
              FaIcon(
                this.icono,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  this.titulo,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
              ),
              SizedBox(
                width: 40,
              )
            ],
          )
        ]),
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  final IconData icono;
  final Color color1;
  final Color color2;

  const _BotonGordoBackground({this.icono, this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon(
                this.icono,
                size: 150,
                color: Colors.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(4, 6),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [this.color1, this.color2])),
    );
  }
}
