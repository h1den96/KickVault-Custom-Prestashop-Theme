{extends file='layouts/layout-both-columns.tpl'}

{block name='left_column'}{/block}
{block name='right_column'}{/block}

{block name='content'}
  <div id="main">
    {block name='page_content_wrapper'}
      {block name='page_content'}
        {/block}
    {/block}
  </div>
{/block}

{block name='javascript_bottom'}
  {include file="_partials/javascript.tpl"}
{/block}