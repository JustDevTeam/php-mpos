{include file="global/block_header.tpl" BLOCK_HEADER="Join our pool" BLOCK_STYLE="clear:none;"}
<form action="{$smarty.server.PHP_SELF}" method="post">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="register">
  <table width="90%" border="0">
    <tbody><tr><td>Username:</td><td><input type="text" class="text tiny" name="username" value="{$smarty.post.username|escape}" size="15" maxlength="20"></td></tr>
    <tr><td>Password:</td><td><input type="password" class="text tiny" name="password1" value="" size="15" maxlength="20"></td></tr>
    <tr><td>Repeat Password:</td><td><input type="password" class="text tiny" name="password2" value="" size="15" maxlength="20"></td></tr>
    <tr><td>Email:</td><td><input type="text" name="email1" class="text small" value="{$smarty.post.email1|escape}" size="15"><font size="1"> (Optional) </font></td></tr>
    <tr><td>Email Repeat:</td><td><input type="text" class="text small" name="email2" value="{$smarty.post.email2|escape}" size="15"><font size="1"> (Optional) </font></td></tr>
    <tr><td>PIN:</td><td><input type="password" class="text pin" name="pin" value="" size="4" maxlength="4"><font size="1"> (4 digit number. <b>Remember this pin!</b>)</font></td></tr>
  </tbody></table>
  <input type="submit" class="submit small" value="Register">
</form>
{include file="global/block_footer.tpl"}