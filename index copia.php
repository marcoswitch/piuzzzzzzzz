<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "CostellazioniDB";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}
?>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Esploratore di Costellazioni</title>
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background-color: #121212;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        h1 { color: #4e9af1; margin-top: 20px; }
        .container { max-width: 1200px; padding: 20px; margin-top: 20px; }
        .controls, .info-box, .constellation-card {
            background-color: rgba(25, 25, 40, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
        }
        button {
            background-color: #4e9af1;
            color: #fff;
            cursor: pointer;
            border: none;
            padding: 12px 24px;
            font-weight: bold;
        }
        .constellation-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .constellation-card {
            width: 300px;
        }
    </style>
</head>
<body>
    <div class="container">
        <header><h1>Esploratore di Costellazioni</h1></header>
        <div class="controls">
            <p id="status">Determinazione della posizione...</p>
            <button onclick="getLocation()">Usa la mia posizione</button>
        </div>

        <script>
            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(sendPosition, showError);
                } else {
                    document.getElementById("status").innerHTML = "Geolocalizzazione non supportata.";
                }
            }

            function sendPosition(position) {
                let lat = position.coords.latitude;
                let long = position.coords.longitude;
                document.getElementById("status").innerHTML = "Posizione rilevata: " + lat.toFixed(2) + ", " + long.toFixed(2);
                
                // Invia la latitudine al server tramite POST
                fetch("costellazioni.php", {
                    method: "POST",
                    headers: { "Content-Type": "application/x-www-form-urlencoded" },
                    body: "latitude=" + lat
                })
                .then(response => response.text())
                .then(data => document.getElementById("result").innerHTML = data)
                .catch(error => console.error("Errore:", error));
            }

            function showError(error) {
                switch(error.code) {
                    case error.PERMISSION_DENIED:
                        document.getElementById("status").innerHTML = "Permesso negato per la geolocalizzazione.";
                        break;
                    case error.POSITION_UNAVAILABLE:
                        document.getElementById("status").innerHTML = "Informazioni sulla posizione non disponibili.";
                        break;
                    case error.TIMEOUT:
                        document.getElementById("status").innerHTML = "Tempo scaduto nel recupero della posizione.";
                        break;
                    default:
                        document.getElementById("status").innerHTML = "Errore sconosciuto.";
                        break;
                }
            }
        </script>

        <div id="result"></div>
    </div>
</body>
</html>