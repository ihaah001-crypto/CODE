param(
    [ValidateRange(1, 100)]
    [int]$Height = 5
)

for ($row = 1; $row -le $Height; $row++) {
    $spaces = " " * ($Height - $row)
    $stars = "*" * ((2 * $row) - 1)
    Write-Host "$spaces$stars"
}
