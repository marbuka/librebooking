{include file='globalheader.tpl' Qtip=true Owl=true}

<div class="accordion" id="page-dashboard">
	<div id="dashboardList">
		{foreach from=$items item=dashboardItem}
			<div>{$dashboardItem->PageLoad()}</div>
		{/foreach}
	</div>

	{include file="javascript-includes.tpl" Qtip=true Owl=true}

	{jsfile src="dashboard.js"}
	{jsfile src="resourcePopup.js"}
	{jsfile src="ajax-helpers.js"}

	<script type="text/javascript">
		$(document).ready(function() {

			var dashboardOpts = {
				reservationUrl: "{Pages::RESERVATION}?{QueryStringKeys::REFERENCE_NUMBER}=",
				summaryPopupUrl: "ajax/respopup.php",
				scriptUrl: '{$ScriptUrl}'
			};

			var dashboard = new Dashboard(dashboardOpts);
			dashboard.init();
		});
	</script>
</div>

<div id="wait-box" class="wait-box">
	<div id="creatingNotification">
		{include file='wait-box.tpl'}
	</div>
	<div id="result"></div>
</div>

{include file='globalfooter.tpl'}