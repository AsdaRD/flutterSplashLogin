bool localAuth(
  String login,
  String password,
) {
  if (login == 'admin' && password == '123456') {
    return true;
  } else {
    return false;
  }
}
