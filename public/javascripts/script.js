

/////////NOTIFICACION DE CARGA DE LOS ELEMENTOS//// Este evento está añadido para poder intervenirlo cuando se necesite////////////
window.addEventListener("load", function (event) {
  console.log("Todos los recursos terminaron de cargar");
});


//////// Mostrar boton////////

onscroll = () => {
  if (document.getElementById("show").style.visibility === 'hidden') {
    document.getElementById("show").style.cssText = "visibility : visible; position:sticky;margin-left : 90% ";
  } else {
    document.getElementById("show").style.visibility = 'hidden'
  }

} 


/*  ESCONDER / MOSTRAR FOOTER

onscroll = () => {
  if (document.getElementById("footer").style.visibility === 'hidden') {
    document.getElementById("footer").style.cssText = "visibility : visible; margin-left : 60% ; width : 40%;position:sticky ";
  } else {
    document.getElementById("footer").style.visibility = 'hidden'
  }

} */

//////ESCUCHAR SI EL USER SIGUE HACIENDO SCROLL// Este evento está añadido para poder intervenirlo cuando se necesite////////////
const onScrollStop = callback => {
  let isScrolling;
  window.addEventListener(
    'scroll',
    e => {
      clearTimeout(isScrolling);
      isScrolling = setTimeout(() => {
        callback();
      }, 150);
    },
    false
  );
};

onScrollStop(() => {
  console.log('The user has stopped scrolling');
});


