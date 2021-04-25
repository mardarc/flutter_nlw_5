import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerPage extends StatefulWidget {
  final String imagem;
  final String heading;
  final String text;

  const AnswerPage({
    Key? key,
    this.heading = "",
    this.imagem = "",
    this.text = "",
  }) : super(key: key);

  AnswerPage.wrong()
      : this.imagem = AppImages.error,
        this.heading = "Errou :/",
        this.text = "Seu burrico..";

  AnswerPage.right()
      : this.imagem = AppImages.check,
        this.heading = "Acertou :D",
        this.text = "Parabéns";
  @override
  _AnswerPageState createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.imagem),
            SizedBox(
              height: 55,
            ),
            Text(widget.heading, style: AppTextStyles.heading40),
            SizedBox(
              height: 16,
            ),
            Text(
              widget.text,
              style: AppTextStyles.body,
            ),
            SizedBox(
              height: 56,
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(180, 48)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.purple),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: Text(
                  "Avançar",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
