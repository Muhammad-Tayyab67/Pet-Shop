import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pet_shop/constants/AppColors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.fill,
            opacity: 1.7,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 200,
                    height: 200,
                  )),
              Column(
                children: [
                  const Text(
                    'Happiness is closer than you think',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontFamily: 'SF',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 330,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: const Text('Let\'s get started',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontFamily: 'SF',
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
