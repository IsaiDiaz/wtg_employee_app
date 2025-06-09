import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtg_employee_app/register/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());

  void register(String username, String password) {
    emit(state.copyWith(registerStatus: RegisterStatus.loading));
    if (username.isNotEmpty && password.isNotEmpty) {
      emit(state.copyWith(registerStatus: RegisterStatus.success));
    } else {
      emit(state.copyWith(
        registerStatus: RegisterStatus.failure,
        errorMessage: 'Username and password cannot be empty',
      ));
    }
  }
}