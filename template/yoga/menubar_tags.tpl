<dt>{'Related tags'|@translate}</dt>
<dd>
	<div id="menuTagCloud">
		{foreach from=$block->data item=tag}
		<span>
			{if !empty($tag.U_ADD) }
			<a href="{$tag.U_ADD}"
				title="{$pwg->l10n_dec('%d element are also linked to current tags', '%d elements are also linked to current tags', $tag.counter)}"
				rel="nofollow">
				<img src="{$ROOT_URL}{$themeconf.icon_dir}/add_tag.png" alt="+">
			</a>
			{/if}
			<a href="{$tag.URL}" class="tagLevel{$tag.level}" title="{'See elements linked to this tag only'|@translate}">{$tag.name}</a>
		</span>
		{/foreach}
	</div>
</dd>

