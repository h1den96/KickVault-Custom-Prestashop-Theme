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

      {* Homepage full-width modules *}
      {if $page.page_name == 'index'}
        {block name='page_home_modules'}

          {* HERO SECTION - Custom Text Block module *}
          {hook h='displayHome' mod='ps_customtext'}

          {* CATEGORY TRIO BANNERS *}
          <section class="kv-category-banners">
            <div class="kv-category-banners__grid">

              <a class="kv-category-card" href="/lifestyle">
                <img
                  src="{$urls.theme_assets}img/lifestyle-banner.png"
                  alt="Lifestyle sneakers"
                  loading="lazy"
                >
                <div class="kv-category-card__content">
                  <h2>LIFESTYLE</h2>
                  <p>Everyday kicks.<br>Designed to stand out.</p>
                  <span class="kv-category-card__button">
                    SHOP LIFESTYLE <span>→</span>
                  </span>
                </div>
                <span class="kv-category-card__plus">+</span>
              </a>

              <a class="kv-category-card" href="/running">
                <img
                  src="{$urls.theme_assets}img/running-banner.png"
                  alt="Running sneakers"
                  loading="lazy"
                >
                <div class="kv-category-card__content">
                  <h2>RUNNING</h2>
                  <p>Built for speed.<br>Made for miles.</p>
                  <span class="kv-category-card__button">
                    SHOP RUNNING <span>→</span>
                  </span>
                </div>
                <span class="kv-category-card__plus">+</span>
              </a>

              <a class="kv-category-card" href="/training">
                <img
                  src="{$urls.theme_assets}img/training-banner.png"
                  alt="Training sneakers"
                  loading="lazy"
                >
                <div class="kv-category-card__content">
                  <h2>TRAINING</h2>
                  <p>Power your reps.<br>Push every limit.</p>
                  <span class="kv-category-card__button">
                    SHOP TRAINING <span>→</span>
                  </span>
                </div>
                <span class="kv-category-card__plus">+</span>
              </a>

            </div>
          </section>

          {* FEATURED DROPS - using ps_newproducts for now *}
          {hook h='displayHome' mod='ps_newproducts'}

          {* Temporarily disabled until we style the rest of the homepage *}
          {* {hook h='displayHome' mod='ps_featuredproducts'} *}
          {* {hook h='displayHome' mod='ps_banner'} *}
          {* {hook h='displayHome' mod='ps_bestsellers'} *}
          {* {hook h='displayHome' mod='ps_specials'} *}

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
                {* Homepage content is rendered full-width above *}
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