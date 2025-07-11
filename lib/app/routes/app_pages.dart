// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import '../modules/article/bindings/article_binding.dart';
import '../modules/article/views/article_view.dart';
import '../modules/assesment_1/bindings/assesment_1_binding.dart';
import '../modules/assesment_1/views/assesment_1_view.dart';
import '../modules/assesment_2/bindings/assesment_2_binding.dart';
import '../modules/assesment_2/views/assesment_2_view.dart';
import '../modules/booking_history/bindings/booking_history_binding.dart';
import '../modules/booking_history/views/booking_history_view.dart';

import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/chat_room/bindings/chat_room_binding.dart';
import '../modules/chat_room/views/chat_room_view.dart';
import '../modules/chatbot/bindings/chatbot_binding.dart';
import '../modules/chatbot/views/chatbot_view.dart';
import '../modules/chatbot_room/bindings/chatbot_room_binding.dart';
import '../modules/chatbot_room/views/chatbot_room_view.dart';
import '../modules/consult/bindings/consult_binding.dart';
import '../modules/consult/views/consult_view.dart';
import '../modules/consult_history/bindings/consult_history_binding.dart';
import '../modules/consult_history/views/consult_history_view.dart';
import '../modules/consult_report/bindings/consult_report_binding.dart';
import '../modules/consult_report/views/consult_report_view.dart';
import '../modules/consult_schedule/bindings/consult_schedule_binding.dart';
import '../modules/consult_schedule/views/consult_schedule_view.dart';
import '../modules/create_journal/bindings/create_journal_binding.dart';
import '../modules/create_journal/views/create_journal_view.dart';
import '../modules/detail_artikel/bindings/detail_artikel_binding.dart';
import '../modules/detail_artikel/views/detail_artikel_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/forgotPassword/bindings/forgot_password_binding.dart';
import '../modules/forgotPassword/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/journal/bindings/journal_binding.dart';
import '../modules/journal/views/journal_view.dart';
import '../modules/journal_detail/bindings/journal_detail_binding.dart';
import '../modules/journal_detail/views/journal_detail_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/mental_matrix/bindings/mental_matrix_binding.dart';
import '../modules/mental_matrix/views/mental_matrix_view.dart';
import '../modules/navigation_bar/bindings/navigation_bar_binding.dart';
import '../modules/navigation_bar/views/navigation_bar_view.dart';
import '../modules/newTracking/bindings/new_tracking_binding.dart';
import '../modules/newTracking/views/new_tracking_view.dart';
import '../modules/on_boarding/bindings/on_boarding_binding.dart';
import '../modules/on_boarding/views/on_boarding_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/report/bindings/report_binding.dart';
import '../modules/report/views/report_view.dart';
import '../modules/sendOtp/bindings/send_otp_binding.dart';
import '../modules/sendOtp/views/send_otp_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/transaction/bindings/transaction_binding.dart';
import '../modules/transaction/views/transaction_view.dart';
import '../modules/transaction_invoice/bindings/transaction_invoice_binding.dart';
import '../modules/transaction_invoice/views/transaction_invoice_view.dart';
import '../modules/transaction_method/bindings/transaction_method_binding.dart';
import '../modules/transaction_method/views/transaction_method_view.dart';
import '../modules/transaction_payment/bindings/transaction_payment_binding.dart';
import '../modules/transaction_payment/views/transaction_payment_view.dart';
import '../modules/transaction_success/bindings/transaction_success_binding.dart';
import '../modules/transaction_success/views/transaction_success_view.dart';
import '../modules/verifyOtp/bindings/verify_otp_binding.dart';
import '../modules/verifyOtp/views/verify_otp_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION_BAR,
      page: () => NavigationBarView(),
      binding: NavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLE,
      page: () => ArticleView(),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ARTIKEL,
      page: () => DetailArtikelView(),
      binding: DetailArtikelBinding(),
    ),
    GetPage(
      name: _Paths.CHATBOT,
      page: () => const ChatbotView(),
      binding: ChatbotBinding(),
    ),
    GetPage(
      name: _Paths.CONSULT,
      page: () => ConsultView(),
      binding: ConsultBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.JOURNAL,
      page: () => JournalView(),
      binding: JournalBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_JOURNAL,
      page: () => const CreateJournalView(),
      binding: CreateJournalBinding(),
    ),
    GetPage(
      name: _Paths.CHATBOT_ROOM,
      page: () => const ChatbotRoomView(),
      binding: ChatbotRoomBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => const ReportView(),
      binding: ReportBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION,
      page: () => const TransactionView(),
      binding: TransactionBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_METHOD,
      page: () => const TransactionMethodView(),
      binding: TransactionMethodBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_PAYMENT,
      page: () => TransactionPaymentView(),
      binding: TransactionPaymentBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_SUCCESS,
      page: () => const TransactionSuccessView(),
      binding: TransactionSuccessBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_INVOICE,
      page: () => const TransactionInvoiceView(),
      binding: TransactionInvoiceBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ASSESMENT_1,
      page: () => const Assesment1View(),
      binding: Assesment1Binding(),
    ),
    GetPage(
      name: _Paths.ASSESMENT_2,
      page: () => Assesment2View(),
      binding: Assesment2Binding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CONSULT_SCHEDULE,
      page: () => const ConsultScheduleView(),
      binding: ConsultScheduleBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_ROOM,
      page: () => const ChatRoomView(),
      binding: ChatRoomBinding(),
    ),
    GetPage(
      name: _Paths.CONSULT_HISTORY,
      page: () => const ConsultHistoryView(),
      binding: ConsultHistoryBinding(),
    ),
    GetPage(
      name: _Paths.CONSULT_REPORT,
      page: () => const ConsultReportView(),
      binding: ConsultReportBinding(),
    ),
    GetPage(
      name: _Paths.SEND_OTP,
      page: () => const SendOtpView(),
      binding: SendOtpBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_OTP,
      page: () => const VerifyOtpView(),
      binding: VerifyOtpBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING_HISTORY,
      page: () => const BookingHistoryView(),
      binding: BookingHistoryBinding(),
    ),
    GetPage(
      name: _Paths.NEW_TRACKING,
      page: () => const NewTrackingView(),
      binding: NewTrackingBinding(),
    ),
    GetPage(
      name: _Paths.MENTAL_MATRIX,
      page: () => MentalMatrixView(),
      binding: MentalMatrixBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.JOURNAL_DETAIL,
      page: () => const JournalDetailView(),
      binding: JournalDetailBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
  ];
}
