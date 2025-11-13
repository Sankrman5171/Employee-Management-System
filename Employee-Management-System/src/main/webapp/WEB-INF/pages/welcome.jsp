<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #f0f4ff, #e0ebff);
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #003366;
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            letter-spacing: 1px;
        }
        .container {
            text-align: center;
            margin-top: 100px;
        }
        .btn {
            display: inline-block;
            background-color: #0066cc;
            color: white;
            padding: 14px 30px;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #004c99;
        }
        footer {
            position: fixed;
            bottom: 10px;
            width: 100%;
            text-align: center;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <header>Employee Management System</header>

    <div class="container">
        <h2>Welcome to the Employee Portal</h2>
        <p>Click below to view the complete employee report.</p>
        <a href="report" class="btn">Generate Report</a>
    </div>

    <footer>
        © 2025 Employee Management System | Powered by Sankrman Jadhav
    </footer>

</body>
</html>
