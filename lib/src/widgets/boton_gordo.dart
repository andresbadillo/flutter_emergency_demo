import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;
  final Function() onPress;

  const BotonGordo({
    Key? key,
    this.icon = FontAwesomeIcons.circle,
    required this.texto,
    this.color1 = Colors.blue,
    this.color2 = Colors.blueGrey,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPress,
      child: Stack(
        children: [
          _BotonGordoBackground(
            icon: icon,
            color1: color1,
            color2: color2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
                width: 40,
              ),
              FaIcon(
                icon,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  texto,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
              ),
              const SizedBox(width: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  final IconData icon;
  final Color color1;
  final Color color2;

  const _BotonGordoBackground({
    Key? key,
    required this.icon,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 6),
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: <Color>[
          color1,
          color2,
        ]),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon(
                icon,
                size: 150,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
