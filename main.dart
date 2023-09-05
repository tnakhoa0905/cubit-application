import 'package:cubit_application/controller/auth/auth_cubit.dart';
import 'package:cubit_application/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://nbcjhrspkctbjdzopobc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5iY2pocnNwa2N0Ympkem9wb2JjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTIwNjg2OTksImV4cCI6MjAwNzY0NDY5OX0.n_bnB-0ZCxoDBTnw8DI0S-uEEu605oQCdN0Tgwk3XlU',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AuthCubit())],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
