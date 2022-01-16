# QRCode Generator
![alt text](https://github.com/jbriard/qrcode/blob/main/code/static/qrcode.png?raw=true "Logo QRCode Generator")

QRCode Generator is a REST API designed to generate QRCode.

This API is able to deviler the QRCode as an Base64 encoded PNG or directly as an image url.


## Installation

### Easy way
Use Docker
```bash
docker pull justinbriard/qrcode
```

### The Hard way but good way
Use git clone and run the binary as a service

```bash
git clone https://github.com/jbriard/qrcode.git
```

## Requirements

- Python 3.x
- Pip
  - bottle
  - paste
  - requests
  - urllib3
  - boto3
  - pyqrcode
  - pypng



## Start
### Environment Variables for S3
You need to setup some Environment Variable to run QRCode Generator in order to use bucket management.
/!\ QRCOde Generator didn't manage the S3 storage, if you don't clean the bucket, the generated image will stay forever.
I personaly use a Life Cycle rule to delete all the image older than 2 days.


```bash
export S3BUCKET_URL="https://s3.fr-par.scw.cloud"
export ACCESS_KEY="SCW4KFF46W"
export SECRET_KEY="1ff11952-fed1-4a94-95e7-83fdb9a66367"
export S3BUCKET_NAME="otbm-qrcode"
export S3BUCKET_REGION="fr-par"
export URL="https://api.qrcode.otbm.fr"
```

### Run
```bash
python run.py
```



## Usage

**Body Json**

You need to send this body, if you omit any of the elements you will get an error.
```json
{
"text":"hello World",
"size":"10",
"result_format":"base64"
}
```
You need to set this 3 elements :
- text
- size
- result_format


*text*
This is literraly the text you want to encode in the QRCode.

*size*
It's the size of the generated image 1 is the smallest and 40 is the largest.

*result_format*
Is the format is the format in which the image will be made available.
- If set to base64, you will get the image encoded in base64
- If set to link, you will get an URL to the generated image.





**Endpoint v1/qrcode**

Base64
```bash
curl --request POST \
  --url http://[server]:[port]/v1/elements \
  --header 'content-type: application/json' \
  --data '{
"text":"hello World",
"size":"10",
"result_format":"base64"
}'
```
result:
```json
{
  "status": "ok",
  "result": "iVBORw0KGgoAAAANSUhEUgAAAEIAAABCAQAAAADLLz1FAAAAoklEQVR4nK3SMQrEMAxEUYFbQ64imNYwVzekDfgqBrUCbcgmZJVto+pVHyEkcU6XlyRl8SlMogEWWQpZUZ7q81/D7CFaGVfvkhRAJSuCled+lyYw+mRSYzO3SBr7BqMySbkYPKsYZ5es6u7tqNzCdPSjcksrTZkFXVcpkRQBI7Kk2AZlEm2/d40kRWvfyq/qagsfgs6RRYttY9ZeGM2z3v2hD7edgzQjGFQ7AAAAAElFTkSuQmCC"
}
```

Link
```bash
curl --request POST \
  --url http://[server]:[port]/v1/elements \
  --header 'content-type: application/json' \
  --data '{
"text":"hello World",
"size":"10",
"result_format":"link"
}'
```
result:
```json
{
  "status": "ok",
  "result": "https://s3.fr-par.scw.cloud/otbm-qrcode/9KGB3KRG2MSCY6TY4L.png"
}
```





**Endpoint /checkhealth**

```bash
curl --request GET \
  --url http://[server]:[port]/checkhealth
```
result:
```json
{
    "status": "ok"
}
```

**Endpoint /version**

```bash
curl --request GET \
  --url http://[server]:[port]/version
```
result:
```text
1.4
```



## Demo
You can see more info on https://qrcode.otbm.fr/ or test the API https://api.qrcode.otbm.fr



## Project status
Under development

