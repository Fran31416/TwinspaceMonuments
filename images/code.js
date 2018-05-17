function search(){

	// Seleccionamos los elementos que se pueden buscar
	var entries = document.getElementsByClassName("entry");


	// Obtenemos el texto de la caja
	var text = document.getElementById("searchbar").value.toLowerCase();
	
	// A cada elemento le realizamos la siguiente comprobación:
	for(var i=0;i<entries.length;i++){

		var info = entries[i].childNodes[0];

		if(info.textContent.toLowerCase().includes(text)){

			// En caso de que esté, queremos que se muestre (muestra), y que 
			// siga siendo posible buscarlo más adelante (searchable)
			entries[i].setAttribute("class","entry show");

			// Si no está, queremos ocultar el elemento (oculta) pero queremos
			// que se siga pudiendo buscar (searchable)
		} else {
			entries[i].setAttribute("class","entry hide");
		}


	}

}


function selectcountry(){
	var entries = document.getElementsByClassName("entry");
	// Seleccionamos el elemento select
	var options = document.getElementById("option");
	// Creamos la variable numérica que indicará qué elemento eliminar
	var lang = options[0].parentNode.value;

	switch(lang) {

		case "fr":
		var country="France";
		break;
		case "pt":
		var country="Portugal";
		break;
		case "es":
		var country="Spain";
		break;
		case "el":
		var country="Turkey";
		break;
		default:
		var country="";
	}

	for(var i=0;i<entries.length;i++){

		var monumentcountry = entries[i].childNodes[0].childNodes[1].childNodes[0].textContent.toLowerCase();

		if(monumentcountry.includes(country.toLowerCase())){
			// En caso de que esté, queremos que se muestre (muestra), y que 
			// siga siendo posible buscarlo más adelante (searchable)
			entries[i].setAttribute("class","entry show");

			// Si no está, queremos ocultar el elemento (oculta) pero queremos
			// que se siga pudiendo buscar (searchable)
		} else {
			entries[i].setAttribute("class","entry hide");
		}

	}



}
