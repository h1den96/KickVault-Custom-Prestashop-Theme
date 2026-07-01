{**
 * KickVault Featured Drops section
 * Override for ps_featuredproducts
 *}

{if isset($products) && $products|@count > 0}
  <section class="kv-featured-drops featured-products">
    <div class="kv-featured-drops__header">
      <h2 class="products-section-title">
        FEATURED DROPS
      </h2>

      {if isset($allProductsLink)}
        <a class="kv-featured-drops__view-all" href="{$allProductsLink}">
          VIEW ALL <span>→</span>
        </a>
      {/if}
    </div>

    <div class="products kv-featured-drops__grid">
      {foreach from=$products item=product}
        {include file='catalog/_partials/miniatures/product.tpl' product=$product}
      {/foreach}
    </div>
  </section>
{/if}