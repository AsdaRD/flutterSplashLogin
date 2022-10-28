bool localAuth({
  required String login,
  required String password,
}) {
  if (login == 'admin' && password == '123456') {
    return true;
  } else {
    return false;
  }
}
