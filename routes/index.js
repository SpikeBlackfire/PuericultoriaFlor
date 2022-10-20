var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. + Novedades*/


router.get('/', async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades();
  novedades = novedades.splice(0, 5); //primeros 5 del array

  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {

        width: 300,
        crop: 'lfill'
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: '/images/noimage.png'
      }
    }
  });

  res.render('index', {
    novedades
  })
})

router.post('/', async (req, res, next) => {

  //console.log(req.body) Validador de 200
  //var nombre= req.body,nombre; NO SE USA
  var email = req.body.email;

  var mensaje = req.body.mensaje;


  var email = req.body.email;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'florarquerospueri@outlook.com',
    subject: 'CONTACTO WEB',
    html: "Un usuario se contactó a través de la web y solicita información.<br> <br><li> Su correo es: " + email + " </li> <br> El mensaje es :" + "<br>" + "<i>" + mensaje + "</i>"
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });



  var info = await transporter.sendMail(obj);



  res.send('<script>alert("Recibimos tu mensaje! Gracias 😊"); window.location.href = "/"; </script>');

  res.render('/', {

    alert: 'Mensaje enviado correctamente. Gracias!'
  });

  console.log('Message sent: %s', info.messageId);

}); //FIN PETICION POST

module.exports = router;