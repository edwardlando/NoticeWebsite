$(document).ready(function() {

	// alert("hello");
	$("#phoneNumberInput").keypress(function(e) {
		if (e.keyCode < 48 || e.keyCode > 57) {
			console.log("NaN");
			e.preventDefault();
		}

		if ($(this).val().length == 0) {
			$(this).val("+1 (");	
		}
		
		var enteredChar = String.fromCharCode(e.keyCode);

		// console.log(e.keyCode);
		if (typeof enteredChar == "number") {

		}
		
	});

	$("#phoneNumberInput").keyup(function(e) {
		
		// backspace

		if (e.keyCode == 8) {
			console.log("backspace");
			if($(this).val() == "+1 (") {
				$(this).val("");
			}
		}
	});
});