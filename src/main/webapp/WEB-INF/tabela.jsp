<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tabela</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-md-offset 3 cols-xs-12">

                <table class="table table-hover table-bordered">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Imie</th>
                        <th>Nazwisko</th>
                        <th>Email</th>
                    </tr>
                    </thead>

                    <tbody>
                        
                        <c:forEach var="user" items ="${users}" >
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        
                        <td>
                            <a href="users/update?id=${user.id}" class="btn btn-primary">Edytuj</a>
                        </td>
                        
                    </tr>
                         </c:forEach>
                        
                    </tbody>

                </table>

            </div>
        </div>
    </div>



    <br>

    <div class="col-md-offset-3 cols-xs-12">
        <a class="btn btn-primary" href="Menu.html">Menu</a>
    </div>
    
    <div class="col-md-offset-3 cols-xs-12">
        <a class="btn btn-primary" href="/users/create">Formularz</a>
    </div>

</body>
</html>