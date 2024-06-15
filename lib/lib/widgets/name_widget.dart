import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class NameWidget extends StatefulWidget {
  const NameWidget({
    super.key,
    this.color = Colors.white,
  });

  final Color? color;

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
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: widget.color,
              ),
        ),
      ),
    );
  }
}
