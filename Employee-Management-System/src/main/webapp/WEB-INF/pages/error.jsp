<%@ page isELIgnored="false" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error - Employee Management System</title>
    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #cc0000;
            color: white;
            text-align: center;
            padding: 20px 0;
            font-size: 28px;
            font-weight: bold;
        }

        .error-container {
            max-width: 600px;
            margin: 100px auto;
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            text-align: center;
        }

        .error-icon {
            font-size: 60px;
            color: #cc0000;
            margin-bottom: 20px;
        }

        .error-message {
            color: #cc0000;
            font-size: 20px;
            margin-bottom: 30px;
            word-wrap: break-word;
        }

        .home-link a {
            background-color: #0066cc;
            color: white;
            text-decoration: none;
            padding: 12px 25px;
            font-size: 16px;
            border-radius: 8px;
            transition: background-color 0.3s;
        }

        .home-link a:hover {
            background-color: #004d99;
        }

        footer {
            text-align: center;
            color: #777;
            font-size: 14px;
            margin-top: 50px;
            padding: 10px;
        }
    </style>
</head>

<body>
    <header>Employee Management System</header>

    <div class="error-container">
        <div class="error-icon">⚠️</div>
        <h2>Something went wrong!</h2>
        <p class="error-message"><%= exception != null ? exception.getMessage() : "An unexpected error occurred." %></p>
        <div class="home-link">
            <a href="./">🏠 Back to Home</a>
        </div>
    </div>

    <footer>© 2025 Employee Management System | Designed by Sankrman Jadhav</footer>
</body>
</html>
