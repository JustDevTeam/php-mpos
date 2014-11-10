<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Flex Admin - Responsive Admin Theme</title>

    <!-- PACE LOAD BAR PLUGIN - This creates the subtle load bar effect at the top of the page. -->
    <link href="{$PATH}/css/plugins/pace/pace.css" rel="stylesheet">
    <script src="{$PATH}/js/plugins/pace/pace.js"></script>

    <!-- GLOBAL STYLES - Include these on every page. -->
    <link href="{$PATH}/css/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700,300italic,400italic,500italic,700italic' rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel="stylesheet" type="text/css">
    <link href="{$PATH}/icons/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="{$PATH}/css/plugins/messenger/messenger.css" rel="stylesheet">
    <link href="{$PATH}/css/plugins/messenger/messenger-theme-flat.css" rel="stylesheet">
    <link href="{$PATH}/css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">
    <link href="{$PATH}/css/plugins/morris/morris.css" rel="stylesheet">
    <link href="{$PATH}/css/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <link href="{$PATH}/css/plugins/datatables/datatables.css" rel="stylesheet">

    <!-- THEME STYLES - Include these on every page. -->
    <link href="{$PATH}/css/style.css" rel="stylesheet">
    <link href="{$PATH}/css/plugins.css" rel="stylesheet">

    <!-- THEME DEMO STYLES - Use these styles for reference if needed. Otherwise they can be deleted. -->
    <link href="{$PATH}/css/demo.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="{$PATH}/js/html5shiv.js"></script>
      <script src="{$PATH}/js/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!-- Wrapper Start -->
    <div id="wrapper">

    {include file="global/header.tpl"}
    {include file="global/navigation.tpl"}

    <div id="page-wrapper"><br />
    {nocache}
    {if is_array($smarty.session.POPUP|default)}
      {section popup $smarty.session.POPUP}
      <div class="{if $smarty.session.POPUP[popup].DISMISS|default:"" == "yes"}alert-dismissable {/if} {$smarty.session.POPUP[popup].TYPE|default:"alert alert-info"} {if $smarty.session.POPUP[popup].ID|default:"static" == "static" AND $GLOBAL.website.notificationshide == 1}autohide{/if}" id="{$smarty.session.POPUP[popup].ID|default:"static"}">
        {if $smarty.session.POPUP[popup].DISMISS|default:"no" == "yes"}
        <button id="{$smarty.session.POPUP[popup].ID|default:"static"}" type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {/if}
        {if $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-info"}
        <span class="glyphicon glyphicon-info-sign">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-warning"}
        <span class="glyphicon glyphicon-info-sign">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-danger"}
        <span class="glyphicon glyphicon-remove-circle">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-success"}
        <span class="glyphicon glyphicon-ok-circle">&nbsp;</span>
        {/if}
        {$smarty.session.POPUP[popup].CONTENT nofilter}
      </div>
      {/section}
    {/if}
    {/nocache}
    {if $CONTENT != "empty" && $CONTENT != ""}
      {if file_exists($smarty.current_dir|cat:"/$PAGE/$ACTION/$CONTENT")}
        {include file="$PAGE/$ACTION/$CONTENT"}
      {else}
        Missing template for this page
      {/if}
    {/if}
    </div>
    {include file="global/footer.tpl"}
       <!-- GLOBAL SCRIPTS -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="{$PATH}/js/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="{$PATH}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="{$PATH}/js/plugins/popupoverlay/jquery.popupoverlay.js"></script>
    <script src="{$PATH}/js/plugins/popupoverlay/defaults.js"></script>
    <!-- Logout Notification jQuery -->
    <script src="{$PATH}/js/plugins/popupoverlay/logout.js"></script>
    <!-- HISRC Retina Images -->
    <script src="{$PATH}/js/plugins/hisrc/hisrc.js"></script>

    <!-- PAGE LEVEL PLUGIN SCRIPTS -->
    <!-- HubSpot Messenger -->
    <script src="{$PATH}/js/plugins/messenger/messenger.min.js"></script>
    <script src="{$PATH}/js/plugins/messenger/messenger-theme-flat.js"></script>
    <!-- Date Range Picker -->
    <script src="{$PATH}/js/plugins/daterangepicker/moment.js"></script>
    <script src="{$PATH}/js/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Morris Charts -->
    <script src="{$PATH}/js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="{$PATH}/js/plugins/morris/morris.js"></script>
    <!-- Flot Charts -->
    <script src="{$PATH}/js/plugins/flot/jquery.flot.js"></script>
    <script src="{$PATH}/js/plugins/flot/jquery.flot.resize.js"></script>
    <!-- Sparkline Charts -->
    <script src="{$PATH}/js/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- Moment.js -->
    <script src="{$PATH}/js/plugins/moment/moment.min.js"></script>
    <!-- jQuery Vector Map -->
    <script src="{$PATH}/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="{$PATH}/js/plugins/jvectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
    <script src="{$PATH}/js/demo/map-demo-data.js"></script>
    <!-- Easy Pie Chart -->
    <script src="{$PATH}/js/plugins/easypiechart/jquery.easypiechart.min.js"></script>
    <!-- DataTables -->
    <script src="{$PATH}/js/plugins/datatables/jquery.dataTables.js"></script>
    <script src="{$PATH}/js/plugins/datatables/datatables-bs3.js"></script>

    <!-- THEME SCRIPTS -->
    <script src="{$PATH}/js/flex.js"></script>
    <script src="{$PATH}/js/demo/dashboard-demo.js"></script>

  </body>
</html>







    <!-- /#wrapper -->

 

