import 'package:flutter/material.dart';

import 'package:flutter_my_widget/views/screens/home_page.dart';
import 'package:flutter_my_widget/views/widgets/animated_image.dart';
import 'package:flutter_my_widget/views/widgets/text_widget.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    List<String> onboardingTitle = [
      'İnsan, kıyıyı gözden kaybetme cesareti olmadan yeni denizler keşfedemez.',
      'Bu hayatta her şey zor olsa da hiçbir zaman imkansız değildir.',
      'Hiç kimse geriye gidip yeni bir başlangıç yapamaz; ama bugün yeni bir son yapıp yeniden başlayabilir.'
    ];

    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: '',
            bodyWidget: Center(
              child: TextWidegt(
                  titleName: onboardingTitle[0],
                  fontSize: 25,
                  fontName: 'Anda',
                  textColor: Colors.black),
            ),
            image: const Center(child: AnimatedImage()),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Center(
              child: TextWidegt(
                  titleName: onboardingTitle[1],
                  fontSize: 25,
                  fontName: 'Anda',
                  textColor: Colors.black),
            ),
            image: const Center(child: AnimatedImage()),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Center(
              child: TextWidegt(
                  titleName: onboardingTitle[2],
                  fontSize: 25,
                  fontName: 'Anda',
                  textColor: Colors.black),
            ),
            image: const Center(child: AnimatedImage()),
          ),
        ],
        done: const Icon(
          Icons.arrow_forward,
          size: 30,
          color: Colors.black,
        ),
        onDone: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        showDoneButton: true,
        showNextButton: false,
        showSkipButton: false,
        globalBackgroundColor: Colors.green.shade200,
        skipColor: Colors.black,
        nextColor: Colors.black,
      ),
    );
  }
}
