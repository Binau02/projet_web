<!DOCTYPE html>

<html lang = "fr">

  <head>
    <meta charset = "utf-8">
    <title>test aubin</title>

    <link href="../css/base.css" rel="stylesheet">
  </head>

  <body>
    <div id=header>
      <div id=title>
        <img id=logo src="../img/logo.png">
        <span>BlaBlaCrash</span>
      </div>
      <form id=connexion action="connect.php" method="post">
        <input type="email" placeholder="Email" aria-label="Search" name="email">
        <input type="password" placeholder="Password" aria-label="Search" name="password">
        <button type="submit" name="connect">Connect</button>
      </form>
    </div>
  </body>

</html>