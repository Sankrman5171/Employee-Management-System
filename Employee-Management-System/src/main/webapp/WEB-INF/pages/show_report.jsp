<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Report</title>
    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #003366;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            font-size: 28px;
            font-weight: bold;
        }

        table {
            width: 85%;
            margin: 50px auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        th {
            background-color: #004080;
            color: white;
            padding: 12px;
            text-transform: uppercase;
        }

        td {
            text-align: center;
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .msg {
            text-align: center;
            font-size: 20px;
            margin-top: 30px;
        }

        .msg.success { color: green; }
        .msg.error { color: red; }

        .actions {
            text-align: center;
            margin-top: 40px;
        }

        .btn {
            display: inline-block;
            background-color: #0066cc;
            color: white;
            padding: 12px 25px;
            text-decoration: none;
            border-radius: 6px;
            margin: 10px;
            transition: background 0.3s;
        }

        .btn:hover {
            background-color: #004c99;
        }

        img.action-icon {
            width: 25px;
            height: 25px;
            vertical-align: middle;
            cursor: pointer;
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
    <header>Employee Management System - Report</header>

    <c:choose>
        <c:when test="${!empty empsList}">
            <table>
                <tr>
                    <th>Emp No</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Designation</th>
                    <th>Salary</th>
                    <th>Gross Salary</th>
                    <th>Net Salary</th>
                    <th>Operations</th>
                </tr>

                <c:forEach var="emp" items="${empsList}">
                    <tr>
                        <td>${emp.empno}</td>
                        <td>${emp.ename}</td>
                        <td>${emp.eaddrs}</td>
                        <td>${emp.desg}</td>
                        <td>${emp.salary}</td>
                        <td>${emp.grossSalary}</td>
                        <td>${emp.netSalary}</td>
                        <td>
                            <a href="edit?no=${emp.empno}" title="Edit">
                                <img src="images/edit.jpeg" class="action-icon">
                            </a>
                            &nbsp;&nbsp;
                            <a href="delete?no=${emp.empno}" title="Delete"
                               onclick="return confirm('Do you want to delete this employee?')">
                                <img src="images/delete.jpeg" class="action-icon">
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>

        <c:otherwise>
            <h2 class="msg error">No Records Found</h2>
        </c:otherwise>
    </c:choose>

    <c:if test="${!empty resultMsg}">
        <h3 class="msg success">${resultMsg}</h3>
    </c:if>

    <div class="actions">
        <a href="add" class="btn">Add New Employee</a>
        <a href="./" class="btn">Home</a>
    </div>

    <footer>© 2025 Employee Management System | Powered by Sankrman Jadhav</footer>
</body>
</html>
