# Let's Encrypt DNS cloudflare

## Usage

1. Copy the example file.
    ```bash
    cp docker-compose.example.yml docker-compose.yml
    cp cloudflare.example.ini cloudflare.ini
    ```
2. Edit `cloudflare.ini` with your account login email and api key.
3. Edit `docker-compose.yml` with your email and your domain.
4. Set `cloudflare.ini` permission.
    ```bash
    chown root:root cloudflare.ini
    chmod 600 cloudflare.ini
    ```
5. Run docker to get credentials.
    ```bash
    sudo docker-compose run --rm certbot
    ```

## Revoke credentials

<https://letsencrypt.org/docs/revoking/>

```bash
sudo docker-compose run --rm certbot revoke --cert-path /etc/letsencrypt/archive/serveo/cert1.pem
```

## DEMO

```bash
$ cd dns-cloudflare

$ cp cloudflare.example.ini cloudflare.ini

$ chown root:root cloudflare.ini

$ chmod 600 cloudflare.ini

$ nano cloudflare.ini # change cloudflare email and api key

$ cp docker-compose.example.yml docker-compose.yml

$ nano docker-compose.yml # change Let's Encrypt email and domain

$ docker-compose run --rm certbot
# Saving debug log to /var/log/letsencrypt/letsencrypt.log
# Plugins selected: Authenticator dns-cloudflare, Installer None
# Obtaining a new certificate
# Performing the following challenges:
# dns-01 challenge for example.com
# dns-01 challenge for example.com
# Waiting 10 seconds for DNS changes to propagate
# Waiting for verification...
# Cleaning up challenges

# IMPORTANT NOTES:
#  - Congratulations! Your certificate and chain have been saved at:
#    /etc/letsencrypt/live/serveo/fullchain.pem
#    Your key file has been saved at:
#    /etc/letsencrypt/live/serveo/privkey.pem
#    Your cert will expire on 2019-06-14. To obtain a new or tweaked
#    version of this certificate in the future, simply run certbot
#    again. To non-interactively renew *all* of your certificates, run
#    "certbot renew"
#  - If you like Certbot, please consider supporting our work by:

#    Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
#    Donating to EFF:                    https://eff.org/donate-le

$ cd ..
```
