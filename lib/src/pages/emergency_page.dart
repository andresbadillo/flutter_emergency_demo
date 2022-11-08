import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:emergendy_demo/src/widgets/boton_gordo.dart';
import 'package:emergendy_demo/src/widgets/header.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
      ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.personBiking, 'Awards',
          const Color(0xff317183), const Color(0xff46997D)),
      ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.personBiking, 'Awards',
          const Color(0xff317183), const Color(0xff46997D)),
      ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.personBiking, 'Awards',
          const Color(0xff317183), const Color(0xff46997D)),
    ];

    List<Widget> itemMap = items
        .map(
          (item) => FadeInLeft(
            duration: const Duration(milliseconds: 300),
            child: BotonGordo(
              icon: item.icon,
              texto: item.texto,
              color1: item.color1,
              color2: item.color2,
              onPress: () {
                print('Click!!!');
              },
            ),
          ),
        )
        .toList();

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 270,
              ),
              ...itemMap,
            ],
          ),
          _Encabezado(),
        ],
      ),
    );
  }
}

class _Encabezado extends StatelessWidget {
  const _Encabezado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const IconHeader(
          icon: FontAwesomeIcons.plus,
          titulo: 'Asistencia Médica',
          subtitulo: 'Haz solicitado',
          color1: Color(0xff536CF6),
          color2: Color(0xff66A9F2),
        ),
        Positioned(
          right: 0,
          top: 45,
          child: RawMaterialButton(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15),
            child: const FaIcon(
              FontAwesomeIcons.ellipsisVertical,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class BotonGordoTemp extends StatelessWidget {
  const BotonGordoTemp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.carBurst,
      texto: 'Motor Accident',
      color1: const Color(0xff6989f5),
      color2: const Color(0xff906ef5),
      onPress: () {
        print('Click!!');
      },
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Asistencia Médica',
      subtitulo: 'Haz solicitado',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
    );
  }
}
