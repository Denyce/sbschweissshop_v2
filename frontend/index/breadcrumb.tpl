{* Breadcrumb *}
<div id="breadcrumb">

    <a href="{url controller='index'}">
        HOME
    </a>

{foreach name=breadcrumb from=$sBreadcrumb item=breadcrumb}
    {if $breadcrumb.name}
            <a href="{if $breadcrumb.link}{$breadcrumb.link}{else}#{/if}" title="{$breadcrumb.name}" class="item{$smarty.foreach.breadcrumb.index}">
                {$breadcrumb.name}
            </a>
    {/if}
{/foreach}
</div>