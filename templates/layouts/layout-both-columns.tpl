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

      <section id="wrapper">
        {hook h='displayWrapperTop'}
        
        <div id="left-column">
          {block name='left_column'}
            {hook h='displayLeftColumn'}
          {/block}
        </div>

        <div id="content-wrapper">
          {block name='content'}
            <p>Hello World</p>
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