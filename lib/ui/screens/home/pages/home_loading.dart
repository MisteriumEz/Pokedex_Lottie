import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeLoading extends StatefulWidget {
  const HomeLoading({super.key});

  @override
  State<HomeLoading> createState() => _HomeLoadingState();
}

class _HomeLoadingState extends State<HomeLoading>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_iwmd6pyr.json',
            controller: _controller,
            width: MediaQuery.of(context).size.width / 5),
      ),
    );
  }
}
