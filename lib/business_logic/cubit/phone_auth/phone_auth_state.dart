part of 'phone_auth_cubit.dart';

@immutable
abstract class PhoneAuthState {}


// Initial  (Login Screen(Phone Number))
class PhoneAuthInitial extends PhoneAuthState {}


// Loading
class Loading extends PhoneAuthState{}

// ERROR
class ErrorOccurred extends PhoneAuthState {
  final String errorMsg;
  ErrorOccurred({required this.errorMsg});
}

// Phone Number True => Submit
class PhoneNumberSubmit extends PhoneAuthState{}


// Code True => Go To Map Screen (App Screen)
class PhoneOTPVerified extends PhoneAuthState{}