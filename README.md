# powershell-s3-copy
Powershell script to recursively copies files from a Windows directory into an S3 bucket while preserving the directory hierarchy.  It contains a test to ensure that only new files are copied over.  It does not check locally for modified files.



##### Instructions
1. Set `$bucket` to the name of the s3 bucket
2. Set `$bucketKey` to the key that you would like the files to be under.  If you want them to be in the bucket root, just leave the string empty, like this: `""`
3. Set `$directory` to the local folder's path

#####  Script Overview
1. Create temp dir
2. Copy the appropriate registry file to the target server
3. Merge the registry file with the server's registry
   
##### Assumptions
None

##### Additional Notes
If the script is not picking up new files during testing, try again in a new Powershell window.
