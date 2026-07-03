{**
 * Custom KickVault-style header
 * Uses displayTop for BO-managed PrestaShop main menu
 * Uses custom safe text icons for search/account/cart
 * Replaces header-top.tpl and header-bottom.tpl includes
 *}

<header class="kv-header" id="kv-header">
  <div class="kv-header__inner">

    {* LOGO / BRAND *}
    <div class="kv-header__brand-wrap">
      <a class="kv-header__brand" href="{$urls.pages.index}">
        {if isset($shop.logo_details.src) && $shop.logo_details.src}
          <img
            src="{$shop.logo_details.src}"
            alt="{$shop.name}"
            width="{$shop.logo_details.width}"
            height="{$shop.logo_details.height}"
          >
        {elseif isset($shop.logo) && $shop.logo}
          <img src="{$shop.logo}" alt="{$shop.name}">
        {else}
          <span class="kv-header__brand-name">{$shop.name}</span>
        {/if}

        <span class="kv-header__tagline">RARE. FRESH. ICONIC.</span>
      </a>
    </div>

    {* MAIN MENU FROM PRESTASHOP BACK OFFICE *}
    <nav class="kv-header__nav" aria-label="{l s='Main navigation' d='Shop.Theme.Global'}">
      {hook h='displayTop'}
    </nav>

   {* CUSTOM HEADER ACTIONS *}
    <div class="kv-header__actions">
          
      <a class="kv-header__action" href="{$urls.pages.search}" aria-label="{l s='Search' d='Shop.Theme.Catalog'}">
        <svg class="kv-header__action-svg" width="24" height="24" viewBox="0 0 24 24" aria-hidden="true">
          <circle cx="10.8" cy="10.8" r="6.2"></circle>
          <path d="M15.4 15.4L20 20"></path>
        </svg>
      </a>
          
      <a class="kv-header__action" href="{$urls.pages.my_account}" aria-label="{l s='Account' d='Shop.Theme.Customeraccount'}">
        <svg class="kv-header__action-svg" width="24" height="24" viewBox="0 0 24 24" aria-hidden="true">
          <circle cx="12" cy="7.5" r="3.6"></circle>
          <path d="M5.5 20c.9-4 3.4-6.2 6.5-6.2S17.6 16 18.5 20"></path>
        </svg>
      </a>
          
      <a class="kv-header__action kv-header__cart" href="{$urls.pages.cart}" aria-label="{l s='Cart' d='Shop.Theme.Checkout'}">
        <svg class="kv-header__action-svg" width="24" height="24" viewBox="0 0 24 24" aria-hidden="true">
          <path d="M3.5 4.5h2.2l2 10.3h9.9l2-7.1H7"></path>
          <circle cx="9.5" cy="19" r="1.4"></circle>
          <circle cx="17.4" cy="19" r="1.4"></circle>
        </svg>
          
        {if isset($cart.products_count) && $cart.products_count > 0}
          <span class="kv-header__cart-count">{$cart.products_count}</span>
        {/if}
      </a>
      
    </div>
  </div>
</header>