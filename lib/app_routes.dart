enum AppRoutes {
  login,
  register,
  home
}

extension AppRoutesExtension on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.login:
        return "/";
      case AppRoutes.register:
        return "/register";
      case AppRoutes.home:
        return "/home";
      default:
        return "/";
    }
  }
}