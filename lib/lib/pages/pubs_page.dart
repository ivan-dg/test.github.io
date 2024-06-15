import 'package:briefcase/constants/constants.dart';
import 'package:briefcase/lib/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

class PubsPage extends StatefulWidget {
  const PubsPage({super.key});

  @override
  State<PubsPage> createState() => _PubsPageState();
}

class _PubsPageState extends State<PubsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        tween: ColorTween(
            begin: Theme.of(context).scaffoldBackgroundColor,
            end: Colors.black),
        builder: (BuildContext context, dynamic value, Widget? child) {
          return Container(
            color: value,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Constants.paddingH, vertical: 30),
                    child: Row(
                      children: [
                        NameWidget(),
                        Spacer(),
                        BackButton(color: Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/bar.webp',
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
                          text: 'PUBS',
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
                  const Padding(
                    padding: EdgeInsets.all(110),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 360,
                          child: Column(
                            children: [
                              Text(
                                '¡Descarga Pubs y descubre los mejores lugares de tu ciudad! Con Pubs podrás:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Gap(20),
                              Text(
                                'Explorar los mejores bares y pubs. Ver menús detallados. Encontrar eventos y promociones exclusivas.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Gap(30),
                        SizedBox(
                          width: 360,
                          child: Column(
                            children: [
                              Text(
                                'Pedir tus canciones favoritas. Votar por las canciones que más te gustan (¡las más votadas sonarán en el pub!).',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Gap(20),
                              Text(
                                'Conocer nuevas personas en el lugar donde estés.',
                                style: TextStyle(
                                  color: Colors.white,
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
                    color: Theme.of(context).scaffoldBackgroundColor,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      child: Row(
                        children: [
                          Image.asset(
                            height: 500,
                            'assets/pubs_1.png',
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 500,
                            'assets/pubs_2.png',
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 500,
                            'assets/pubs_3.png',
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 500,
                            'assets/pubs_4.png',
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
