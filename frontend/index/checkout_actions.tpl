<div id="shopnavi">
    <div class="grid_6 newbasket{if $sBasketQuantity} active{/if}">
    {block name="frontend_index_checkout_actions_cart"}
        <div class="grid_5 first last display">
            <div class="top">
                <a href="{url controller='checkout' action='cart'}" title="{s name='IndexLinkCart'}{/s}" class="uppercase bold">{s name='IndexLinkCart'}{/s}</a>
                <div class="display_basket">
                    <span class="quantity">{$sBasketQuantity} {s name='IndexInfoArticles'}{/s}</span>
                    <span class="sep">|</span>
                    <span class="amount">{$sBasketAmount|currency}*</span>
                </div>
            </div>

            <div class="ajax_basket_container hide_script">
                <div class="ajax_basket">
                    {s name='IndexActionShowPositions'}{/s}

                {* Ajax loader *}
                    <div class="ajax_loader">&nbsp;</div>
                </div>
            </div>
        </div>
    {/block}
    {block name="frontend_index_checkout_actions_inner"}{/block}
        <div class="clear">&nbsp;</div>
    </div>
</div>