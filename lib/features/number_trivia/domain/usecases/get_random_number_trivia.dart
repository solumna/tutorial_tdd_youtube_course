import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tutorial_tdd_youtube_course/core/error/failure.dart';
import 'package:tutorial_tdd_youtube_course/core/usecases/usecase.dart';
import 'package:tutorial_tdd_youtube_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tutorial_tdd_youtube_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tutorial_tdd_youtube_course/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
