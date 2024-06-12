import 'package:briefcase/constants/constants.dart';
import 'package:briefcase/lib/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                                'onX Maps is leading the trail in private and public land mapping data.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Gap(20),
                              Text(
                                'The web and mobile apps can be used for hunting, hiking, fishing, backcountry, land boundaries, watersports, camping, and more.',
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
                                'The website presents an equal balance between supportive imagery, video, features, and information.',
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
                                'Video backgrounds, carousels, and informative overlays were developed to display the many uses of the onX app.',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Constants.paddingH),
                    child: Row(
                      children: [
                        Image.asset(
                          height: 500,
                          'assets/pubs_1.png',
                        ),
                        const Gap(50),
                        Image.asset(
                          height: 500,
                          'assets/pubs_2.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
