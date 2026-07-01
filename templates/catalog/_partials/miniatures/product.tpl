<article
  class="product-miniature js-product-miniature kv-product-card"
  data-id-product="{$product.id_product}"
  data-id-product-attribute="{$product.id_product_attribute}"
>
  <div class="kv-product-card__inner">

    {if isset($product.flags) && $product.flags|count}
      <ul class="kv-product-card__flags">
        {foreach from=$product.flags item=flag}
          <li class="kv-product-card__flag kv-product-card__flag--{$flag.type}">
            {$flag.label}
          </li>
        {/foreach}
      </ul>
    {/if}

    <div class="kv-product-card__actions">
      {hook h='displayProductListFunctionalButtons' product=$product}
    </div>

    <a class="kv-product-card__image" href="{$product.url}">
      {if isset($product.cover.bySize.home_default.url)}
        <img
          src="{$product.cover.bySize.home_default.url}"
          alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
          loading="lazy"
        >
      {else}
        <img
          src="{$urls.no_picture_image.bySize.home_default.url}"
          alt="{$product.name}"
          loading="lazy"
        >
      {/if}
    </a>

    <div class="kv-product-card__info">
      <h3 class="kv-product-card__title">
        <a href="{$product.url}">
          {$product.name|truncate:70:'...'}
        </a>
      </h3>

      {if $product.show_price}
        <div class="kv-product-card__price">
          {if $product.has_discount}
            <span class="kv-product-card__regular-price">
              {$product.regular_price}
            </span>
          {/if}

          <span class="kv-product-card__current-price">
            {$product.price}
          </span>
        </div>
      {/if}
    </div>

    <a class="kv-product-card__plus" href="{$product.url}" aria-label="View {$product.name}">
      +
    </a>

  </div>
</article>