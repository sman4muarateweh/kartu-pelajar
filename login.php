<?php
session_start();
require_once('dbconnect.php');

if (isset($_SESSION['nisn'])) {
    header('Location: beranda');
    exit();
}

if (isset($_COOKIE['user_login'])) {
    $nisn = $_COOKIE['user_login'];

    $query = "SELECT * FROM Siswa WHERE nisn = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $nisn);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $user = $result->fetch_assoc();
        $_SESSION['loggedin'] = true;
        $_SESSION['nisn'] = $user['nisn'];
        header('Location: beranda');
        exit();
    } else {
        setcookie('user_login', '', time() - 3600, '/');
    }
}

$error = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $identifier = $_POST['identifier'];
    $sandi = $_POST['sandi'];

    if (filter_var($identifier, FILTER_VALIDATE_EMAIL)) {
        $query = "SELECT * FROM Siswa WHERE email = ?";
    } elseif (is_numeric($identifier) && strlen($identifier) == 10) {
        $query = "SELECT * FROM Siswa WHERE nisn = ?";
    } else {
        $query = "SELECT * FROM Siswa WHERE kontak = ?";
    }

    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $identifier);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $user = $result->fetch_assoc();
        if ($sandi == $user['sandi']) {
            $_SESSION['loggedin'] = true;
            $_SESSION['nisn'] = $user['nisn'];
            setcookie('user_login', $user['nisn'], time() + (86400 * 7), "/");
            header("Location: beranda");
            exit();
        } else {
            $error = "nisn, email, no.hp atau Kata Sandi tidak valid.";
        }
    } else {
        $error = "nisn, email, no.hp atau Kata Sandi tidak valid.";
    }
}
?>

<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Titian Ilmu</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('bg0.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        .login-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: rgba(255, 255, 255, 0);
            animation: popInOut 0.5s cubic-bezier(0.165, 0.84, 0.44, 1) both;
            padding: 20px;
            border-radius: 40px;
            max-width: 400px;
            width: 100%;
            margin: auto;
            flex-grow: 1;
        }

        footer {
            animation: slideFadeFromBottom 0.5s cubic-bezier(0.165, 0.84, 0.44, 1) both;
        }

        @keyframes slideFadeFromBottom {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .form-control {
            border-radius: 40px;
            background: transparent;
            border: 1px solid #ccc;
            color: #000;
        }

        .form-group {
            position: relative;
        }

        footer {
            background-color: transparent;
            padding: 20px 0;
        }

        .footer a {
            text-decoration: none;
        }

        .custom-control-input {
            width: 20px;
            height: 20px;
            position: absolute;
            left: 0;
            margin: 0;
        }

        @keyframes popInOut {
            0% {
                opacity: 0;
                transform: scale(1.2);
            }

            100% {
                opacity: 1;
                transform: scale(1);
            }
        }

        .pop-in-out {
            animation: popInOut 0.5s cubic-bezier(0.165, 0.84, 0.44, 1) both;
        }

        .sticky {
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 1000;
            background-color: white;
        }

        .card-body {
            padding: 1.5rem;
        }

        .text-center img {
            max-width: 100%;
            height: auto;
        }

        .footer .btn-secondary:hover {
            background-color: #5a6268;
            border-color: #545b62;
        }

        @keyframes slideUp {
            from {
                transform: translateY(20px);
                opacity: 0;
            }

            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .animated-btn {
            animation: slideUp 0.3s ease-out;
        }
    </style>
</head>

<body>

    <p style="text-align: center; font-weight: bold; font-size: 11px;"></p>

    <div class="login-container">
        <img src="logo/ea.png" alt="Logo" style="display: block; margin: 0 auto; width: 48px; height: 48px;"><br>

        <?php if (!empty($error)) { ?>
            <p class="alert" style="text-align: center; font-size: 14px; margin: 0; padding: 8px 0; color: #ff9c9c;">
                <?php echo $error; ?>
            </p>
        <?php } ?>

        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">

            <br>
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

            <div class="form-group">
                <div class="form-floating">
                    <input type="text" class="form-control" id="identifier" name="identifier" placeholder="" autocomplete="off">
                    <label for="identifier">nuptk / nisn / email / no.hp</label>
                </div>
                <div class="form-floating" style="margin-top: 1.5px;">
                    <input type="password" class="form-control" id="sandi" name="sandi" placeholder="">
                    <label for="sandi">kata sandi</label>
                    <i class="fas fa-eye" id="togglePassword" style="position: absolute; right: 0.75rem; top: 50%; transform: translateY(-50%); cursor: pointer;"></i>
                </div>
            </div>

            <style>
                .form-floating {
                    position: relative;
                    margin-bottom: 0px;
                }

                .form-floating input {
                    padding: 1.5rem 1rem;
                    padding-top: 1.75rem;
                    font-size: 1.25rem;
                }

                .form-floating label {
                    position: absolute;
                    top: 50%;
                    left: 1rem;
                    font-size: 1rem;
                    color: #6c757d;
                    transition: all 0.4s ease;
                    transform: translateY(-50%);
                }

                .form-floating input:focus ~ label,
                .form-floating input:not(:placeholder-shown) ~ label {
                    top: 0.75rem;
                    font-size: 0.875rem;
                    color: #66ccff;
                }

                input:focus {
                    outline: none;
                    border-color: #007bff;
                }
            </style>

            <script>
                const togglePassword = document.getElementById('togglePassword');
                const passwordField = document.getElementById('sandi');

                togglePassword.addEventListener('click', function () {
                    const type = passwordField.type === 'password' ? 'text' : 'password';
                    passwordField.type = type;

                    this.classList.toggle('fa-eye');
                    this.classList.toggle('fa-eye-slash');
                });
            </script>

            <button type="submit" class="btn btn-secondary btn-custom" style="width: 100%; margin-top: 10px; border-radius: 40px; color: white;">
                <b>>_<br>Login</b>
            </button>
        </form>
        <p style="padding: 30px; text-align: center; position: relative; z-index: 1; margin: 0 auto; width: fit-content; top: -10px;">
            Lupa kata sandi? <a href="menu_reset_sandi0">Sentuh di sini</a>
        </p>
    </div>

    <footer class="footer text-center"></footer>

    <p style="text-align: center; font-size: 4px; margin-top: 50px;">

        <a href="daftar" class="btn btn-dark" style="font-size: 10px; padding: 10px 20px; border-radius: 40px;">
            <b>+<br>buat kartu pelajar baru</b>
        </a>
        <br><br>
        titian ilmu sman 4 muara teweh | moqbit @ 2025
        <br>
        <a href="https://moqbit.com" target="_blank">pusat bantuan</a> | <a href="https://github.com/sman4muarateweh/4shelter" target="_blank"><i>source code</i></a>

    </p>

    <div style="background-color: #66ccff; height: 10px; border-top-left-radius: 40px; border-top-right-radius: 40px; margin-top: 8px; width: 100%;"></div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
