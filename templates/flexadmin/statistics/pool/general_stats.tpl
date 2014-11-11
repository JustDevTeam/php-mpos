<div class="portlet portlet-red">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>General Pool Statistics</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <div class="btn-group btn-group-xs" data-toggle="buttons">
                                     </div>
                                    <span class="divider"></span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div style="height: auto;" id="bluePortlet" class="panel-collapse in">
                                <div class="portlet-body">

                                    <p>        <table class="table-responsive">
          <tbody>
            <tr>
              <th width="50%">Pool Hash Rate</th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.hashrate|number_format:"3"}</span> {$GLOBAL.hashunits.pool}</td>
            </tr>
            <tr>
              <th>Pool Efficiency</th>
              <td>{if $GLOBAL.roundshares.valid > 0}{($GLOBAL.roundshares.valid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%{else}0%{/if}</td>
            </tr>
            <tr>
              <th>Current Active Workers</th>
              <td id="b-workers">{$GLOBAL.workers|number_format}</td>
            </tr>
            <tr>
              <th>Current Difficulty</th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new"><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></a></td>
              {else}
              <td><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></td>
              {/if}
            </tr>
            <tr>
              <th>Est. Next Difficulty</th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new">{$NETWORK.EstNextDifficulty|number_format:"8"} (Change in {$NETWORK.BlocksUntilDiffChange} Blocks)</a></td>
              {else}
              <td>{$NETWORK.EstNextDifficulty|number_format:"8"} (Change in {$NETWORK.BlocksUntilDiffChange} Blocks)</td>
              {/if}
            </tr>
            <tr>
              <th>Est. Avg. Time per Round (Network)</th>
              <td>{$NETWORK.EstTimePerBlock|seconds_to_words}</td>
            </tr>
            <tr>
              <th>Est. Avg. Time per Round (Pool)</th>
              <td>{$ESTTIME|seconds_to_words}</td>
            </tr>
            <tr>
              <th>Est. Shares this Round</th>
              <td id="b-target">{$ESTIMATES.shares|number_format} (done: {$ESTIMATES.percent}%)</td>
            </tr>
            {if ! $GLOBAL.website.blockexplorer.disabled}
            <tr>
              <th width="50%">Next Network Block</th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (Current: <a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCKHASH}" target="_new">{$CURRENTBLOCK|number_format})</a></td>
            </tr>
            {else}
            <tr>
              <th>Next Network Block</th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (Current: {$CURRENTBLOCK|number_format})</td>
            </tr>
            {/if}
            <tr>
              <th>Last Block Found</th>
              <td colspan="3"><a href="{$smarty.server.SCRIPT_NAME}?page=statistics&action=round&height={$LASTBLOCK}" target="_new">{$LASTBLOCK|default:"0"|number_format}</a></td>
            </tr>
            <tr>
              <th>Time Since Last Block</th>
              <td colspan="3">{$TIMESINCELAST|seconds_to_words}</td>
            </tr>
          </tbody>
        </table>
</p>
                                </div>
                            </div>
                        </div>

 