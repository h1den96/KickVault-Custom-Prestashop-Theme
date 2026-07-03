{**
 * Custom KickVault-style footer
 * Structured footer with separated top box and bottom copyright
 * Theme controlled layout
 *}

<footer id="footer" class="kv-footer">

  <div class="kv-footer__box">

    <div class="kv-footer__top">

      {* Brand column *}
      <div class="kv-footer__brand">
        <h3>KICKVAULT</h3>

        <p>
          Your destination for authentic sneakers, limited drops,
          and iconic style. Step into next.
        </p>

        <div class="kv-footer__socials">
          <a href="#" aria-label="Instagram">
            <svg viewBox="0 0 24 24" aria-hidden="true">
              <rect x="4" y="4" width="16" height="16" rx="4"></rect>
              <circle cx="12" cy="12" r="4"></circle>
              <circle cx="17" cy="7" r="1"></circle>
            </svg>
          </a>

          <a href="#" aria-label="TikTok">
            <svg viewBox="0 0 24 24" aria-hidden="true">
              <path d="M14 4v10.5a4.5 4.5 0 1 1-4.5-4.5"></path>
              <path d="M14 4c1 3 3 5 6 5"></path>
            </svg>
          </a>

          <a href="#" aria-label="YouTube">
            <svg viewBox="0 0 24 24" aria-hidden="true">
              <rect x="3.5" y="6.5" width="17" height="11" rx="3"></rect>
              <path d="M10.5 9.5l4.5 2.5-4.5 2.5z"></path>
            </svg>
          </a>

          <a href="#" aria-label="X">
            <svg viewBox="0 0 24 24" aria-hidden="true">
              <path d="M5 5l14 14"></path>
              <path d="M19 5L5 19"></path>
            </svg>
          </a>
        </div>
      </div>

      {* Shop links *}
      <div class="kv-footer__column">
        <h3>SHOP</h3>

        <ul>
          <li><a href="{$urls.pages.new_products}">New Arrivals</a></li>
          <li><a href="{$urls.base_url}10-lifestyle">Lifestyle</a></li>
          <li><a href="{$urls.base_url}11-running">Running</a></li>
          <li><a href="{$urls.base_url}12-training">Training</a></li>
          <li><a href="{$urls.base_url}14-limited-drops">Limited Drops</a></li>
          <li><a href="{$urls.pages.prices_drop}">Sale</a></li>
        </ul>
      </div>

      {* Help links *}
      <div class="kv-footer__column">
        <h3>HELP</h3>

        <ul>
          <li><a href="{$urls.pages.contact}">Contact Us</a></li>
          <li><a href="#">FAQ</a></li>
          <li><a href="#">Shipping &amp; Delivery</a></li>
          <li><a href="#">Returns &amp; Exchanges</a></li>
          <li><a href="#">Size Guide</a></li>
        </ul>
      </div>

      {* Newsletter *}
      <div class="kv-footer__newsletter">
        <h3>STAY IN THE LOOP</h3>

        <p>
          Join the Krew. Get early access to drops,
          exclusive offers, and more.
        </p>

        <form class="kv-footer__newsletter-form" action="#" method="post">
          <input
            type="email"
            name="email"
            placeholder="Enter your email"
            aria-label="Email"
          >
          <button type="submit" aria-label="Subscribe">→</button>
        </form>
      </div>

    </div>

  </div>

  <div class="kv-footer__bottom">
    <p>© 2026 KICKVAULT. All rights reserved.</p>
  </div>

</footer>