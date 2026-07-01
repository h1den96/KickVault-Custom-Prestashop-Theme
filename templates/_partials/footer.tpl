<div class="footer-container">

  <div class="footer-before">
    {hook h='displayFooterBefore'}
  </div>

  <div class="footer-main">
    <div class="footer-row">
      {hook h='displayFooter'}
    </div>
  </div>

  <div class="footer-after">
    <div class="footer-row footer-bottom-bar">
      <p class="copyright">
        &copy; {"Y"|date} Nexora Store. All rights reserved.
      </p>

      <div class="footer-payment-icons">
        {hook h='displayFooterAfter'}
      </div>
    </div>
  </div>

</div>