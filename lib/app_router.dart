import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';
import 'features/favorite_song/presentation/screens/details_screen.dart';


final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => const DetailsScreen(),
    ),
  ],
);
