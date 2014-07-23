# # Generate private key
# openssl genrsa -des3 -out site.key 1024

# # Create certificate signing request (CSR)
# openssl req -new -key site.key -out site.csr

# # Rename
# mv site.key site.key.org

# # Remove passphrase
# openssl rsa -in site.key.org -out site.key

# # Generate self-signed cert
# openssl x509 -req -days 365 -in site.csr -signkey site.key -out final.crt




# Generate private key
openssl genrsa -des3 -out privatekey.pem 1024

# Create certificate signing request (CSR)
openssl req -new -key privatekey.pem -out site.csr

# Rename
mv privatekey.pem privatekey.pem.orig

# Remove passphrase
openssl rsa -in privatekey.pem.orig -out privatekey.pem

# Generate self-signed cert
openssl x509 -req -days 365 -in site.csr -signkey privatekey.pem -out cert.pem


# Convert to PEM???
openssl x509 -req -in site.csr -signkey privatekey.pem -out certificate.pem