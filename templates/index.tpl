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
                  
              <a class="kv-category-card" href="{$urls.base_url}10-lifestyle">
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
                  
              <a class="kv-category-card" href="{$urls.base_url}11-running">
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
                  
              <a class="kv-category-card" href="{$urls.base_url}12-training">
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

          {* REASSURANCE BANNER *}
          <section class="kv-reassurance">
            <div class="kv-reassurance__item">
              <div class="kv-reassurance__icon" aria-hidden="true">
                 <img src="{$urls.theme_assets}img/authentic.svg" alt="authentic">
              </div>
              <div class="kv-reassurance__content">
                <h3>100% AUTHENTIC</h3>
                <p>Every pair is verified legit.</p>
              </div>
            </div>

            <div class="kv-reassurance__item">
              <div class="kv-reassurance__icon" aria-hidden="true">
                 <img src="{$urls.theme_assets}img/shipping.svg" alt="shipping">
              </div>
              <div class="kv-reassurance__content">
                <h3>FAST SHIPPING</h3>
                <p>Quick delivery, right to you.</p>
              </div>
            </div>

            <div class="kv-reassurance__item">
              <div class="kv-reassurance__icon kv-reassurance__icon--crown" aria-hidden="true">
                 <img src="{$urls.theme_assets}img/limited.svg" alt="limited">
              </div>
              <div class="kv-reassurance__content">
                <h3>LIMITED DROPS</h3>
                <p>Exclusive styles. Limited stock.</p>
              </div>
            </div>

            <div class="kv-reassurance__item">
              <div class="kv-reassurance__icon" aria-hidden="true">
                  <img src="{$urls.theme_assets}img/returns.svg" alt="returns">
              </div>
              <div class="kv-reassurance__content">
                <h3>EASY RETURNS</h3>
                <p>14-day hassle-free returns.</p>
              </div>
            </div>
          </section>

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