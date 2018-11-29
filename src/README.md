# gsutil-standalone

This tool uploads a file/folder to a directory in a GCS bucket.

## Usage

This script has 3 parameters:

1. Path to the JSON key file
2. Path to the local file to be uploaded
3. Cloud Storage URI (preferably a directory -- ends with a slash /)

To run the script, you also need to set the source directory to where the script (`run.sh`) is.  

Example:

```
tar -xf gcp_upload.tar.gz  # Unzip the archive
./run.sh key.json /path/to/local_file.csv gs://amp-test-bucket/temp/
```

## Caveats

- The security configuration with the least amount of permissions is Storage Object Creator. With only this permission, it requires the destination URI to be a directory -- i.e. to end with a slash. In addition, since the role does not have Object Delete privileges, files cannot be overwritten.
