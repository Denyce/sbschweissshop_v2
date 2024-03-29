{**
 * Shopware 3.5 Template
 *
 * @category   Shopware
 * @package    Shopware_Template
 * @subpackage Shopware_Template_Frontend
 * @copyright  Copyright (c) 2010 shopware AG (http://www.shopware.de)
 * @author     hl/shopware AG
 * @author     stp/shopware AG
 *}
{block name="frontend_index_start"}{/block}
<?xml version="1.0" ?>
{block name="frontend_index_doctype"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{/block}
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de">
{block name='frontend_index_header'}
{include file='frontend/index/header.tpl'}
{/block}
<body {if $Controller}class="ctl_{$Controller}"{/if}>

{* Message if javascript is disabled *}
{block name="frontend_index_no_script_message"}
<noscript>
    <div class="notice bold center noscript_notice">
        {s name="IndexNoscriptNotice"}Um {$sShopname} in vollen Umfang nutzen zu k&ouml;nnen, empfehlen wir Ihnen Javascript in Ihren Browser zu aktiveren.{/s}
    </div>
</noscript>
{/block}

<div id="top">
    <a href="{url controller='account'}" title="Login" class="account">Login</a>

    {foreach from=$sMenu.oben item=topMenu name=oben}
        {if $smarty.foreach.oben.first}<span>|</span>{/if}
            <a href="{if $topMenu.link}{$topMenu.link}{else}{url controller='custom' sCustom=$topMenu.id title=$topMenu.description}{/if}" title="{$topMenu.description}" {if $sCustomPage.id == $topMenu.id || $sCustomPage.parentID == $topMenu.id} class="active"{/if}>
                <span>{$topMenu.description}</span>
            </a>
        {if !$smarty.foreach.oben.last}<span>|</span>{/if}
    {/foreach}

</div>
<div class="container_20">
{* Shop header *}
{block name='frontend_index_navigation'}
    <div id="header">

    {* Language and Currency bar *}
        {block name='frontend_index_actions'}
        {include file='frontend/index/actions.tpl'}
        {/block}

    {* Shop logo *}
        {block name='frontend_index_logo'}
            <div id="logo" class="grid_5">
                <a href="{url controller='index'}" title="{$sShopname} - {s name='IndexLinkDefault'}{/s}">{$sShopname}</a>
            </div>
        {/block}

    {* Shop navigation *}
        {block name='frontend_index_checkout_actions'}
        {include file='frontend/index/checkout_actions.tpl'}
        {/block}

    {* Search *}
        {block name='frontend_index_search'}
        {include file="frontend/index/search.tpl"}
        {/block}

        {block name='frontend_index_navigation_inline'}{/block}
    </div>
{/block}

{* Maincategories navigation top *}
{block name='frontend_index_navigation_categories_top'}
{include file='frontend/index/categories_top.tpl'}
{/block}

{* Breadcrumb *}
{block name='frontend_index_breadcrumb'}
{include file='frontend/index/breadcrumb.tpl'}
{/block}

{* Content section *}
    <div id="content">
        <div class="inner">

        {* Content top container *}
        {block name="frontend_index_content_top"}{/block}

        {* Sidebar left *}
        {block name='frontend_index_content_left'}{/block}

        {* Main content *}
        {block name='frontend_index_content'}{/block}

        {* Sidebar right *}
        {block name='frontend_index_content_right'}{/block}

            <div class="clear">&nbsp;</div>
        </div>
    </div>
{* Footer *}
{block name="frontend_index_footer"}
{include file='frontend/index/footer.tpl'}
{/block}
</div>
{block name="frontend_index_shopware_footer"}
<div class="shopware_footer">
    {s name="IndexRealizedWith"}Realisiert mit{/s} <a href="http://www.shopware.de" target="_blank" title="{s name='IndexRealizedShopsystem'}Shopware{/s}">{s name="IndexRealizedShopsystem"}Shopware{/s}</a>
</div>
{/block}
{block name='frontend_index_body_inline'}{/block}
</body>
</html>