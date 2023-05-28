part of 'featuredbooks_cubit.dart';

abstract class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

class FeaturedbooksInitialState extends FeaturedbooksState {}

class FeaturedbooksLoadingState extends FeaturedbooksState {}

class FeaturedbooksFailureState extends FeaturedbooksState {
  final String errMassage;

  const FeaturedbooksFailureState(this.errMassage);
}

class FeaturedbooksSuccessState extends FeaturedbooksState {
  final List<BookModel> books;

  const FeaturedbooksSuccessState(this.books);
}
