# UTF-8でファイルを読み込む
$inputFile = "sample/Rohan4600_transcript_utf8.txt"
$lines = Get-Content $inputFile -Encoding UTF8

# 分割定義
$subsets = @(
    @{ Name = "ENDSVILLE400"; Start = 1; End = 400 },
    @{ Name = "MIDDLE1600_1"; Start = 401; End = 600 },
    @{ Name = "MIDDLE1600_2"; Start = 601; End = 800 },
    @{ Name = "MIDDLE1600_3"; Start = 801; End = 1000 },
    @{ Name = "MIDDLE1600_4"; Start = 1001; End = 1200 },
    @{ Name = "MIDDLE1600_5"; Start = 1201; End = 1400 },
    @{ Name = "MIDDLE1600_6"; Start = 1401; End = 1600 },
    @{ Name = "MIDDLE1600_7"; Start = 1601; End = 1800 },
    @{ Name = "MIDDLE1600_8"; Start = 1801; End = 2000 },
    @{ Name = "SHORT800_1"; Start = 2001; End = 2200 },
    @{ Name = "SHORT800_2"; Start = 2201; End = 2400 },
    @{ Name = "SHORT800_3"; Start = 2401; End = 2600 },
    @{ Name = "SHORT800_4"; Start = 2601; End = 2800 },
    @{ Name = "LONG800_1"; Start = 2801; End = 3000 },
    @{ Name = "LONG800_2"; Start = 3001; End = 3200 },
    @{ Name = "LONG800_3"; Start = 3201; End = 3400 },
    @{ Name = "LONG800_4"; Start = 3401; End = 3600 },
    @{ Name = "GUEST1000_1"; Start = 3601; End = 3800 },
    @{ Name = "GUEST1000_2"; Start = 3801; End = 4000 },
    @{ Name = "GUEST1000_3"; Start = 4001; End = 4200 },
    @{ Name = "GUEST1000_4"; Start = 4201; End = 4400 },
    @{ Name = "GUEST1000_5"; Start = 4401; End = 4600 }
)

# 各サブセットをファイルに出力
foreach ($subset in $subsets) {
    $outputFile = "sample/ROHAN4600_$($subset.Name).txt"
    $content = $lines[($subset.Start - 1)..($subset.End - 1)]
    Set-Content -Path $outputFile -Value $content -Encoding UTF8
    Write-Host "Created $outputFile"
}

Write-Host "Script finished."
