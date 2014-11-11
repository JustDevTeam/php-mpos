{if $smarty.session.AUTHENTICATED|default}
<script src="{$PATH}/js/plugins/date.format.js"></script>
<script src="{$PATH}/js/plugins/soundjs-0.5.2.min.js"></script>
<div class="portlet portlet-green">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Overview</h4>
                                </div>
                                <div class="portlet-widgets">

                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="greenPortlet2" class="panel-collapse collapse in">
                                <div class="portlet-body">
        <div class="row">
          <div class="col-lg-12">
          {* Load our payout system so we can load some payout specific templates *}
          {assign var=PAYOUT_SYSTEM value=$GLOBAL.config.payout_system}
          {include file="dashboard/overview/default.tpl"}
          {include file="dashboard/round_statistics/$PAYOUT_SYSTEM/default.tpl"}
          {include file="dashboard/account_data/default.tpl"}
          {if !$DISABLED_API}
          {include file="dashboard/worker_information/default.tpl"}
          {/if}
          {include file="dashboard/blocks/default.tpl"}
          </div>
        </div>
                                </div>
                            </div>
                        </div>


  {if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  {include file="dashboard/js/api.tpl"}
  {else}
  {include file="dashboard/js/static.tpl"}
  {/if}
{/if}
