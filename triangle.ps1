function Test-Triangle {
    param(
        [double]$A,
        [double]$B,
        [double]$C
    )

    if ($A -le 0 -or $B -le 0 -or $C -le 0) {
        throw "Các cạnh phải lớn hơn 0"
    }

    if (($A + $B -le $C) -or ($A + $C -le $B) -or ($B + $C -le $A)) {
        throw "Ba cạnh không tạo thành tam giác"
    }

    $perimeter = $A + $B + $C
    $semiperimeter = $perimeter / 2

    $area = [Math]::Sqrt(
        $semiperimeter *
        ($semiperimeter - $A) *
        ($semiperimeter - $B) *
        ($semiperimeter - $C)
    )

    [PSCustomObject]@{
        Perimeter = $perimeter
        Area = [Math]::Round($area, 2)
    }
}

$a = 3
$b = 4
$c = 5

$result = Test-Triangle -A $a -B $b -C $c
Write-Host "Chu vi: $($result.Perimeter)"
Write-Host "Diện tích: $($result.Area)"
