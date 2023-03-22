import 'package:flutter/material.dart';
import 'package:shop_app_design/constants/colors.dart';
import 'package:shop_app_design/presentation/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late AnimationController _animationController2;
  late Animation<double> _animation2;
  late AnimationController _animationController3;
  late Animation<double> _animation3;
  late AnimationController _animationController4;
  late Animation<double> _animation4;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animationController3 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animationController4 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<double>(
      begin: -500,
      end: 0,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
    );

    _animation2 = Tween<double>(
      begin: 500,
      end: 0,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
    );

    _animation3 = Tween<double>(
      begin: -500,
      end: 0,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
    );

    _animation4 = Tween<double>(
      begin: 500,
      end: 0,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
    );

    _animationController.forward();
    _animationController2.forward();
    _animationController3.forward();
    _animationController4.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController2.dispose();
    _animationController3.dispose();
    _animationController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return Transform(
                        transform: Matrix4.identity()
                          ..translate(_animation.value),
                        child: Center(
                          child: Image.asset(
                            'assets/images/undraw_successful_purchase_re_mpig 1.png',
                            height: 300,
                            width: 300,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 80),
                  AnimatedBuilder(
                    animation: _animationController2,
                    builder: (context, child) => Transform(
                      transform: Matrix4.identity()
                        ..translate(_animation2.value),
                      child: const Text(
                        'All your shopping in\n one App',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  AnimatedBuilder(
                    animation: _animationController3,
                    builder: (context, child) => Transform(
                      transform: Matrix4.identity()
                        ..translate(_animation3.value),
                      child: const Text(
                        'Sell your devices the smarter, '
                        'faster way for immediate cash and a cleaner conscience. '
                        'Sell your devices the smarter, faster way for immediate '
                        'cash and a cleaner conscience.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        maxLines: 5,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
              //const SizedBox(height: 20),
              AnimatedBuilder(
                animation: _animationController4,
                builder: (context, child) => Transform(
                  transform: Matrix4.identity()..translate(_animation4.value),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.kWhiteColor,
                            backgroundColor: AppColors.kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: AppColors.kWhiteColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.kWhiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: AppColors.kPrimaryColor,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: AppColors.kWhiteColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
