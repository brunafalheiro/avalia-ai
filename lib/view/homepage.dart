import 'package:avalia_ai/shared/styles/colors.dart';
import 'package:avalia_ai/shared/styles/shadows.dart';
import 'package:avalia_ai/shared/styles/text_styles.dart';
import 'package:avalia_ai/shared/widgets/button.dart';
import 'package:avalia_ai/shared/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final test = [
      'aaaa',
      'bbbb',
      'cccc',
      'dddd',
      'eeee',
      'ffff',
      'gggg',
      'hhhh',
      'iiii',
      'jjjj',
      'kkkk',
      'llll',
      'mmmm',
      'nnnn',
      'oooo',
      'pppp',
      'qqqq',
      'rrrr',
      'ssss',
      'tttt',
      'uuuu',
      'vvvv',
      'wwww',
      'xxxx',
      'yyyy',
      'zzzz'
    ];
    return Scaffold(
      backgroundColor: AVAIColors.white50,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: double.infinity,
                          color: const Color(0xff0D0A2B),
                          child: Image.asset(
                            'assets/images/programmer.png',
                            height: 280,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: AVAIMenuButton(
                            onPressed: () => {},
                          ),
                        ),
                        Positioned(
                          bottom: -36,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 288, maxWidth: 420),
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 24),
                              decoration: BoxDecoration(
                                color: AVAIColors.white100,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [AVAIShadows.blurShadow],
                              ),
                              child: Text(
                                'Ciência da Computação',
                                textAlign: TextAlign.center,
                                style:
                                    AVAITextStyle(color: AVAIColors.royalBlue)
                                        .title,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 640,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 72),
                          Container(
                            height: 40,
                            color: Colors.grey,
                          ),
                          const SizedBox(height: 12),
                          for (var test in test)
                            Container(
                              alignment: Alignment.center,
                              constraints: const BoxConstraints(minHeight: 68),
                              margin: const EdgeInsets.only(top: 12),
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 16),
                              decoration: BoxDecoration(
                                color: AVAIColors.white100,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [AVAIShadows.lightShadow],
                              ),
                              child: Text(
                                test,
                                textAlign: TextAlign.center,
                                style: AVAITextStyle().boldContent,
                              ),
                            ),
                          const SizedBox(height: 72),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
