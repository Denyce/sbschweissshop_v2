{*
{function name=categories_top level=0}
<ul class="{if !$level}dropdown{else}droplevel{/if} droplevel{$level}">
    {foreach from=$categories item=category}
        <li class="{if !empty($category.flag)}active{/if}{if $category.sub} sub{/if}">
            <a href="{$category.link}" class="{if !empty($category.flag)} active{/if}">{$category.name}</a>
            {if $category.sub}
                {call name=categories_top categories=$category.sub level=$level+1}
            {/if}
        </li>
    {/foreach}
</ul>
{/function}

<div id="mainNavigation" class="grid_20">
    <ul>
    {foreach from=$sAdvancedMenu item=sCategory}
        <li class="{if !empty($sCategory.flag)}active{/if}{if $sCategory.sub} dropactive{/if}">
            <a href="{$sCategory.link}" title="{$sCategory.description}" {if !empty($sCategory.flag)} class="active"{/if}>
                {$sCategory.description}
            </a>
            {if $sCategory.sub}
                {call name=categories_top categories=$sCategory.sub}
            {/if}
        </li>
    {/foreach}
    </ul>
</div>
*}




{function name=categories_top level=0}
<div class="dropdown_1columns dropdown_fullwidth">
<div class="col_1">
<ul>
    {foreach from=$categories item=category name=categories_top_foreach}
        <li style="background-color: #79acdf; cursor:pointer;" onclick="window.location = '{$category.link}';">
            <a style="color: #ffffff; font-weight: bold" href="{$category.link}" title="{$category.name}">{$category.name}</a></li>
        {assign var="counter" value=$counter+1}

        {if $counter % $lines  == iteration / $lines}</ul></div><div class="col_1"><ul>{/if}

        {if $category.sub}

            {foreach from=$category.sub item=category2 name=categories_top2_foreach}
                <li style="cursor:pointer;" onclick="window.location = '{$category2.link}';">

                    {if strpos({$category2.name},"berater")===false}
                    <a style="font-weight: bold; text-shadow: none !important;" title="{$category2.ac_attr3}" href="{$category2.link}">{$category2.name}
                        {else}
                    <a style="color: #000000; font-weight: bold;" title="{$category2.ac_attr3}" href="{$category2.link}">{$category2.name}
                    {/if}

                    {assign var="counter" value=$counter+1}
                </a>
                </li>

                {if $counter % $lines  == iteration / $lines}</ul></div><div class="col_1"><ul>{/if}

                {if $category2.sub}

                    {foreach from=$category2.sub item=category3 name=categories_top3_foreach}

                        <li class="level3" style="cursor:pointer;" onclick="window.location = '{$category3.link}';">

                            {if strpos({$category3.name},"berater")===false}
                            <a style="margin-left: 8px; padding-left: 8px; text-shadow: none !important; background-image: url(/templates/sbschweissshop/frontend/_resources/images/bg_arrow-small_right.gif);background-position: 0 4px;background-repeat: no-repeat;" title="{$category3.ac_attr3}" href="{$category3.link}">{$category3.name}
                                {else}
                            <a style="font-weight: bold; color: #000000; padding-left: 8px; text-shadow: none !important; background-image: url(/templates/sbschweissshop/frontend/_resources/images/bg_arrow-small_right.gif);background-position: 0 4px;background-repeat: no-repeat;" title="{$category3.ac_attr3}" href="{$category3.link}">{$category3.name}
                            {/if}
                            {assign var="counter" value=$counter+1}

                        </a>
                        </li>

                        {if $counter % $lines  == iteration / $lines}</ul></div><div class="col_1"><ul>{/if}

                    {/foreach}
                {/if}


            {/foreach}

        {/if}

    {/foreach}
</ul>
</div>
    <div class="clear"></div>


{/function}


    <div class="wrapper_menu menu_light_theme grid_20">
        <ul class="menu">

            <li class="nodrop{if $Controller == 'index'} active{/if}">
                <a href="{url controller='index'}" title="{s name='IndexLinkHome'}Home{/s}" class="first{if $Controller == 'index'} active{/if}"> </a>
            </li>

        {foreach from=$sAdvancedMenu item=sCategory}

            {if $sCategory.ac_attr2}
                {assign var="lines" value=$sCategory.ac_attr2}
                {else}
                {assign var="lines" value=10}
            {/if}

            <li class="fullwidth">
                <a href="{$sCategory.link}" title="" class="drop heading cat{$sCategory.id} {if $sCategory.id == $sCategoryCurrent}active{/if}">
                    {$sCategory.description}
                </a>
                {if $sCategory.sub}
                    {assign var="counter" value=0}
                    {call name=categories_top categories=$sCategory.sub}
                {/if}
            </li>
        {/foreach}

        </ul>
    </div>
