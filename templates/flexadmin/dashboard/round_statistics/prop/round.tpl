      <div class="panel-footer">
        <div class="row">
     <div class="col-lg-3 col-sm-6">
            <div class="circle-tile">
              <div class="circle-tile-heading dark-blue">
                <i class="fa fa-male fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content dark-blue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-nblock">{$NETWORK.block}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Current Block</p>
                </div>
              </div>
            </div>
          </div>
     <div class="col-lg-3 col-sm-6">
            <div class="circle-tile">
              <div class="circle-tile-heading blue">
                <i class="fa fa-male fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content blue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-roundprogress">{$ESTIMATES.percent|number_format:"2"}%</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Of Expected Shares</p>
                </div>
              </div>
            </div>
          </div>
     <div class="col-lg-3 col-sm-6">
            <div class="circle-tile">
              <div class="circle-tile-heading purple">
                <i class="fa fa-male fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content purple">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-payout">{$GLOBAL.userdata.estimates.payout|number_format:$PRECISION}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{$GLOBAL.config.currency} Est. Earnings</p>
                </div>
              </div>
            </div>
          </div>
     <div class="col-lg-3 col-sm-6">
            <div class="circle-tile">
              <div class="circle-tile-heading orange">
                <i class="fa fa-male fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content orange">
                <div class="circle-tile-description text-faded">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-diff">{$NETWORK.difficulty|number_format:"8"}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Difficulty</p>
                </div>
              </div>
            </div>
          </div>
  
