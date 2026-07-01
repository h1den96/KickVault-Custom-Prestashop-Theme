<div class="header-top">
  <div class="header-container header-row">
    
    <div id="shop-logo">
      <a href="{$urls.pages.index}">
        <img src="{$shop.logo_details.src}" alt="{$shop.name}" width="{$shop.logo_details.width}" height="{$shop.logo_details.height}">
      </a>
    </div>

    <div id="main-menu-wrapper">
      {hook h='displayMainMenu'}
    </div>

    <div id="header-actions">
      {hook h='displayTop'}
    </div>

  </div>
</div>