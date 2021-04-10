import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vscode/widgets/slideshow.dart';

class SLideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Column(
          children: [
            Expanded(
              child: Slideshow(
                puntosArriaba: false,
                bulletPrimario: 15,
                bulletSecundario: 10,
                colorPrimario: Colors.purple,
                colorSecundario: Colors.white,
                slides: [
                  SvgPicture.asset('assets/svgs/1.svg'),
                  SvgPicture.asset('assets/svgs/2.svg'),
                  SvgPicture.asset('assets/svgs/3.svg'),
                  SvgPicture.asset('assets/svgs/4.svg'),
                ],
              ),
            ),
            Expanded(
              child: Slideshow(
                puntosArriaba: false,
                bulletPrimario: 15,
                bulletSecundario: 10,
                colorPrimario: Colors.purple,
                colorSecundario: Colors.white,
                slides: [
                  SvgPicture.asset('assets/svgs/1.svg'),
                  SvgPicture.asset('assets/svgs/2.svg'),
                  SvgPicture.asset('assets/svgs/3.svg'),
                  SvgPicture.asset('assets/svgs/4.svg'),
                ],
              ),
            ),
          ],
        ));
  }
}
