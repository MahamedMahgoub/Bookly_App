import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailureState(failure.errMassage));
    }, (books) {
      emit(NewestBooksSuccessState(books));
    });
  }
}
