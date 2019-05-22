$bucket = "foo"
$bucketKey = "bar"
$directory = "F:\baz"
$results = Get-ChildItem $directory -Recurse | % { $_.FullName }



foreach ($path in $results) {
	$filename = [System.IO.Path]::GetFileName($path)
	if (!(Get-S3Object -BucketName $bucket -Key $bucketKey/$filename)){
		Write-Host $path
		Write-Host $filename
		Write-S3Object -BucketName $bucket -File $path -Key $bucketKey/$filename -CannedACLName Private
	}
	#Uncomment to see files that are being skipped
	#elseif (Get-S3Object -BucketName $bucket -Key $bucketKey/$filename){
	#	Write-Host "Skipping $filename as it already exists."
	#}
}
