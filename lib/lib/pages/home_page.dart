import 'package:briefcase/constants/constants.dart';
import 'package:briefcase/lib/pages/pubs_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Función para abrir el enlace
  Future<void> _launchURL(String url) async {
    final Uri toLaunch = Uri.parse(url);
    if (!await launchUrl(toLaunch, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.paddingH, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const NameWidget(),
                const Gap(30),
                FadeTransition(
                  opacity: _animation,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Briefcase of Ivan Gustin',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'Software Developer',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      const Gap(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pasto, Colombia',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SelectableText(
                            'ivandgustin@gmail.com',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Gap(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => _launchURL(
                                'https://www.linkedin.com/in/ivandgu/'),
                            child: Row(
                              children: [
                                Text(
                                  '01',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 10,
                                      ),
                                ),
                                const Gap(15),
                                Text(
                                  'Linkedin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Gap(50),
                  TextOptionWidget(
                    title: 'PUBS',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const PubsPage(),
                        ),
                      );
                    },
                  ),
                  TextOptionWidget(
                    title: 'MEPET',
                    onTap: () {},
                  ),
                  TextOptionWidget(
                    title: 'CONSULTORIO',
                    subtitle: 'VIRUTAL',
                    onTap: () {},
                  ),
                  const TextOptionWidget(title: 'PUBS'),
                  const TextOptionWidget(title: 'MEPET'),
                  const TextOptionWidget(
                    title: 'CONSULTORIO',
                    subtitle: 'VIRUTAL',
                  ),
                  const TextOptionWidget(title: 'PUBS'),
                  const TextOptionWidget(title: 'MEPET'),
                  const TextOptionWidget(
                    title: 'CONSULTORIO',
                    subtitle: 'VIRUTAL',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NameWidget extends StatefulWidget {
  const NameWidget({
    super.key,
  });

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const HomePage(),
            ),
          );
        },
        child: Text(
          'IVAN \nGUSTIN \nCO.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

class TextOptionWidget extends StatefulWidget {
  const TextOptionWidget({
    super.key,
    required this.title,
    this.subtitle = '',
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final Function()? onTap;

  @override
  State<TextOptionWidget> createState() => _TextOptionWidgetState();
}

class _TextOptionWidgetState extends State<TextOptionWidget> {
  bool _isHovered = false;
  double strokeWidth = 2.0;
  double height = 1.1;
  int duration = 250;

  @override
  Widget build(BuildContext context) {
    final matrix = Matrix4.identity()
      ..setEntry(3, 2, 0.0009) // perspectiva
      ..rotateY(0.8)
      ..rotateX(-0.1);
    final screensize = MediaQuery.sizeOf(context);
    final fontsize = screensize.width * 0.075;
    return Transform(
      alignment: Alignment.center,
      transform: matrix, // rotación en el eje Y
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovered = false;
          });
        },
        child: GestureDetector(
          onTap: widget.onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  StrokeText(
                    text: '/',
                    textStyle: GoogleFonts.kanit(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 85,
                      fontWeight: FontWeight.w100,
                      height: height,
                    ),
                  ),
                  TweenAnimationBuilder(
                    duration: Duration(milliseconds: duration),
                    tween: ColorTween(
                      begin: Colors.black,
                      end: _isHovered ? Colors.transparent : Colors.black,
                    ),
                    builder:
                        (BuildContext context, dynamic color, Widget? child) {
                      return StrokeText(
                        text: widget.title,
                        textStyle: _isHovered
                            ? GoogleFonts.kanit(
                                color: color,
                                fontSize: fontsize,
                                fontWeight: FontWeight.w900,
                                height: height,
                              )
                            : GoogleFonts.kanit(
                                color: color,
                                fontSize: fontsize,
                                fontWeight: FontWeight.w900,
                                height: height,
                              ),
                        strokeColor: Colors.black,
                        strokeWidth: strokeWidth,
                        overflow: TextOverflow.ellipsis,
                      );
                    },
                  ),
                ],
              ),
              Visibility(
                visible: widget.subtitle!.isNotEmpty,
                child: TweenAnimationBuilder<Color?>(
                  duration: Duration(milliseconds: duration),
                  tween: ColorTween(
                    begin: Colors.black,
                    end: _isHovered ? Colors.transparent : Colors.black,
                  ),
                  builder:
                      (BuildContext context, dynamic color, Widget? child) {
                    return StrokeText(
                      text: widget.subtitle!,
                      textStyle: _isHovered
                          ? GoogleFonts.kanit(
                              color: color,
                              fontSize: fontsize,
                              fontWeight: FontWeight.w900,
                              height: height,
                            )
                          : GoogleFonts.kanit(
                              color: color,
                              fontSize: fontsize,
                              fontWeight: FontWeight.w900,
                              height: height,
                            ),
                      strokeColor: Colors.black,
                      strokeWidth: strokeWidth,
                      overflow: TextOverflow.ellipsis,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
