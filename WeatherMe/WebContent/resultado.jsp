<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Weather.Me</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>

    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg p-2 bg-info rounded ">
            <a class="navbar-brand text-white" href="index.jsp">Weather.Me</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end " id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <button class="btn btn-outline-primary" type="button" id="button-addon1"><a class="text-secondary"
                            href="index.jsp">Voltar</a></button>
                </div>
            </div>
        </nav>

        <main role="main" class="container">
            <div class="d-flex align-items-center p-3 my-3 text-white-50 rounded shadow-sm"
                style="background-color: #047aa6;">
                <img class="mr-3" src="designWeatherMe.png" alt="" width="100" height="100">
                <div class="lh-100">
                    <h6 class="mb-0 text-white lh-100 justify-content-center">Bem vindo ao <strong>Weather.Me</strong>
                    </h6>
                </div>
            </div>

            <div class="my-3 p-3 bg-white rounded shadow-sm text-center">
                <h3 class="border-bottom border-gray pb-2 mb-0">Sua consulta</h3>
                <div class=" text-muted ">
                    <div class="row">
                        <div class="col-12 bg-secondary text-white border rounded p-2">
                            ${city.getNome()}
                        </div>
                    </div>
                    <div class="row justify-content-center p-3 mb-2 bg-info text-white border rounded ">
                        <div class="col-8">
                            Temperatura: ${city.getTemp()}° | Data: ${city.getData()} Horario: ${city.getHora()}
                        </div>
                    </div>
                    <div class="row p-3 justify-content-center p-3 mb-2 bg-info text-white border rounded">
                        <div class="col-4 ">
                            Min: ${city.getMin()}º
                        </div>
                        <div class="col-4 ">
                            Max: ${city.getMax()}º
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 bg-secondary text-white border rounded p-2">
                            ${city.getDescricao()}!!
                        </div>
                    </div>
                    
                </div>
            </div>
        </main>

        <footer class="blog-footer mx-auto text-center bg-light" style="padding-top: 30px;">
            <p>
                Desenvolvido pelo grupo JERDAM. <a href="### ">ENG.</a> by <a href=###>0Z3R00</a>.
            </p>
        </footer>

    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>