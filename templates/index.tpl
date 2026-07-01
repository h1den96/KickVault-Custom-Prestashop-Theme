<!doctype html>
<html lang="{$language.iso_code}">
  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body>
    {hook h='displayAfterBodyOpeningTag'}

    <main>
      <header id="header">
        {block name='header'}
          {include file='_partials/header.tpl'}
        {/block}
      </header>

      {* Homepage hero / homepage modules - full width, outside wrapper *}
      {if $page.page_name == 'index'}
        {block name='page_home_modules'}
          {hook h='displayHome'}
        {/block}
      {/if}

      <section id="wrapper">
        {hook h='displayWrapperTop'}

        <div id="left-column">
          {block name='left_column'}
            {hook h='displayLeftColumn'}
          {/block}
        </div>

        <div id="content-wrapper">
          {block name='content'}
            {block name='page_content'}
              <section id="content" class="page-home">
                {* Keep this empty for now, because displayHome is rendered full-width above *}
              </section>
            {/block}
          {/block}
        </div>

        <div id="right-column">
          {block name='right_column'}
            {hook h='displayRightColumn'}
          {/block}
        </div>

        {hook h='displayWrapperBottom'}
      </section>

      <footer id="footer">
        {block name='footer'}
          {include file='_partials/footer.tpl'}
        {/block}
      </footer>
    </main>

    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl"}
    {/block}

    {hook h='displayBeforeBodyClosingTag'}
  </body>
</html>