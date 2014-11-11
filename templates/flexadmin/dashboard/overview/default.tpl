<div class="portlet portlet-red">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Pool Information</h4>
                                </div>
                                <div class="portlet-widgets">
         
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="redPortlet" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <p>The Pool Information shown here is live and real time and shows you nothing but the
                                        <code>vital statistics</code>. The time per block shown is estimated and varys alot with luck, its nothing more than a guide, its not gospel</p>
                                    <p><div class="row">
{* Depending on the price option we need to load a different template so it aligns properly *}
{if $GLOBAL.config.price.enabled}
{include file="dashboard/overview/_with_price_graph.tpl"}
{else}
{include file="dashboard/overview/_without_price_graph.tpl"}
{/if}
</div></p>
                                </div>
                            </div>
                        </div>