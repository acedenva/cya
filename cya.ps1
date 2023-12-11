[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[System.Windows.Forms.Application]::EnableVisualStyles() 

$defaultFont = "Myriad Pro"


$form = New-Object System.Windows.Forms.Form
$form.BackgroundImageLayout = 4
$form.Text = "CUgen"
$form.FormBorderStyle = 'FixedDialog'
$form.MaximizeBox = $false
$form.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$form.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#005878")
$form.Size = New-Object System.Drawing.Size(400, 300)
$form.StartPosition = "CenterScreen"
$form.KeyPreview = $true

#Picture Box
$atdLogoBase = "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"
$imageBytes = [Convert]::FromBase64String($atdLogoBase)
$ms = New-Object IO.MemoryStream($imageBytes, 0, $imageBytes.Length)
$ms.Write($imageBytes, 0, $imageBytes.Length)
$atdLogo = [System.Drawing.Image]::FromStream($ms, $true)
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Image = $atdLogo
$pictureBox.Width = $atdLogo.Size.Width
$pictureBox.Height = $atdLogo.Size.Height

# Panel
$panelHeader = New-Object System.Windows.Forms.Panel
$panelHeader.Size = New-Object System.Drawing.Size(400, 100)
$panelHeader.Location = New-Object System.Drawing.Size(0, 0)
$panelHeader.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#009aa0")

## Panel Header Label
$labelPartingPhrase = New-Object System.Windows.Forms.Label
$labelPartingPhrase.Size = New-Object System.Drawing.Size(200, 40)
$labelPartingPhrase.Location = New-Object System.Drawing.Size(100, 10)
$labelPartingPhrase.Font = New-Object System.Drawing.Font($defaultFont, 20, [System.Drawing.FontStyle]::Bold)
$labelPartingPhrase.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$labelPartingPhrase.Text = "Parting Phrase"

$panelHeader.Controls.Add($pictureBox)
$form.Controls.Add($panelHeader)

##### Textbox
$textboxPartingPhrase = New-Object System.Windows.Forms.TextBox
$textboxPartingPhrase.Size = New-Object System.Drawing.Size(200, 100)
$textboxPartingPhrase.Location = New-Object System.Drawing.Size(100, 120)
$textBoxPartingPhrase.Font = New-Object System.Drawing.Font($defaultFont, 15, [System.Drawing.FontStyle]::Regular)
$textboxPartingPhrase.Text = "Tschuess"
$form.Controls.Add($textboxPartingPhrase)

$button = New-Object System.Windows.Forms.Button
$button.Size = New-Object System.Drawing.Size(200, 40)
$button.Location = New-Object System.Drawing.Size(100, 160)
$button.Font = New-Object System.Drawing.Font($defaultFont, 20, [System.Drawing.FontStyle]::Regular)
$button.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#0b9ea4")
$button.Text = "Generate"
$button.BackColor = "White"
$button.FlatStyle = "Flat"
$button.FlatAppearance.BorderColor = ("#0b9ea4")
$button.FlatAppearance.BorderSize = 1 

$phrasesArr = @(
    "Adeus",
    "Adiau",
    "Adio",
    "Adios",
    "Adieu",
    "Adio",
    "Aloha",
    "Annyeong",
    "Annyeonghi gaseyo",
		"Auf Wiedersehen",
    "Arrivederci",
    "Bisalama",
    "Bidaya",
    "Bubye",
    "Chao",
    "Ciao",
    "Do svidaniya",
    "Dovidjenja",
    "Do widzenia",
    "Dovidenia",
    "Dovizhdane",
    "Farvel",
    "Goodbye",
    "Gurthupettu",
    "Ha det",
    "Hamba kahle",
    "Habari gani",
    "Hej da",
    "Hejda",
    "Hoguvudu",
    "Hoshcha kal",
    "Khoda hafez",
    "Khuda hafiz",
    "La brea go deo",
    "La revedere",
    "La revedere",
    "Lehitra'ot",
    "Mirupafshim",
    "Namaste",
    "Na shledanou",
    "Nakemiin",
    "Paalam",
    "Poitu varein",
    "Prijatno",
    "Sayonara",
    "Selamat tinggal",
    "Sbohem",
    "Tschuess",
    "Viszontlatasra",
    "Viḍa",
    "Wada'a",
    "Wada'an",
    "Zaijian",
    "Zbogom",
    "Zegnaj"
)

$button.add_Click({
  $randomIndex = Get-Random -Minimum 0 -Maximum ($phrasesArr.Length)
		$textboxPartingPhrase.Text = $phrasesArr[$randomIndex]
	})

$form.Add_Closing({[System.Windows.Forms.Application]::Exit(); Stop-Process $pid})
$form.Controls.Add($button)
$form.showDialog()