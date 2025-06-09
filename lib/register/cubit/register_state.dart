import 'package:equatable/equatable.dart';

enum RegisterStatus {
  initial,
  loading,
  success,
  failure
}

class RegisterState extends Equatable {
  final RegisterStatus registerStatus;
  final String errorMessage;

  const RegisterState({
    this.registerStatus = RegisterStatus.initial,
    this.errorMessage = '',
  });

  RegisterState copyWith({
    RegisterStatus? registerStatus,
    String? errorMessage,
  }) {
    return RegisterState(
      registerStatus: registerStatus ?? this.registerStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [registerStatus, errorMessage];
}