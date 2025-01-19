# backdate_contributions.ps1
$dates = @(
    "2025-01-09", "2025-01-09", "2025-01-09", "2025-01-09", "2025-01-09",
    "2025-01-10",
    "2025-01-11",
    "2025-01-12",
    "2025-01-13",
    "2025-01-14", "2025-01-14", "2025-01-14", "2025-01-14", "2025-01-14",
    "2025-01-15",
    "2025-01-16",
    "2025-01-17", "2025-01-17", "2025-01-17", "2025-01-17", "2025-01-17",
    "2025-01-18",
    "2025-01-19", "2025-01-19", "2025-01-19", "2025-01-19", "2025-01-19",
    "2025-01-19", "2025-01-19"
)

for ($i = 0; $i -lt $dates.Count; $i++) {
    $date = $dates[$i]
    $time = Get-Random -Minimum 8 -Maximum 20
    $minute = Get-Random -Minimum 0 -Maximum 59
    $second = Get-Random -Minimum 0 -Maximum 59
    $timestamp = "$date $time`:$minute`:$second"

    # Modify the notebook file slightly
    Add-Content -Path "Bitcoin-News-Sentiment-Trading-Strategy.ipynb" -Value "`n// Commit #$($i+1) on $timestamp"

    git add Bitcoin-News-Sentiment-Trading-Strategy.ipynb

    $env:GIT_AUTHOR_DATE = $timestamp
    $env:GIT_COMMITTER_DATE = $timestamp
    git commit -m "Commit #$($i+1) on $date at ${time}:${minute}"

}

Write-Host "✅ 29 backdated commits created. You can now push using:"
Write-Host "   git push origin main --force"
