$(function(){
	var networks = undefined;

	function showHideEnterpriseSettings() {
		var security = $(this).find(':selected').attr('data-security');
		if(security === 'enterprise') {
			$('#identity-group').show();
		} else {
			$('#identity-group').hide();
		}
	}

	function showNetworkError(message) {
		$('.before-submit').hide();
		$('#no-networks-message h3').text('Unable to load Wi-Fi networks');
		$('#no-networks-message p').text(message);
		$('#no-networks-message').removeClass('hidden');
	}

	$('#ssid-select').change(showHideEnterpriseSettings);

	$.get("networks", function(data){
		if(data.length === 0){
			$('.before-submit').hide();
			$('#no-networks-message').removeClass('hidden');
		} else {
			try {
				networks = JSON.parse(data);
			} catch (error) {
				showNetworkError('The device returned an invalid network list. Please reboot the device and try again.');
				return;
			}

			if(!Array.isArray(networks)) {
				showNetworkError('The device returned an invalid network list. Please reboot the device and try again.');
				return;
			}

			$.each(networks, function(i, val){
				$('#ssid-select').append(
					$('<option>')
						.text(val.ssid)
						.attr('value', val.ssid)
						.attr('data-security', val.security)
				);
			});

			jQuery.proxy(showHideEnterpriseSettings, $('#ssid-select'))();
		}
	}).fail(function(){
		showNetworkError('The device could not provide a network list. Please reboot the device and try again.');
	});

	$('#connect-form').submit(function(ev){
		$.post('connect', $('#connect-form').serialize(), function(data){
			$('.before-submit').hide();
			$('#submit-message').removeClass('hidden');
		}).fail(function(){
			$('#submit-message h3').text('Unable to apply changes');
			$('#submit-message p').text('The Wi-Fi settings could not be applied. Please return to the form and try again.');
			$('.before-submit').show();
			$('#submit-message').removeClass('hidden');
		});
		ev.preventDefault();
	});
});
