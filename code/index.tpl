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
    
<center><a href="https://qrcode.otbm.fr" alt="link to QRCODE web site"><img src="/static/qrcode.png" alt="Logo QRCode"</i></a></center>
<br />



<h3>Endpoint v1/qrcode</h3>
Get the QRCode in Base64
<b>Call:</b>
<pre>curl --request POST \
  --url {{!URL}}v1/qrcode \
  --header 'content-type: application/json' \
  --data '{
"text":"hello World",
"size":"2",
"result_format":"base64"
}'
</pre>

<b>result:</b>
<pre>{
  "status": "ok",
  "result": "iVBORw0KGgoAAAANSUhEUgAAAWgAAAFoAQAAAABSnlx4AAABvUlEQVR4nO3VQY6DUAwDUN//0hlB7OS3msWMcKUuTLuA8MKiJinqPweio6Ojo79Jo4/rAvflVbnOu8q70TbNn74batzdOKVon4Zgh1ICE1L0B/ROQekb/Vk9pZuyL9qtpwd7rx+AuRtt0/Pv+uvn/d81+qE+Dqj/uDjvRns0+rR3TifCU24hRBs1NhMNQC2taLu+C4pjoiLUzo/2aJTiUH0y26tolz52DCaXecKSaI/mdtEQ9FHcQbV3op36Lt2ok8FrIdqnGQ9Lw4oZvU1D9EPNYZikar/FHVTRTq3tM6daPwU9K9qouXAU1VGtbYg2aaWhgejr+YdlRtEuDYagTTN9LWcYol0axAqGcUxir+lEP9NKoQuYmCaiXUjRBr31wk5Ax9TFes8y+oHeU90vZcSO00U/1vu2y9ROAI74oh26f39NgNqOmcDL7EQ/1DUrnmqL3D2FaJ/W+z9R3GUcC0g90Q6tY19+CBd7Ee3TSkAFbRt19h6Ktmm5GQYwDnbVcRFt0JqA2fi7/fkERNt1k2MgjrZov9ZIHKfbEW3UCwsbCIeh5oj2aN7q93+C0YDoOdEm/ecjOjo6Ovpb9A8Y3gFACWKr6gAAAABJRU5ErkJggg=="
}
</pre>


<p> 

</p>

<h3>Endpoint v1/qrcode</h3>
Get the QRCode image link
<b>Call:</b>
<pre>curl --request POST \
  --url {{!URL}}v1/qrcode \
  --header 'content-type: application/json' \
  --data '{
"text":"hello World",
"size":"2",
"result_format":"link"
}'
</pre>

<b>result:</b>
<pre>{
  "status": "ok",
  "result": "https://otbm-qrcode.s3.fr-par.scw.cloud/AKZL6UUUDAPEDY8D2Q.png"
}
</pre>


<p> 

</p>

</body>

</html>
