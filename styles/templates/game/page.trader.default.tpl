{block name="title" prepend}{$LNG.lm_trader}{/block}
{block name="content"}
<div id="page">
   <div id="content">
      <div id="ally_content" class="conteiner">
         <div class="gray_stripe">
            {$LNG.tr_call_trader}             
         </div>
         <table class="tablesorter ally_ranks">
            <tr>
               <td>
                  <div>{$LNG.tr_call_trader_who_buys}</div>
                  <div id="trader" style="width:335px">
                     {foreach $charge as $resourceID => $chageData}
                     <div class="trader_col">
                        {if !$requiredDarkMatter}
                        <form action="game.php?page=trader" method="post">
                           <input type="hidden" name="mode" value="trade">
                           <input type="hidden" name="resource" value="{$resourceID}">
                           <input type="image" id="trader_metal" src="{$dpath}img/resources/{$resource.$resourceID}.gif" title="{$LNG.tech.$resourceID}" border="0" height="32" width="52"><br>
                           <label for="trader_metal">{$LNG.tech.$resourceID}</label>
                        </form>
                        {else}<img src="{$dpath}img/resources/{$resource.$resourceID}.gif" title="{$LNG.tech.$resourceID}" border="0" height="32" width="52" style="margin: 3px;"><br>{$LNG.tech.$resourceID}{/if}
                     </div>
                     {/foreach}
                  </div>
                  <div style="padding-bottom:10px;">
                     <p>{$LNG.tr_exchange_quota}: {$charge.901.903}/{$charge.902.903}/{$charge.903.903}</p>
                     <div class="clear"></div>
                  </div>
                  <div class="clear"></div>
      </div>
      <div style="padding-bottom:10px;">
      <p>{$tr_cost_dm_trader}</p>
      </div>
      </td>
      </tr>
      </table>
   </div>
</div>
</div>
<div class="clear"></div>
</div>
{/block}