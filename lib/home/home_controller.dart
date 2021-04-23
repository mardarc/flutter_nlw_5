import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Marlon Dev",
      photoUrl:
          "https://assets.gitlab-static.net/uploads/-/system/user/avatar/7924633/avatar.png?width=160",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
          title: "Gerenciamento de Estado",
          questionAnswered: 1,
          questions: [
            QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ],
            ),
            QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ],
            )
          ],
          imagem: AppImages.data,
          level: Level.facil),
      QuizModel(
          title: "Construindo Interfaces",
          questions: [
            QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ],
            ),
            QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ],
            ),
            QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ],
            ),
            QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ],
            ),
          ],
          imagem: AppImages.laptop,
          level: Level.facil),
    ];
    state = HomeState.success;
  }
}
