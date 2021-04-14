import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*------------------------- WIDGET COMPLETO ------------------------- */

class Slideshow extends StatelessWidget {
  final List<Widget> slides;
  final bool puntosArriaba;
  final Color colorPrimario;
  final Color colorSecundario;
  final double bulletPrimario;
  final double bulletSecundario;

  Slideshow(
      {@required this.slides,
      this.puntosArriaba = false,
      this.colorPrimario = Colors.blue,
      this.colorSecundario = Colors.grey,
      this.bulletPrimario = 12,
      this.bulletSecundario = 12});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _SlideshowModel(),
      child: SafeArea(
        child: Center(child: Builder(
          builder: (BuildContext context) {
            Provider.of<_SlideshowModel>(context)._colorPrimario =
                this.colorPrimario;
            Provider.of<_SlideshowModel>(context)._colorSecundario =
                this.colorSecundario;
            Provider.of<_SlideshowModel>(context)._bulletPrimario =
                this.bulletPrimario;
            Provider.of<_SlideshowModel>(context)._bulletSecundario =
                this.bulletSecundario;

            return _CrearEstructuraSlideshow(
                puntosArriaba: puntosArriaba, slides: slides);
          },
        )),
      ),
    );
  }
}

class _CrearEstructuraSlideshow extends StatelessWidget {
  const _CrearEstructuraSlideshow({
    Key key,
    @required this.puntosArriaba,
    @required this.slides,
  }) : super(key: key);

  final bool puntosArriaba;
  final List<Widget> slides;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (this.puntosArriaba) _Dots(this.slides.length),
        Expanded(child: _Slides(this.slides)),
        if (!this.puntosArriaba) _Dots(this.slides.length),
      ],
    );
  }
}

/* ---------------------------------SLIDES----------------------------------- */
class _Slides extends StatefulWidget {
  final List<Widget> slides;
  // ignore: invalid_required_positional_param
  _Slides(this.slides);

  @override
  __SlidesState createState() => __SlidesState();
}

class __SlidesState extends State<_Slides> {
  final pageViewController = new PageController();

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      Provider.of<_SlideshowModel>(context, listen: false).currentPage =
          pageViewController.page;
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        controller: pageViewController,
        children: widget.slides.map((slide) => _Slide(slide)).toList(),
      ),
    );
  }
}

/* --------------------- SLIDE --------------------- */
class _Slide extends StatelessWidget {
  final Widget slide;

  _Slide(this.slide);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30.0),
      child: slide,
    );
  }
}

/* --------------------- DOTS --------------------- */

class _Dots extends StatelessWidget {
  final int numberDots;

  _Dots(this.numberDots);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(numberDots, (index) => _Dot(index)),
      ),
    );
  }
}

/* --------------------- DOT --------------------- */

class _Dot extends StatelessWidget {
  final int index;

  _Dot(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    final ssModel = Provider.of<_SlideshowModel>(context);
    return (ssModel._currentPage >= index - 0.5 &&
            ssModel._currentPage < index + 0.5)
        ? _Bullet(
            ssModel: ssModel,
            index: index,
            size: ssModel._bulletPrimario,
          )
        : _Bullet(
            ssModel: ssModel, index: index, size: ssModel._bulletSecundario);
  }
}

class _Bullet extends StatelessWidget {
  const _Bullet(
      {Key key,
      @required this.ssModel,
      @required this.index,
      @required this.size})
      : super(key: key);

  final _SlideshowModel ssModel;
  final int index;
  final double size;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: size,
        height: size,
        duration: Duration(milliseconds: 100),
        decoration: (ssModel._currentPage >= index - 0.5 &&
                ssModel._currentPage < index + 0.5)
            ? BoxDecoration(
                color: ssModel._colorPrimario, shape: BoxShape.circle)
            : BoxDecoration(
                color: ssModel.colorSecundario, shape: BoxShape.circle));
  }
}

class _SlideshowModel with ChangeNotifier {
  double _currentPage = 0;
  Color _colorPrimario = Colors.blue;
  Color _colorSecundario = Colors.grey;
  double _bulletPrimario = 12;
  double _bulletSecundario = 12;

  double get bulletPrimario => this._bulletPrimario;

  double get bulletSecundario => this._bulletSecundario;

  double get currentPage => this._currentPage;

  Color get colorPrimairo => this._colorPrimario;

  Color get colorSecundario => this._colorSecundario;

  set colorPrimario(Color color) {
    this._colorPrimario = color;
  }

  set colorSecundario(Color color) {
    this._colorSecundario = color;
  }

  set currentPage(double currentPage) {
    this._currentPage = currentPage;
    notifyListeners();
  }

  set bulletPrimario(double bulletSize) {
    this._bulletPrimario = bulletSize;
  }

  set bulletSecundario(double bulletSize) {
    this._bulletSecundario = bulletSize;
  }
}
