all:
	rm -f build/gcp_upload.tar.gz
	tar -zcf build/gcp_upload.tar.gz -C src .