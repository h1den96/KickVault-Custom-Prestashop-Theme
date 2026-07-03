{extends file='catalog/listing/product-list.tpl'}

{block name='product_list_header'}
  <section class="kv-category-hero">
    <div class="kv-category-hero__inner">
      <div class="kv-breadcrumb">
        <a href="{$urls.base_url}">Home</a> / {$category.name}
      </div>

      <div class="kv-category-hero__label">
        EVERYDAY KICKS. ICONIC STYLE.
      </div>

      <span class="kv-category-hero__line"></span>

      <h1 class="kv-category-hero__title">
        {$category.name}
      </h1>

      <p class="kv-category-hero__subtitle">
        Fresh sneakers built for daily rotation.
      </p>
    </div>
  </section>
{/block}