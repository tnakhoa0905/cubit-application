import 'package:bloc/bloc.dart';
import 'package:cubit_application/controller/auth/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
