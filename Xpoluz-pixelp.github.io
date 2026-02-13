<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Camila 💜</title>

<style>
body{
  margin:0;
  overflow:hidden;
  font-family:Arial, sans-serif;
  color:white;
  text-align:center;
  background:linear-gradient(135deg,#2e003e,#4b0082,#6a0dad,#8a2be2);
  background-size:400% 400%;
  animation:fundo 10s infinite alternate;
}

@keyframes fundo{
  from{background-position:0% 50%;}
  to{background-position:100% 50%;}
}

canvas{
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  z-index:-1;
}

h1{
  font-size:50px;
  margin-top:80px;
}

#contador{
  font-size:35px;
  margin-top:20px;
  animation:pulsar 1.5s infinite alternate;
}

@keyframes pulsar{
  from{transform:scale(1);}
  to{transform:scale(1.1);}
}

button{
  padding:15px 30px;
  font-size:18px;
  border:none;
  border-radius:20px;
  background:#a855f7;
  color:white;
  cursor:pointer;
  margin-top:30px;
}

button:hover{
  background:#9333ea;
}

#final{
  display:none;
  margin-top:80px;
}

#amorGigante{
  font-size:75px;
  font-weight:bold;
  margin-top:20px;
  animation:pulsar 1.5s infinite alternate;
  text-shadow:0 0 20px violet, 0 0 40px purple, 0 0 60px #a855f7;
}
</style>
</head>

<body>

<canvas id="estrelas"></canvas>

<h1>Camila 💜</h1>
<p>Amanhã fazemos 1 mês juntos...</p>

<div id="contador"></div>

<button onclick="mostrarMensagem()">Abrir mensagem 💖</button>

<div id="final">
  <div id="amorGigante">FELIZ 1 MÊS 💜✨</div>
  <p>
    Você foi a melhor coisa que eu conheci na minha vida.  
    Esse primeiro mês com você foi incrível.  
    Eu te amo muito mais do que consigo explicar.
  </p>
</div>

<script>
/* ESTRELAS */
const canvas = document.getElementById("estrelas");
const ctx = canvas.getContext("2d");

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

let estrelas = [];

for(let i=0;i<150;i++){
  estrelas.push({
    x:Math.random()*canvas.width,
    y:Math.random()*canvas.height,
    r:Math.random()*2,
    v:Math.random()*0.5
  });
}

function animar(){
  ctx.clearRect(0,0,canvas.width,canvas.height);
  ctx.fillStyle="white";
  estrelas.forEach(e=>{
    ctx.beginPath();
    ctx.arc(e.x,e.y,e.r,0,Math.PI*2);
    ctx.fill();
    e.y+=e.v;
    if(e.y>canvas.height){
      e.y=0;
      e.x=Math.random()*canvas.width;
    }
  });
  requestAnimationFrame(animar);
}
animar();

/* CONTAGEM REGRESSIVA PARA AMANHÃ */
const contador
