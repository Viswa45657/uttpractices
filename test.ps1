$name = "Viswas"
Write-Host "Hello $name"

$age = Read-Host "Enter your age"
Write-Host "Your age is $age"

# 3. If / Else
if ([int]$age -ge 18) {
Write-Host "You are 18 or older"
}
else {
Write-Host "You are under 18"
}


# 4. Array
$tools = @("PowerShell", "Git", "GitHub")

# 5. Foreach Loop
foreach ($tool in $tools) {
Write-Host "Learning: $tool"
}

# 6. Function
function Show-Welcome {
param([string]$UserName)
Write-Host "Welcome $UserName!"
}
Show-Welcome -UserName $name

# 7. Create a File
$file = "$PSScriptRoot\practice.txt"
try {
"PowerShell practice completed" | Set-Content $file
Write-Host "File created successfully"
}
catch {
Write-Host "Error: $($_.Exception.Message)"
}