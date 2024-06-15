import 'package:briefcase/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

import '../widgets/name_widget.dart';

class MepetPage extends StatefulWidget {
  const MepetPage({super.key});

  @override
  State<MepetPage> createState() => _MepetPageState();
}

class _MepetPageState extends State<MepetPage> {
  final textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        tween: ColorTween(
          begin: Theme.of(context).scaffoldBackgroundColor,
          end: Colors.white,
        ),
        builder: (BuildContext context, dynamic value, Widget? child) {
          return Container(
            color: value,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Constants.paddingH, vertical: 30),
                    child: Row(
                      children: [
                        NameWidget(
                          color: textColor,
                        ),
                        const Spacer(),
                        BackButton(color: textColor),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/mepet_1.png',
                        ),
                      ),
                    ),
                    height: 300,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Constants.paddingH),
                        child: StrokeText(
                          text: 'MEPET',
                          textStyle: GoogleFonts.kanit(
                            color: Colors.transparent,
                            fontSize: 120,
                            fontWeight: FontWeight.w900,
                            height: 1,
                          ),
                          strokeColor: Colors.white,
                          strokeWidth: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(110),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 360,
                          child: Column(
                            children: [
                              Text(
                                'Descarga MePet y encuentra todo lo que tu mascota necesita en un solo lugar. Con MePet, podrás:',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const Gap(20),
                              Text(
                                'Comprar alimentos, juguetes, medicinas y más. Explorar nuestra sección de adopción para encontrar a tu nuevo mejor amigo.',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        const Gap(30),
                        SizedBox(
                          width: 360,
                          child: Column(
                            children: [
                              Text(
                                'Poner en adopción a mascotas que necesitan un hogar. MePet facilita el proceso de adopción y ayuda a muchos animalitos a encontrar un hogar amoroso. ¡Descarga nuestra app y compártela con tus amigos para hacer la diferencia!',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const Gap(20),
                              Text(
                                'Ayuda a más animales a encontrar un hogar. ¡Con MePet, todos ganan! 🐾💖',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xFFB9C4FF),
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      child: Row(
                        children: [
                          Image.asset(
                            height: 500,
                            'assets/mepet_2.png',
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 500,
                            'assets/mepet_3.png',
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 500,
                            'assets/mepet_4.png',
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 500,
                            'assets/mepet_5.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(200),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
