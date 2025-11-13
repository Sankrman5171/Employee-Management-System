<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f3f7fb;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #0066cc;
            color: white;
            text-align: center;
            padding: 20px 0;
            font-size: 28px;
            font-weight: bold;
        }

        .form-container {
            width: 40%;
            margin: 60px auto;
            background: #ffffff;
            border-radius: 12px;
            padding: 30px 40px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
        }

        td {
            padding: 12px;
            font-size: 16px;
        }

        input[type="text"],
        input[type="number"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            outline: none;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #0066cc;
            box-shadow: 0 0 5px rgba(0, 102, 204, 0.3);
        }

        input[readonly] {
            background-color: #f1f1f1;
            color: #666;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #0066cc;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #004d99;
        }

        .buttons {
            text-align: center;
            margin-top: 25px;
        }

        .home-link {
            text-align: center;
            margin-top: 30px;
        }

        .home-link a {
            color: #0066cc;
            font-size: 18px;
            text-decoration: none;
            font-weight: bold;
        }

        .home-link a:hover {
            text-decoration: underline;
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
    <header>Employee Management System - Edit Employee</header>

    <div class="form-container">
        <frm:form modelAttribute="emp" action="edit" method="post">
            <table>
                <tr>
                    <td><label for="empno">Employee No:</label></td>
                    <td><frm:input path="empno" id="empno" readonly="true"/></td>
                </tr>
                <tr>
                    <td><label for="ename">Name:</label></td>
                    <td><frm:input path="ename" id="ename" placeholder="Enter employee name"/></td>
                </tr>
                <tr>
                    <td><label for="eaddrs">Address:</label></td>
                    <td><frm:input path="eaddrs" id="eaddrs" placeholder="Enter address"/></td>
                </tr>
                <tr>
                    <td><label for="desg">Designation:</label></td>
                    <td><frm:input path="desg" id="desg" placeholder="Enter designation"/></td>
                </tr>
                <tr>
                    <td><label for="salary">Salary:</label></td>
                    <td><frm:input path="salary" id="salary" type="number" step="0.01" placeholder="Enter salary"/></td>
                </tr>
            </table>

            <div class="buttons">
                <input type="submit" value="Update Employee">
                &nbsp;&nbsp;
                <input type="reset" value="Cancel">
            </div>
        </frm:form>
    </div>

    <div class="home-link">
        <a href="./">🏠 Back to Home</a>
    </div>

    <footer>© 2025 Employee Management System | Designed by Sankrman Jadhav</footer>
</body>
</html>
