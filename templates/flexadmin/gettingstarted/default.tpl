<div class="portlet portlet-orange">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Getting Started</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="portlet-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <ul id="myStacked" class="nav nav-pills nav-stacked">
                                            <li class="active"><a href="tabs-accordions.html#account" data-toggle="tab">1: Create Account</a>
                                            </li>
                                            <li class=""><a href="tabs-accordions.html#miners" data-toggle="tab">2: Download A Miner</a>
                                            </li>
                                            <li class=""><a href="tabs-accordions.html#config-miner" data-toggle="tab">3: Configure Miner</a>
                                            </li>
                                            <li class=""><a href="tabs-accordions.html#getpaid" data-toggle="tab">4: Getting Paid</a>
                                            </li>
                                            <li class=""><a href="tabs-accordions.html#advancedminer" data-toggle="tab">5. Advanced Miner Settings</a>
                                            </li>

                                            
                                        </ul>
                                    </div>
                                    <div class="col-sm-9">
                                        <div id="myStackedContent" class="tab-content">
                                            <div class="tab-pane fade active in" id="account">
                                                <p>In order to mine at this pool, you will need to register <a href="{$smarty.server.SCRIPT_NAME}?page=register">here</a>, once you have registered you are free to login and create a <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">worker</a> that will be used by the miner to login</p>
						<p>This pool is currently mining <strong>GrandCoin</strong></p>
                                            </div>
                                            <div class="tab-pane fade" id="miners">
                                                <p>
						{if $GLOBAL.config.algorithm == 'sha256d'}
        <li><em>Intel/ATI/AMD CGMiner Windows:</em> <a href="http://ck.kolivas.org/apps/cgminer/cgminer-4.2.2-windows.zip" target="_blank">Download here</a></li>
        <li><em>Intel/ATI/AMD CGMiner Linux:</em> <a href="http://ck.kolivas.org/apps/cgminer/cgminer-4.2.2.tar.bz2" target="_blank">Download Here</a></li>
	{/if}
	{if $GLOBAL.config.algorithm == 'scrypt'}
	<li><em>Intel/ATI/AMD CGMiner (3.7.2) Windows:</em> <a href="https://mega.co.nz/#!iQhlGIxa!mzKOfLY6TpOfvPvWE6JFlWdRgHEoshzm99f1hd3ZdRw" target="_blank">Download here</a></li>	
	<li><em>Intel/ATI/AMD CGMiner (3.7.2) Linux:</em> <a href="http://ck.kolivas.org/apps/cgminer/3.7/cgminer-3.7.0.tar.bz2" target="_blank">Download Here</a></li>	
	<li><em>NVIDIA Cudaminer:</em><a href="https://bitcointalk.org/index.php?topic=167229.0" target="_blank"> Download here</a></li>
	{/if}
	<li><em>Intel/ATI/AMD BFGMiner Linux/Windows:</em> <a href="http://bfgminer.org" target="_blank">Download here</a></li>
        <li><em>Fabulous Panda Miner Mac OS X:</em> <a href="http://fabulouspanda.co.uk/macminer/" target="_blank">Download here</a></li>
        <li><em>Minerd CPU Miner Mac/Linux/Windows:</em><a href="https://bitcointalk.org/index.php?topic=55038.msg654850#msg654850" target="_blank"> Download here</a>.</li>
						</p>
                                            </div>
                                            <div class="tab-pane fade" id="config-miner">
                                                <p><p>If your using Linux, Then type the following into the console:</p>
      <li>CGMiner</li>
      <pre>./cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>BFGMiner</li>
      <pre>./bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <br />
	  <p> If you want to mine on a <strong> Windows Operating System</strong>, then you'll need to create a batch file to start your miner. </p><p> Simply open notepad and then copy and paste the following:</p>
      <li>CGMiner</li>
      <pre>cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>BFGMiner</li>
      <pre>bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>MinerD</li>
      <pre>minerd -a {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-t 6 -s 4 -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      {if $GLOBAL.config.algorithm == 'scrypt'}
      <li>Cudaminer For NVIDIA Cards</li>
	  <pre>cudaminer -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      {/if}
	  <br />
	  <p> You then need to change "-u Weblogin.Worker -p Worker password" to reflect your own account. Eg, "-u Steve.StevesWorker -p StevesWorkerPassword" then go to "File > Save as" and save the file as "RunMe.bat" in the same folder containing your miners application files. You are now ready to mine, double click on "RunMe.bat" to start mining. If you want, you can create additional workers with usernames and passwords of your choice <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">here</a></p></p>
                                            </div>
                                            <div class="tab-pane fade" id="getpaid">
                                                <p>Downloading the client &amp; block chain: 	Download the {$SITECOINNAME|default:"Litecoin"} client from <a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">here</a>.
          <p>Generate a new address and input it on your account page to receive payments.</p>
                                            </div>
                                            <div class="tab-pane fade" id="advancedminer">
                                                <p><li><a href="https://raw.github.com/ckolivas/cgminer/v3.7.2/SCRYPT-README" target="_blank">Scrypt readme</a></li>
        <li>Don't set <b>intensity</b> too high, I=11 is standard and safest. Higher intensity takes more GPU RAM. Check for <b>hardware errors</b> in CGMiner (HW). HW=0 is good, otherwise lower intensity.</li>
        <li>Set shaders according to the readme (or look at your graphic cards specifications). CGMiner uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="http://litecoin.info/Mining_Hardware_Comparison" target="_blank">here</a>.</li>
        <li>There's also an interesting project which gives you a GUI for CGMiner. Windows only it seems.</li>
        <li>Here's a great <a href="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true" target="_blank">guide</a> how to get up and running with Xubuntu.</li></p>
                                            </div>

                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.portlet-body -->
