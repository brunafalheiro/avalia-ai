import 'package:avalia_ai/shared/widgets/back_button.dart';
import 'package:avalia_ai/shared/widgets/button.dart';
import 'package:avalia_ai/shared/widgets/dropdown.dart';
import 'package:avalia_ai/shared/widgets/text_input.dart';
import 'package:avalia_ai/shared/styles/text_styles.dart';
import 'package:avalia_ai/shared/styles/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  final bool register;
  const AuthPage({super.key, this.register = false});

  Widget buildPersonalInfoInputs(semesterOptions) {
    return Column(
      children: [
        const AVAITextInput(
          label: 'Nome completo',
          placeholder: 'José da Silva',
          allowNumbers: false,
          allowSpecialCharacters: false,
        ),
        const SizedBox(height: 20),
        AVAIDropdown(
          label: 'Período de ingresso',
          placeholder: '20xx-x',
          options: semesterOptions,
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildIdentifiersInput() {
    return const Column(
      children: [
        AVAITextInput(
          label: 'E-mail institucional',
          placeholder: 'nome@ic.ufrj.br',
          allowNumbers: true,
          allowSpaces: false,
        ),
        SizedBox(height: 20),
        AVAITextInput(
          label: 'Senha',
          placeholder: '••••••',
          isPasswordField: true,
        ),
      ],
    );
  }

  Widget buildTermsOfUse() {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (bool? newValue) {},
        ),
        const SizedBox(width: 8),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Aceito os ',
                style: AVAITextStyle().content,
              ),
              TextSpan(
                text: 'Termos de Uso',
                style: AVAITextStyle().link,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // TODO: Open terms of use
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildForgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        // TODO: go to forgot password page
        onTap: () => {},
        child: Text(
          'Esqueci a senha',
          style: AVAITextStyle().link,
        ),
      ),
    );
  }

  Widget buildAlternativeButton() {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Não tem conta? ',
            style: AVAITextStyle().content,
          ),
          TextSpan(
            text: 'Registrar',
            style: AVAITextStyle().link,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO: change to register state
              },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> semesterOptions = [
      '2024-1',
      '2023-2',
      '2023-1',
      '2022-2',
      '2022-1',
      '2021-2',
      '2021-1',
      '2020-2',
      '2020-1',
      '2019-2',
      '2019-1',
      '2018-2',
      '2018-1',
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
                          decoration: const BoxDecoration(
                            color: Color(0xff0D0A2B),
                          ),
                          child: Image.asset(
                            'assets/images/main.png',
                            height: 280,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: AVAIBackButton(
                              onPressed: () => {Navigator.pop(context)}),
                        ),
                      ],
                    ),
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 720,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 32),
                          if (register) ...[
                            buildPersonalInfoInputs(semesterOptions),
                            buildIdentifiersInput(),
                            const SizedBox(
                              height: 16,
                            ),
                            buildTermsOfUse(),
                          ] else ...[
                            buildIdentifiersInput(),
                            const SizedBox(
                              height: 16,
                            ),
                            buildForgotPassword(),
                            const SizedBox(
                              height: 40,
                            ),
                            AVAIButton(
                              label: 'Entrar',
                              onPressed: () => {},
                            ),
                          ],
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    if (register) ...[
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 720,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        margin: const EdgeInsets.only(top: 32),
                        child: AVAIButton(
                          label: 'Cadastrar',
                          onPressed: () => {},
                        ),
                      )
                    ] else ...[
                      const SizedBox(
                        height: 24,
                      ),
                      buildAlternativeButton(),
                    ],
                    const SizedBox(height: 48),
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
