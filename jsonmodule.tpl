		<script type="application/ld+json">{$ORGANIZATION_JSON}</script>
{if isset($path)}
		<script type="application/ld+json">{ldelim}"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{foreach from=$path item=path_item name="crumbsloop"}{ldelim}"@type":"ListItem","position":{$smarty.foreach.crumbsloop.iteration},"item":{ldelim}"@id":"{$path_item.url|escape:'html':'UTF-8'}","name":"{$path_item.name|escape:'html':'UTF-8'}"{rdelim}{rdelim}{if !$smarty.foreach.crumbsloop.last},{/if}{/foreach}]{rdelim}</script>
{/if}
{if isset($isproduct)}
		<script type="application/ld+json">{$PRODUCT_JSON}</script>
{/if}