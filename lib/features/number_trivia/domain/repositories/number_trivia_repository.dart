import 'package:dartz/dartz.dart';
import 'package:tutorial_tdd_youtube_course/core/error/failure.dart';
import 'package:tutorial_tdd_youtube_course/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository{
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}