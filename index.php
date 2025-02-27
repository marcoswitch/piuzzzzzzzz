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
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            background-image: radial-gradient(white, rgba(255,255,255,.2) 2px, transparent 2px),
                              radial-gradient(white, rgba(255,255,255,.15) 1px, transparent 1px);
            background-size: 50px 50px, 30px 30px;
            background-position: 0 0, 25px 25px;
        }
        h1 { color: #4e9af1; margin-top: 20px; }
        .container { max-width: 1200px; padding: 20px; text-align: center; margin-top: 20px; }
        .controls, .info-box, .constellation-card {
            background-color: rgba(25, 25, 40, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
            text-align: center;
        }
        button {
            background-color: #4e9af1;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
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
            <form method="POST" action="" class="location-form">
                <label for="location">Seleziona la tua posizione:</label>
                <select name="location">
                    <option value="N">Boreale</option>
                    <option value="S">Australe</option>
                </select>
                <button type="submit">Cerca</button>
            </form>
        </div>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $location = $_POST['location'];
            $sql = "SELECT * FROM Costellazioni WHERE emisfero = '$location' OR emisfero = 'B'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                echo '<div class="info-box">';
                echo '<h2>Costellazioni visibili</h2>';
                echo '<div class="constellation-grid">';
                while ($row = $result->fetch_assoc()) {
                    echo '<div class="constellation-card">';
                    echo '<div class="card-header"><h2>' . $row['nome'] . ' (' . $row['abbreviazione'] . ')</h2></div>';
                    echo '<div class="card-body">';
                    echo '<p><strong>Descrizione:</strong> ' . $row['descrizione'] . '</p>';
                    echo '<p><strong>Stella più luminosa:</strong> ' . $row['stella_principale'] . '</p>';
                    $constellation_id = $row['id'];
                    $star_sql = "SELECT * FROM Stelle WHERE costellazione_id = $constellation_id";
                    $star_result = $conn->query($star_sql);
                    if ($star_result->num_rows > 0) {
                        echo '<div class="star-list">';
                        echo '<h4>Stelle principali:</h4>';
                        while ($star = $star_result->fetch_assoc()) {
                            echo '<div class="star-item">';
                            echo '<span>' . $star['nome'] . '</span><span>Magnitudine: ' . $star['magnitudine'] . '</span>';
                            echo '</div>';
                        }
                        echo '</div>';
                    }
                    echo '</div></div>';
                }
                echo '</div></div>';
            } else {
                echo '<p class="info-box">Nessuna costellazione visibile trovata per questa posizione.</p>';
            }
        }
        $conn->close();
        ?>
    </div>
</body>
</html>
