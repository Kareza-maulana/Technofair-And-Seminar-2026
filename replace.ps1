$pattern = 'src="data:image/[a-z]+;base64,[A-Za-z0-9+/=]+"'
$replacement = 'src="Desain_tanpa_judul__13_-removebg-preview.png"'
$content = [System.IO.File]::ReadAllText("tfs_landing.html")
$content = [regex]::Replace($content, $pattern, $replacement)
[System.IO.File]::WriteAllText("tfs_landing.html", $content)
