<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "CostellazioniDB";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $latitude = floatval($_POST['latitude']);
    
    // Determina l'emisfero dalla latitudine
    if ($latitude >= 0) {
        $emisfero = "N";
    } else {
        $emisfero = "S";
    }

    $sql = "SELECT * FROM Costellazioni WHERE emisfero = ? OR emisfero = 'B'";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $emisfero);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo '<div class="info-box">';
        echo '<h2>Costellazioni visibili</h2>';
        echo '<div class="constellation-grid">';
        while ($row = $result->fetch_assoc()) {
            echo '<div class="constellation-card">';
            echo '<h2>' . htmlspecialchars($row['nome']) . ' (' . htmlspecialchars($row['abbreviazione']) . ')</h2>';
            echo '<p><strong>Descrizione:</strong> ' . htmlspecialchars($row['descrizione']) . '</p>';
            echo '<p><strong>Stella più luminosa:</strong> ' . htmlspecialchars($row['stella_principale']) . '</p>';
            echo '</div>';
        }
        echo '</div></div>';
    } else {
        echo '<p class="info-box">Nessuna costellazione visibile trovata.</p>';
    }

    $stmt->close();
}
$conn->close();
?>