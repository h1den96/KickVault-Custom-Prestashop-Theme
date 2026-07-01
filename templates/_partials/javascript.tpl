{foreach $javascript.external as $js}
  <script type="text/javascript" src="{$js.uri}" {$js.attribute}></script>
{/foreach}

{foreach $javascript.inline as $js}
  <script type="text/javascript">
    {$js.content}
  </script>
{/foreach}

{if isset($vars) && $vars|@count > 0}
  <script type="text/javascript">
    {foreach $vars as $key => $value}
      var {$key} = {$value|json_encode nofilter};
    {/foreach}
  </script>
{/if}