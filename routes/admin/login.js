var express = require('express');
var router = express.Router();
var usuariosModel = require('./../../models/usuariosModel');


//Layout SIN boton de login
router.get('/', function (req, res, next) {
    res.render('admin/login', {
        layout: 'admin/layout off'
    });
});

router.post('/', async (req, res, next) => {
    try {
        var usuario = req.body.usuario;
        var password = req.body.password;

        console.log(req.body);

        var data = await usuariosModel.getUserAndPassword(usuario, password);

        if (data != undefined) {
            req.session.id_usuario = data.id;
            req.session.nombre = data.usuario;
            res.redirect('/admin/novedades');
        } else {
            res.render('admin/login', {
                layout: 'admin/layout off',
                error: true
            })
        } //CLOSING ELSE
    } catch (error) {
        console.log(error)
    }
});

//Layout SIN boton de login AFTER LOGOUT
router.get('/logout', function (req, res, next) {
    req.session.destroy();
    res.render('admin/login', {
        layout: 'admin/layout off'
    });
});

module.exports = router;