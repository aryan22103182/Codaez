import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'protected.dart';
import 'widgets/navbar.dart';
import 'widgets/sidebar.dart';
import 'pages/landing.dart';
import 'pages/layout.dart';
import 'pages/dashboard.dart';
import 'pages/leaderboard.dart';
import 'pages/auth.dart';
import 'pages/profile.dart';
import 'pages/error_404.dart';
import 'pages/complete_profile.dart';


final GoRouter appRouter = GoRouter(
  errorBuilder: (context, state) => const Error404(),

  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Layout(
        child: LandingPage(),
      ),
    ),

    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),

    GoRoute(
      path: '/dashboard',
      builder: (context, state) => Protected(
        child: const Layout(child: DashboardPage()),
        isLoggedIn: true,
      ),
    ),

    GoRoute(
      path: '/leaderboard',
      builder: (context, state) => Protected(
        child: const Layout(child: LeaderboardPage()),
        isLoggedIn: true,
      ),
    ),

    GoRoute(
      path: '/profile/:username',
      builder: (context, state) {
        final username = state.pathParameters['username']!;
        return Protected(
          child: Layout(
            child: ProfilePage(username: username),
            
          ),
          isLoggedIn: true,
        );
      },
    ),

    GoRoute(
      path: '/completeprofile',
      builder: (context, state) => const CompleteProfile(),
    ),
  ],
);
