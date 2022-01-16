<!DOCTYPE html>
<html><head>
  <title>
QRCode Generator
  </title>
  <meta charset="utf-8">
  <meta name="author" content="Justin Briard" />
  <meta name="description" content="QRCode Generator">


<style>


body {
    background-color: rgb(255, 255, 255);
    color: rgb(74, 79, 98);
    font-family: Asap, -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    font-size: 0.8rem;
    height: 100%;
    margin: 10px;
}

footer {
    background-color: rgb(255, 255, 255);
    color: rgb(74, 79, 98);
    font-family: Asap, -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    font-size: 0.5rem;
    height: 100%;
    margin: 0px;
    display: flex;
    justify-content: center;
    padding: 5px;
    background-color: rgb(242, 242, 242);

}

</style>

    </head>
<body>
    
<center><a href="https://justin.briard.email" alt="link to QRCODE web site"><img src="/static/qrcode.png" alt="Logo QRCode"</i></a></center>
<br />

 
<p> 
  <pre>
  ACCESS_KEY: {{!ACCESS_KEY}}
  SECRET_KEY: {{!SECRET_KEY}}
  S3BUCKET_URL: {{!S3BUCKET_URL}}
  S3BUCKET_NAME: {{!S3BUCKET_NAME}}
  S3BUCKET_REGION: {{!S3BUCKET_REGION}}
  URL: {{!URL}}


 </pre> 
</p>


</body>

</html>
