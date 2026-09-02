<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Horizon · e‑commerce</title>
  <!-- Font Awesome Icons (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- global reset & typography ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Roboto, system-ui, -apple-system, sans-serif;
    }

    body {
      background: #f8faff;
      color: #1e1e2f;
      line-height: 1.5;
      padding: 1.5rem;
      min-height: 100vh;
      display: flex;
      justify-content: center;
    }

    /* card-like container */
    .shop-container {
      max-width: 1280px;
      width: 100%;
      background: white;
      border-radius: 2rem;
      box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.15);
      padding: 2rem 2rem 2.5rem;
      transition: all 0.2s ease;
    }

    /* ----- header / navbar ----- */
    .header {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 2.5rem;
      padding-bottom: 0.75rem;
      border-bottom: 2px solid #f0f4ff;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: #0b1b3a;
    }

    .logo i {
      color: #2a7de1;
      font-size: 2rem;
    }

    .nav-icons {
      display: flex;
      gap: 1.8rem;
      font-size: 1.3rem;
      color: #3d4a6b;
    }

    .nav-icons i {
      transition: color 0.2s, transform 0.1s;
      cursor: default;
    }

    .nav-icons i:hover {
      color: #1f5fc9;
      transform: scale(1.05);
    }

    .nav-icons .badge {
      position: relative;
    }

    .nav-icons .badge::after {
      content: '3';
      position: absolute;
      top: -10px;
      right: -12px;
      background: #d93c3c;
      color: white;
      font-size: 0.7rem;
      font-weight: 600;
      padding: 0.1rem 0.45rem;
      border-radius: 40px;
      box-shadow: 0 2px 6px rgba(217, 60, 60, 0.3);
    }

    /* ----- breadcrumb / subtle title ----- */
    .shop-header {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: baseline;
      margin-bottom: 1.8rem;
    }

    .shop-header h1 {
      font-weight: 600;
      font-size: 1.9rem;
      letter-spacing: -0.3px;
      color: #0e1f3f;
    }

    .shop-header p {
      color: #50628a;
      background: #eef4ff;
      padding: 0.3rem 1.2rem;
      border-radius: 40px;
      font-size: 0.9rem;
      font-weight: 500;
    }

    /* ----- product grid ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 2rem 1.6rem;
      margin: 2rem 0 1.5rem;
    }

    /* product card */
    .product-card {
      background: #ffffff;
      border-radius: 1.5rem;
      padding: 1.2rem 1rem 1.5rem;
      box-shadow: 0 8px 20px rgba(0, 20, 50, 0.04);
      transition: transform 0.2s, box-shadow 0.25s;
      border: 1px solid #f0f5ff;
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 18px 30px -8px rgba(26, 67, 133, 0.12);
      border-color: #d6e4ff;
    }

    .product-image {
      background: #f4f9ff;
      border-radius: 1.2rem;
      padding: 0.8rem 0.2rem;
      margin-bottom: 0.9rem;
      text-align: center;
      transition: background 0.2s;
      min-height: 150px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .product-image i {
      font-size: 5rem;
      color: #1a3c78;
      opacity: 0.7;
      transition: opacity 0.2s, transform 0.2s;
    }

    .product-card:hover .product-image i {
      opacity: 0.95;
      transform: scale(1.02);
    }

    .product-title {
      font-weight: 600;
      font-size: 1.1rem;
      color: #152b4e;
      margin-bottom: 0.25rem;
      line-height: 1.3;
    }

    .product-category {
      font-size: 0.8rem;
      color: #6f7fa3;
      letter-spacing: 0.3px;
      text-transform: uppercase;
      font-weight: 500;
      margin-bottom: 0.4rem;
    }

    .product-rating {
      color: #f5b342;
      font-size: 0.9rem;
      letter-spacing: 2px;
      margin: 0.2rem 0 0.6rem;
    }

    .product-rating span {
      color: #5f6f94;
      font-size: 0.8rem;
      letter-spacing: 0;
      margin-left: 4px;
      font-weight: 500;
    }

    .price-cart {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 0.5rem;
      border-top: 1px solid #eaf1fd;
      padding-top: 0.9rem;
    }

    .price {
      font-weight: 700;
      font-size: 1.4rem;
      color: #0f2a54;
      letter-spacing: -0.3px;
    }

    .price small {
      font-weight: 400;
      font-size: 0.8rem;
      color: #6f7fa3;
      margin-left: 3px;
    }

    .btn-cart {
      background: #1f5fc9;
      border: none;
      color: white;
      padding: 0.6rem 1rem;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      cursor: default;
      transition: background 0.2s, transform 0.1s;
      box-shadow: 0 6px 12px rgba(31, 95, 201, 0.18);
      border: 1px solid transparent;
    }

    .btn-cart i {
      font-size: 0.9rem;
    }

    .btn-cart:hover {
      background: #1347a8;
      transform: scale(1.02);
    }

    .btn-cart:active {
      transform: scale(0.97);
    }

    /* badge "sale" */
    .sale-badge {
      position: absolute;
      top: 1rem;
      right: 1rem;
      background: #e73f3f;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      padding: 0.2rem 0.9rem;
      border-radius: 40px;
      letter-spacing: 0.3px;
      box-shadow: 0 4px 8px rgba(231, 63, 63, 0.2);
    }

    /* ----- footer / extra info ----- */
    .shop-footer {
      margin-top: 2.8rem;
      border-top: 2px solid #f0f4ff;
      padding-top: 1.5rem;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      color: #3f5180;
      font-size: 0.95rem;
    }

    .shop-footer .payment-icons i {
      font-size: 1.6rem;
      margin-left: 0.6rem;
      color: #4b5f8a;
      transition: color 0.2s;
    }

    .shop-footer .payment-icons i:hover {
      color: #1f5fc9;
    }

    .shop-footer .trust {
      display: flex;
      gap: 1.8rem;
      align-items: center;
    }

    .shop-footer .trust i {
      margin-right: 6px;
      color: #2a7de1;
    }

    /* responsive touches */
    @media (max-width: 600px) {
      .shop-container {
        padding: 1.2rem;
      }

      .header {
        flex-direction: column;
        align-items: start;
        gap: 0.8rem;
      }

      .nav-icons {
        gap: 1.3rem;
        font-size: 1.2rem;
        width: 100%;
        justify-content: flex-start;
      }

      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 1rem;
      }
    }

    @media (max-width: 420px) {
      .product-grid {
        grid-template-columns: 1fr;
      }

      .shop-footer {
        flex-direction: column;
        gap: 0.8rem;
        align-items: start;
      }

      .shop-footer .trust {
        flex-wrap: wrap;
        gap: 0.8rem;
      }
    }

    /* extra polish */
    .product-card:last-child .sale-badge {
      background: #d97706;
    }
  </style>
</head>
<body>
<div class="shop-container">

  <!-- header: logo + icons -->
  <header class="header">
    <div class="logo">
      <i class="fas fa-compass"></i>
      <span>Horizon</span>
    </div>
    <div class="nav-icons">
      <i class="fas fa-search" title="search"></i>
      <i class="fas fa-heart" title="wishlist"></i>
      <i class="fas fa-shopping-bag badge" title="cart"></i>
      <i class="fas fa-user-circle" title="account"></i>
    </div>
  </header>

  <!-- shop title & category hint -->
  <div class="shop-header">
    <h1>✦ New arrivals</h1>
    <p><i class="fas fa-tag" style="margin-right: 5px;"></i> 12 products</p>
  </div>

  <!-- product grid -->
  <div class="product-grid">

    <!-- product 1 -->
    <div class="product-card">
      <span class="sale-badge">−20%</span>
      <div class="product-image">
        <i class="fas fa-clock"></i>
      </div>
      <div class="product-title">Apex Chrono</div>
      <div class="product-category">watches</div>
      <div class="product-rating">
        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
        <span>4.7</span>
      </div>
      <div class="price-cart">
        <span class="price">$184 <small>USD</small></span>
        <button class="btn-cart"><i class="fas fa-plus"></i> Add</button>
      </div>
    </div>

    <!-- product 2 -->
    <div class="product-card">
      <div class="product-image">
        <i class="fas fa-headphones-alt"></i>
      </div>
      <div class="product-title">Pulse Studio</div>
      <div class="product-category">audio</div>
      <div class="product-rating">
        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
        <span>5.0</span>
      </div>
      <div class="price-cart">
        <span class="price">$129 <small>USD</small></span>
        <button class="btn-cart"><i class="fas fa-plus"></i> Add</button>
      </div>
    </div>

    <!-- product 3 -->
    <div class="product-card">
      <span class="sale-badge" style="background: #2b6b2b;">new</span>
      <div class="product-image">
        <i class="fas fa-camera-retro"></i>
      </div>
      <div class="product-title">Vista 360</div>
      <div class="product-category">cameras</div>
      <div class="product-rating">
        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
        <span>4.2</span>
      </div>
      <div class="price-cart">
        <span class="price">$249 <small>USD</small></span>
        <button class="btn-cart"><i class="fas fa-plus"></i> Add</button>
      </div>
    </div>

    <!-- product 4 -->
    <div class="product-card">
      <div class="product-image">
        <i class="fas fa-laptop"></i>
      </div>
      <div class="product-title">ZenBook Air</div>
      <div class="product-category">laptops</div>
      <div class="product-rating">
        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
        <span>4.8</span>
      </div>
      <div class="price-cart">
        <span class="price">$899 <small>USD</small></span>
        <button class="btn-cart"><i class="fas fa-plus"></i> Add</button>
      </div>
    </div>

    <!-- product 5 -->
    <div class="product-card">
      <span class="sale-badge" style="background: #b35f1a;">−15%</span>
      <div class="product-image">
        <i class="fas fa-mug-saucer"></i>
      </div>
      <div class="product-title">Ember Ceramic</div>
      <div class="product-category">home</div>
      <div class="product-rating">
        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
        <span>4.3</span>
      </div>
      <div class="price-cart">
        <span class="price">$49 <small>USD</small></span>
        <button class="btn-cart"><i class="fas fa-plus"></i> Add</button>
      </div>
    </div>

    <!-- product 6 -->
    <div class="product-card">
      <div class="product-image">
        <i class="fas fa-shoe-prints"></i>
      </div>
      <div class="product-title">Strider Run</div>
      <div class="product-category">footwear</div>
      <div class="product-rating">
        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
        <span>4.9</span>
      </div>
      <div class="price-cart">
        <span class="price">$74 <small>USD</small></span>
        <button class="btn-cart"><i class="fas fa-plus"></i> Add</button>
      </div>
    </div>

  </div>

  <!-- footer with trust & payment -->
  <div class="shop-footer">
    <div class="trust">
      <span><i class="fas fa-truck-fast"></i> Free shipping</span>
      <span><i class="fas fa-rotate-left"></i> 30-day returns</span>
      <span><i class="fas fa-shield-alt"></i> Secure checkout</span>
    </div>
    <div class="payment-icons">
      <i class="fab fa-cc-visa"></i>
      <i class="fab fa-cc-mastercard"></i>
      <i class="fab fa-cc-paypal"></i>
      <i class="fab fa-apple-pay"></i>
    </div>
  </div>

  <!-- tiny note: demo e‑commerce page -->
  <div style="margin-top: 1.2rem; font-size: 0.75rem; color: #9aabcf; text-align: right; border-top: 1px solid #f0f4ff; padding-top: 0.8rem;">
    <i class="fas fa-store-alt"></i> Horizon · modern essentials
  </div>
</div>
</body>
</html>
