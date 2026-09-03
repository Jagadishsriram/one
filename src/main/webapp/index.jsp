<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description"
      content="NexusShop — Premium modern e-commerce experience">

<title>NexusShop — Premium E-Commerce</title>

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap"
      rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   GLOBAL
========================================================= */

:root {
    --primary: #635bff;
    --primary-dark: #5147e8;
    --secondary: #8b5cf6;

    --bg: #f7f8fc;
    --surface: #ffffff;
    --surface-2: #f1f3f8;

    --text: #151827;
    --muted: #70758a;
    --border: #e6e8ef;

    --success: #18a66b;
    --danger: #ef476f;

    --shadow-sm: 0 8px 25px rgba(25, 31, 56, .06);
    --shadow-md: 0 18px 50px rgba(25, 31, 56, .10);
    --shadow-lg: 0 30px 80px rgba(25, 31, 56, .16);

    --radius-sm: 12px;
    --radius-md: 20px;
    --radius-lg: 30px;

    --transition: .25s ease;
}

[data-theme="dark"] {
    --bg: #0d1020;
    --surface: #15192c;
    --surface-2: #1c2137;

    --text: #f6f7fb;
    --muted: #9da4ba;
    --border: #292e46;

    --shadow-sm: 0 8px 25px rgba(0,0,0,.20);
    --shadow-md: 0 18px 50px rgba(0,0,0,.30);
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "DM Sans", sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
    transition: background .3s ease, color .3s ease;
}

button,
input {
    font: inherit;
}

button {
    border: 0;
    cursor: pointer;
}

a {
    color: inherit;
    text-decoration: none;
}

.container {
    width: min(1180px, calc(100% - 40px));
    margin: auto;
}

/* =========================================================
   TOP BAR
========================================================= */

.top-bar {
    background: var(--text);
    color: var(--bg);
    text-align: center;
    font-size: 13px;
    padding: 8px;
    letter-spacing: .2px;
}

/* =========================================================
   HEADER
========================================================= */

.header {
    position: sticky;
    top: 0;
    z-index: 1000;
    backdrop-filter: blur(18px);
    background: color-mix(in srgb, var(--surface) 88%, transparent);
    border-bottom: 1px solid var(--border);
}

.navbar {
    height: 76px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 25px;
}

.logo {
    font-family: "Manrope", sans-serif;
    font-size: 25px;
    font-weight: 800;
    letter-spacing: -1px;
}

.logo span {
    color: var(--primary);
}

.nav-links {
    display: flex;
    gap: 28px;
    align-items: center;
}

.nav-links a {
    color: var(--muted);
    font-size: 14px;
    font-weight: 600;
    transition: var(--transition);
}

.nav-links a:hover {
    color: var(--primary);
}

.nav-actions {
    display: flex;
    align-items: center;
    gap: 10px;
}

.icon-btn {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    background: var(--surface-2);
    color: var(--text);
    position: relative;
    transition: var(--transition);
}

.icon-btn:hover {
    background: var(--primary);
    color: white;
    transform: translateY(-2px);
}

.badge {
    position: absolute;
    top: -3px;
    right: -2px;
    min-width: 18px;
    height: 18px;
    padding: 0 5px;
    border-radius: 20px;
    background: var(--danger);
    color: white;
    font-size: 10px;
    display: grid;
    place-items: center;
    font-weight: 700;
}

.menu-btn {
    display: none;
}

/* =========================================================
   HERO
========================================================= */

.hero {
    padding: 60px 0 30px;
}

.hero-wrapper {
    min-height: 530px;
    border-radius: 36px;
    overflow: hidden;
    position: relative;
    background:
        radial-gradient(circle at 85% 20%, rgba(139,92,246,.32), transparent 30%),
        radial-gradient(circle at 10% 90%, rgba(99,91,255,.25), transparent 35%),
        linear-gradient(135deg, #101426, #1b2040);
    color: white;
    display: flex;
    align-items: center;
    padding: 65px;
}

.hero-content {
    width: 55%;
    position: relative;
    z-index: 2;
}

.hero-eyebrow {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 7px 13px;
    border-radius: 30px;
    background: rgba(255,255,255,.10);
    border: 1px solid rgba(255,255,255,.15);
    font-size: 12px;
    margin-bottom: 22px;
}

.hero h1 {
    font-family: "Manrope", sans-serif;
    font-size: clamp(42px, 5vw, 72px);
    line-height: 1.02;
    letter-spacing: -3px;
    margin-bottom: 22px;
}

.hero h1 span {
    color: #a99cff;
}

.hero p {
    color: #bfc4d8;
    max-width: 550px;
    font-size: 17px;
    margin-bottom: 32px;
}

.hero-buttons {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

.btn {
    padding: 14px 22px;
    border-radius: 14px;
    font-weight: 700;
    transition: var(--transition);
}

.btn-primary {
    background: var(--primary);
    color: white;
}

.btn-primary:hover {
    background: var(--primary-dark);
    transform: translateY(-3px);
    box-shadow: 0 12px 30px rgba(99,91,255,.35);
}

.btn-light {
    background: rgba(255,255,255,.10);
    color: white;
    border: 1px solid rgba(255,255,255,.15);
}

.btn-light:hover {
    background: rgba(255,255,255,.18);
}

/* Hero floating product */

.hero-product {
    position: absolute;
    right: 7%;
    bottom: 55px;
    width: 330px;
    height: 380px;
    border-radius: 30px;
    background: rgba(255,255,255,.08);
    border: 1px solid rgba(255,255,255,.15);
    backdrop-filter: blur(15px);
    padding: 15px;
    transform: rotate(5deg);
    box-shadow: 0 40px 80px rgba(0,0,0,.30);
}

.hero-product img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 23px;
}

/* Floating stat */

.hero-stat {
    position: absolute;
    right: 3%;
    top: 65px;
    background: white;
    color: #151827;
    padding: 14px 18px;
    border-radius: 16px;
    box-shadow: var(--shadow-lg);
    transform: rotate(-5deg);
    z-index: 5;
}

.hero-stat strong {
    display: block;
    font-size: 20px;
}

.hero-stat span {
    color: #777b8e;
    font-size: 11px;
}

/* =========================================================
   BENEFITS
========================================================= */

.benefits {
    padding: 35px 0;
}

.benefits-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 15px;
}

.benefit {
    background: var(--surface);
    border: 1px solid var(--border);
    padding: 20px;
    border-radius: var(--radius-md);
    display: flex;
    gap: 14px;
    align-items: center;
    box-shadow: var(--shadow-sm);
}

.benefit-icon {
    width: 45px;
    height: 45px;
    flex-shrink: 0;
    border-radius: 14px;
    display: grid;
    place-items: center;
    background: rgba(99,91,255,.10);
    color: var(--primary);
}

.benefit strong {
    display: block;
    font-size: 14px;
}

.benefit span {
    color: var(--muted);
    font-size: 12px;
}

/* =========================================================
   SECTION
========================================================= */

.section {
    padding: 65px 0;
}

.section-header {
    display: flex;
    justify-content: space-between;
    align-items: end;
    gap: 20px;
    margin-bottom: 30px;
}

.section-header h2 {
    font-family: "Manrope", sans-serif;
    font-size: 32px;
    letter-spacing: -1.3px;
}

.section-header p {
    color: var(--muted);
    font-size: 14px;
}

.view-all {
    color: var(--primary);
    font-size: 14px;
    font-weight: 700;
}

/* =========================================================
   CATEGORIES
========================================================= */

.category-grid {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 16px;
}

.category-card {
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: var(--radius-md);
    padding: 25px;
    text-align: center;
    transition: var(--transition);
    cursor: pointer;
}

.category-card:hover {
    transform: translateY(-7px);
    box-shadow: var(--shadow-md);
    border-color: rgba(99,91,255,.3);
}

.category-icon {
    width: 65px;
    height: 65px;
    margin: 0 auto 15px;
    border-radius: 20px;
    background: var(--surface-2);
    display: grid;
    place-items: center;
    font-size: 23px;
    color: var(--primary);
}

.category-card h3 {
    font-size: 14px;
}

.category-card p {
    color: var(--muted);
    font-size: 12px;
}

/* =========================================================
   PRODUCTS TOOLBAR
========================================================= */

.toolbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 15px;
    margin-bottom: 25px;
}

.search-box {
    width: 330px;
    position: relative;
}

.search-box i {
    position: absolute;
    left: 15px;
    top: 50%;
    transform: translateY(-50%);
    color: var(--muted);
}

.search-box input {
    width: 100%;
    height: 46px;
    border: 1px solid var(--border);
    border-radius: 14px;
    background: var(--surface);
    color: var(--text);
    padding: 0 15px 0 43px;
    outline: none;
}

.search-box input:focus {
    border-color: var(--primary);
}

/* =========================================================
   PRODUCT GRID
========================================================= */

.product-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.product-card {
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: var(--radius-md);
    overflow: hidden;
    transition: var(--transition);
    position: relative;
}

.product-card:hover {
    transform: translateY(-8px);
    box-shadow: var(--shadow-md);
}

.product-image {
    height: 255px;
    position: relative;
    background: var(--surface-2);
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s ease;
}

.product-card:hover .product-image img {
    transform: scale(1.07);
}

.product-tag {
    position: absolute;
    left: 12px;
    top: 12px;
    padding: 6px 9px;
    border-radius: 8px;
    background: white;
    color: #111;
    font-size: 10px;
    font-weight: 800;
}

.product-heart {
    position: absolute;
    right: 12px;
    top: 12px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background: rgba(255,255,255,.92);
    display: grid;
    place-items: center;
    color: #777;
}

.product-heart.active {
    color: var(--danger);
}

.product-body {
    padding: 18px;
}

.product-category {
    color: var(--muted);
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: .8px;
}

.product-title {
    font-weight: 700;
    font-size: 15px;
    margin: 5px 0;
}

.product-rating {
    font-size: 12px;
    color: #f5a623;
    margin-bottom: 12px;
}

.product-footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.price {
    font-weight: 800;
    font-size: 18px;
}

.old-price {
    color: var(--muted);
    text-decoration: line-through;
    font-size: 12px;
    margin-left: 5px;
}

.add-cart {
    width: 38px;
    height: 38px;
    border-radius: 12px;
    background: var(--primary);
    color: white;
    display: grid;
    place-items: center;
    transition: var(--transition);
}

.add-cart:hover {
    transform: scale(1.08);
}

/* =========================================================
   FLASH DEAL
========================================================= */

.deal {
    padding: 30px 0 70px;
}

.deal-box {
    background:
        radial-gradient(circle at 90% 20%, rgba(139,92,246,.25), transparent 30%),
        linear-gradient(135deg, #15192d, #252a48);
    border-radius: 30px;
    color: white;
    padding: 42px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 30px;
}

.deal-content h2 {
    font-family: "Manrope";
    font-size: 36px;
    margin-bottom: 8px;
}

.deal-content p {
    color: #b7bdd0;
}

.countdown {
    display: flex;
    gap: 10px;
    margin-top: 22px;
}

.time-box {
    min-width: 65px;
    padding: 10px;
    background: rgba(255,255,255,.08);
    border: 1px solid rgba(255,255,255,.10);
    border-radius: 12px;
    text-align: center;
}

.time-box strong {
    display: block;
    font-size: 20px;
}

.time-box span {
    font-size: 9px;
    color: #aeb4c8;
}

/* =========================================================
   REVIEWS
========================================================= */

.review-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 18px;
}

.review {
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: var(--radius-md);
    padding: 25px;
}

.review-stars {
    color: #f5a623;
    margin-bottom: 15px;
}

.review p {
    color: var(--muted);
    font-size: 14px;
    margin-bottom: 20px;
}

.reviewer {
    display: flex;
    align-items: center;
    gap: 10px;
}

.avatar {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
}

.reviewer strong {
    font-size: 13px;
    display: block;
}

.reviewer span {
    color: var(--muted);
    font-size: 11px;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    padding: 20px 0 80px;
}

.newsletter-box {
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: 30px;
    padding: 50px;
    text-align: center;
}

.newsletter-box h2 {
    font-family: "Manrope";
    font-size: 32px;
}

.newsletter-box p {
    color: var(--muted);
    margin: 8px auto 25px;
    max-width: 500px;
}

.newsletter-form {
    max-width: 520px;
    margin: auto;
    display: flex;
    gap: 10px;
}

.newsletter-form input {
    flex: 1;
    height: 50px;
    border: 1px solid var(--border);
    border-radius: 13px;
    padding: 0 15px;
    outline: none;
    background: var(--surface-2);
    color: var(--text);
}

/* =========================================================
   FOOTER
========================================================= */

.footer {
    background: #111426;
    color: white;
    padding: 60px 0 25px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 40px;
}

.footer h3 {
    margin-bottom: 15px;
}

.footer p {
    color: #9da4ba;
    font-size: 13px;
}

.footer-links {
    display: flex;
    flex-direction: column;
    gap: 9px;
}

.footer-links a {
    color: #9da4ba;
    font-size: 13px;
}

.footer-links a:hover {
    color: white;
}

.footer-bottom {
    margin-top: 45px;
    padding-top: 20px;
    border-top: 1px solid #292e46;
    display: flex;
    justify-content: space-between;
    color: #777f97;
    font-size: 12px;
}

/* =========================================================
   CART DRAWER
========================================================= */

.overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.45);
    z-index: 1500;
    opacity: 0;
    pointer-events: none;
    transition: .3s ease;
}

.overlay.active {
    opacity: 1;
    pointer-events: auto;
}

.cart-drawer {
    position: fixed;
    right: -450px;
    top: 0;
    width: min(420px, 100%);
    height: 100vh;
    background: var(--surface);
    z-index: 1600;
    transition: .35s ease;
    display: flex;
    flex-direction: column;
}

.cart-drawer.active {
    right: 0;
}

.cart-header {
    padding: 22px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid var(--border);
}

.cart-header h3 {
    font-family: "Manrope";
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 20px;
}

.cart-item {
    display: flex;
    gap: 12px;
    padding: 12px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 70px;
    height: 70px;
    border-radius: 12px;
    object-fit: cover;
}

.cart-item h4 {
    font-size: 13px;
}

.cart-item p {
    color: var(--muted);
    font-size: 12px;
}

.cart-footer {
    padding: 20px;
    border-top: 1px solid var(--border);
}

.cart-total {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
    font-weight: 800;
}

.checkout-btn {
    width: 100%;
    padding: 14px;
    border-radius: 13px;
    background: var(--primary);
    color: white;
    font-weight: 700;
}

/* =========================================================
   TOAST
========================================================= */

.toast {
    position: fixed;
    bottom: 25px;
    left: 50%;
    transform: translate(-50%, 100px);
    background: #171b2d;
    color: white;
    padding: 13px 18px;
    border-radius: 13px;
    z-index: 3000;
    opacity: 0;
    transition: .3s ease;
    font-size: 13px;
}

.toast.show {
    transform: translate(-50%, 0);
    opacity: 1;
}

/* =========================================================
   MOBILE
========================================================= */

@media(max-width: 1000px) {

    .product-grid {
        grid-template-columns: repeat(3, 1fr);
    }

    .category-grid {
        grid-template-columns: repeat(3, 1fr);
    }

    .benefits-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .hero-content {
        width: 65%;
    }

    .hero-product {
        right: -5%;
        opacity: .7;
    }
}

@media(max-width: 760px) {

    .container {
        width: min(100% - 25px, 600px);
    }

    .top-bar {
        font-size: 11px;
    }

    .navbar {
        height: 65px;
    }

    .nav-links {
        position: fixed;
        top: 65px;
        left: 0;
        right: 0;
        background: var(--surface);
        padding: 20px;
        flex-direction: column;
        align-items: flex-start;
        border-bottom: 1px solid var(--border);
        transform: translateY(-130%);
        transition: .3s ease;
    }

    .nav-links.active {
        transform: translateY(0);
    }

    .menu-btn {
        display: grid;
    }

    .hero {
        padding-top: 25px;
    }

    .hero-wrapper {
        padding: 35px 25px;
        min-height: 600px;
    }

    .hero-content {
        width: 100%;
        align-self: flex-start;
    }

    .hero h1 {
        font-size: 45px;
        letter-spacing: -2px;
    }

    .hero-product {
        width: 250px;
        height: 260px;
        right: 50%;
        transform: translateX(50%) rotate(3deg);
        bottom: 25px;
    }

    .hero-stat {
        right: 15px;
        top: 15px;
    }

    .benefits-grid {
        grid-template-columns: 1fr;
    }

    .category-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .product-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .product-image {
        height: 190px;
    }

    .toolbar {
        flex-direction: column;
        align-items: stretch;
    }

    .search-box {
        width: 100%;
    }

    .deal-box {
        padding: 30px 22px;
        flex-direction: column;
        align-items: flex-start;
    }

    .review-grid {
        grid-template-columns: 1fr;
    }

    .newsletter-box {
        padding: 35px 20px;
    }

    .newsletter-form {
        flex-direction: column;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }

    .footer-bottom {
        flex-direction: column;
        gap: 8px;
    }
}

@media(max-width: 480px) {

    .nav-actions .icon-btn:nth-child(1) {
        display: none;
    }

    .product-grid {
        gap: 12px;
    }

    .product-image {
        height: 160px;
    }

    .product-body {
        padding: 13px;
    }

    .product-title {
        font-size: 13px;
    }

    .price {
        font-size: 15px;
    }

    .hero h1 {
        font-size: 39px;
    }

    .section-header {
        align-items: flex-start;
        flex-direction: column;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}

</style>
</head>

<body>

<!-- ======================================================
     TOP BAR
====================================================== -->

<div class="top-bar">
    <i class="fa-solid fa-bolt"></i>
    Free shipping on orders over $75 · New arrivals every week
</div>


<!-- ======================================================
     HEADER
====================================================== -->

<header class="header">

    <div class="container navbar">

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav class="nav-links" id="navLinks">
            <a href="#home">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Shop</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="nav-actions">

            <button class="icon-btn" onclick="toggleTheme()" title="Theme">
                <i class="fa-solid fa-moon" id="themeIcon"></i>
            </button>

            <button class="icon-btn" onclick="showToast('Wishlist opened')">
                <i class="fa-regular fa-heart"></i>
                <span class="badge" id="wishlistCount">0</span>
            </button>

            <button class="icon-btn" onclick="openCart()">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="badge" id="cartCount">0</span>
            </button>

            <button class="icon-btn menu-btn" onclick="toggleMenu()">
                <i class="fa-solid fa-bars"></i>
            </button>

        </div>

    </div>

</header>


<main>

<!-- ======================================================
     HERO
====================================================== -->

<section class="hero" id="home">

    <div class="container">

        <div class="hero-wrapper">

            <div class="hero-content">

                <div class="hero-eyebrow">
                    <i class="fa-solid fa-sparkles"></i>
                    Premium collection · 2026
                </div>

                <h1>
                    Everything you want.
                    <span>One beautiful place.</span>
                </h1>

                <p>
                    Discover carefully selected products designed for
                    modern living. Simple shopping, premium quality and
                    an experience built around you.
                </p>

                <div class="hero-buttons">

                    <button class="btn btn-primary"
                            onclick="scrollToProducts()">
                        Shop Collection
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-light"
                            onclick="scrollToDeals()">
                        View Deals
                    </button>

                </div>

            </div>

            <div class="hero-stat">
                <strong>4.9/5</strong>
                <span>Customer rating</span>
            </div>

            <div class="hero-product">

                <img
                    src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
                    alt="Premium watch">

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
     BENEFITS
====================================================== -->

<section class="benefits">

    <div class="container benefits-grid">

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-truck-fast"></i>
            </div>

            <div>
                <strong>Fast Delivery</strong>
                <span>Free shipping over $75</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-shield-halved"></i>
            </div>

            <div>
                <strong>Secure Payment</strong>
                <span>100% protected checkout</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-rotate-left"></i>
            </div>

            <div>
                <strong>Easy Returns</strong>
                <span>30-day return policy</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-headset"></i>
            </div>

            <div>
                <strong>24/7 Support</strong>
                <span>We're here to help</span>
            </div>
        </div>

    </div>

</section>


<!-- ======================================================
     CATEGORIES
====================================================== -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-header">

            <div>
                <h2>Explore categories</h2>
                <p>Find something made for you.</p>
            </div>

            <a href="#products" class="view-all">
                View all →
            </a>

        </div>


        <div class="category-grid">

            <div class="category-card"
                 onclick="filterCategory('Electronics')">

                <div class="category-icon">
                    <i class="fa-solid fa-mobile-screen"></i>
                </div>

                <h3>Electronics</h3>
                <p>120+ products</p>

            </div>


            <div class="category-card"
                 onclick="filterCategory('Fashion')">

                <div class="category-icon">
                    <i class="fa-solid fa-shirt"></i>
                </div>

                <h3>Fashion</h3>
                <p>240+ products</p>

            </div>


            <div class="category-card"
                 onclick="filterCategory('Home')">

                <div class="category-icon">
                    <i class="fa-solid fa-house"></i>
                </div>

                <h3>Home</h3>
                <p>180+ products</p>

            </div>


            <div class="category-card"
                 onclick="filterCategory('Accessories')">

                <div class="category-icon">
                    <i class="fa-solid fa-gem"></i>
                </div>

                <h3>Accessories</h3>
                <p>90+ products</p>

            </div>


            <div class="category-card"
                 onclick="filterCategory('Sports')">

                <div class="category-icon">
                    <i class="fa-solid fa-dumbbell"></i>
                </div>

                <h3>Sports</h3>
                <p>75+ products</p>

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
     PRODUCTS
====================================================== -->

<section class="section" id="products">

    <div class="container">

        <div class="section-header">

            <div>
                <h2>Trending products</h2>
                <p>Popular picks our customers love.</p>
            </div>

        </div>


        <div class="toolbar">

            <div class="search-box">

                <i class="fa-solid fa-magnifying-glass"></i>

                <input
                    type="text"
                    id="searchInput"
                    placeholder="Search products..."
                    oninput="renderProducts()">

            </div>

        </div>


        <div class="product-grid" id="productGrid"></div>

    </div>

</section>


<!-- ======================================================
     FLASH DEAL
====================================================== -->

<section class="deal" id="deals">

    <div class="container">

        <div class="deal-box">

            <div class="deal-content">

                <h2>Flash Deal — 40% Off</h2>

                <p>
                    Limited-time offer on selected premium products.
                </p>

                <div class="countdown">

                    <div class="time-box">
                        <strong id="hours">12</strong>
                        <span>HOURS</span>
                    </div>

                    <div class="time-box">
                        <strong id="minutes">30</strong>
                        <span>MINUTES</span>
                    </div>

                    <div class="time-box">
                        <strong id="seconds">00</strong>
                        <span>SECONDS</span>
                    </div>

                </div>

            </div>

            <button class="btn btn-primary"
                    onclick="addFlashDeal()">
                Grab Deal
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>

    </div>

</section>


<!-- ======================================================
     REVIEWS
====================================================== -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-header">

            <div>
                <h2>Loved by shoppers</h2>
                <p>Real experiences from our community.</p>
            </div>

        </div>


        <div class="review-grid">

            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "The whole shopping experience feels incredibly
                    clean and premium. Delivery was faster than expected."
                </p>

                <div class="reviewer">

                    <img
                        class="avatar"
                        src="https://i.pravatar.cc/100?img=12"
                        alt="Customer">

                    <div>
                        <strong>Olivia Carter</strong>
                        <span>Verified customer</span>
                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "I love how easy it is to find products. The quality
                    is excellent and customer support was fantastic."
                </p>

                <div class="reviewer">

                    <img
                        class="avatar"
                        src="https://i.pravatar.cc/100?img=32"
                        alt="Customer">

                    <div>
                        <strong>Daniel Morgan</strong>
                        <span>Verified customer</span>
                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "Beautiful website, smooth checkout and great products.
                    NexusShop is now one of my favorite stores."
                </p>

                <div class="reviewer">

                    <img
                        class="avatar"
                        src="https://i.pravatar.cc/100?img=47"
                        alt="Customer">

                    <div>
                        <strong>Sophia Williams</strong>
                        <span>Verified customer</span>
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
     NEWSLETTER
====================================================== -->

<section class="newsletter">

    <div class="container">

        <div class="newsletter-box">

            <h2>Stay ahead of the trend.</h2>

            <p>
                Get new arrivals, exclusive deals and curated
                recommendations delivered to your inbox.
            </p>

            <form class="newsletter-form"
                  onsubmit="subscribe(event)">

                <input
                    type="email"
                    id="email"
                    placeholder="Your email address"
                    required>

                <button class="btn btn-primary">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- ======================================================
     FOOTER
====================================================== -->

<footer class="footer">

    <div class="container">

        <div class="footer-grid">

            <div>

                <h3>NexusShop</h3>

                <p>
                    A modern shopping experience designed for
                    people who value quality, simplicity and style.
                </p>

            </div>


            <div>

                <h3>Shop</h3>

                <div class="footer-links">
                    <a href="#products">New Arrivals</a>
                    <a href="#products">Best Sellers</a>
                    <a href="#deals">Deals</a>
                    <a href="#categories">Categories</a>
                </div>

            </div>


            <div>

                <h3>Company</h3>

                <div class="footer-links">
                    <a href="#">About Us</a>
                    <a href="#">Contact</a>
                    <a href="#">Careers</a>
                    <a href="#">Privacy</a>
                </div>

            </div>


            <div>

                <h3>Follow</h3>

                <div class="footer-links">
                    <a href="#"><i class="fa-brands fa-instagram"></i> Instagram</a>
                    <a href="#"><i class="fa-brands fa-facebook"></i> Facebook</a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i> X</a>
                    <a href="#"><i class="fa-brands fa-linkedin"></i> LinkedIn</a>
                </div>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NexusShop. All rights reserved.
            </span>

            <span>
                Built for a better shopping experience.
            </span>

        </div>

    </div>

</footer>


<!-- ======================================================
     CART
====================================================== -->

<div class="overlay"
     id="overlay"
     onclick="closeCart()">
</div>


<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>Your Cart</h3>

        <button class="icon-btn"
                onclick="closeCart()">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div class="cart-items"
         id="cartItems">

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>Total</span>

            <span id="cartTotal">
                $0.00
            </span>

        </div>

        <button class="checkout-btn"
                onclick="checkout()">

            Proceed to Checkout
            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>

</aside>


<!-- ======================================================
     TOAST
====================================================== -->

<div class="toast" id="toast"></div>


<script>

/* =========================================================
   DATA
========================================================= */

const products = [

    {
        id: 1,
        name: "Premium Smart Watch",
        category: "Electronics",
        price: 149,
        oldPrice: 199,
        rating: 4.9,
        image:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 2,
        name: "Minimal Leather Bag",
        category: "Fashion",
        price: 89,
        oldPrice: 129,
        rating: 4.8,
        image:
        "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 3,
        name: "Wireless Headphones",
        category: "Electronics",
        price: 129,
        oldPrice: 179,
        rating: 4.7,
        image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 4,
        name: "Modern Running Shoes",
        category: "Sports",
        price: 99,
        oldPrice: 149,
        rating: 4.9,
        image:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 5,
        name: "Designer Sunglasses",
        category: "Accessories",
        price: 69,
        oldPrice: 99,
        rating: 4.6,
        image:
        "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 6,
        name: "Modern Desk Lamp",
        category: "Home",
        price: 59,
        oldPrice: 79,
        rating: 4.7,
        image:
        "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 7,
        name: "Premium Backpack",
        category: "Fashion",
        price: 79,
        oldPrice: 119,
        rating: 4.8,
        image:
        "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 8,
        name: "Wireless Speaker",
        category: "Electronics",
        price: 89,
        oldPrice: 129,
        rating: 4.8,
        image:
        "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=700&q=85"
    }

];


/* =========================================================
   STATE
========================================================= */

let cart = [];

let wishlist = new Set();


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts() {

    const grid =
        document.getElementById("productGrid");

    const search =
        document
        .getElementById("searchInput")
        .value
        .toLowerCase()
        .trim();

    const filtered =
        products.filter(product => {

            return (
                product.name.toLowerCase().includes(search) ||
                product.category.toLowerCase().includes(search)
            );

        });


    if (!filtered.length) {

        grid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:60px;
                color:var(--muted);
            ">
                <i class="fa-solid fa-box-open"
                   style="font-size:40px;margin-bottom:15px;">
                </i>

                <h3>No products found</h3>

                <p>Try another search.</p>
            </div>
        `;

        return;
    }


    grid.innerHTML =
        filtered.map(createProductCard).join("");

}


/* =========================================================
   PRODUCT CARD
========================================================= */

function createProductCard(product) {

    const isWishlisted =
        wishlist.has(product.id);

    return `

        <article class="product-card">

            <div class="product-image">

                <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy">

                <span class="product-tag">
                    SALE
                </span>

                <button
                    class="product-heart ${isWishlisted ? "active" : ""}"
                    onclick="toggleWishlist(${product.id})">

                    <i class="${isWishlisted
                        ? "fa-solid"
                        : "fa-regular"} fa-heart">
                    </i>

                </button>

            </div>


            <div class="product-body">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-title">
                    ${product.name}
                </div>

                <div class="product-rating">
                    ★★★★★
                    <span style="color:var(--muted)">
                        ${product.rating}
                    </span>
                </div>


                <div class="product-footer">

                    <div class="price">

                        $${product.price}

                        <span class="old-price">
                            $${product.oldPrice}
                        </span>

                    </div>


                    <button
                        class="add-cart"
                        onclick="addToCart(${product.id})">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </div>

        </article>

    `;

}


/* =========================================================
   CART
========================================================= */

function addToCart(id) {

    const product =
        products.find(p => p.id === id);

    if (!product) return;


    const existing =
        cart.find(item => item.id === id);


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            ...product,
            quantity: 1
        });

    }


    updateCart();

    showToast(
        `${product.name} added to cart`
    );

}


function updateCart() {

    const cartItems =
        document.getElementById("cartItems");

    const cartCount =
        document.getElementById("cartCount");

    const cartTotal =
        document.getElementById("cartTotal");


    const totalItems =
        cart.reduce(
            (sum, item) => sum + item.quantity,
            0
        );


    const totalPrice =
        cart.reduce(
            (sum, item) =>
                sum + item.price * item.quantity,
            0
        );


    cartCount.textContent =
        totalItems;


    cartTotal.textContent =
        `$${totalPrice.toFixed(2)}`;


    if (!cart.length) {

        cartItems.innerHTML = `

            <div style="
                text-align:center;
                padding:60px 20px;
                color:var(--muted);
            ">

                <i class="fa-solid fa-bag-shopping"
                   style="
                    font-size:45px;
                    margin-bottom:15px;
                   ">
                </i>

                <h3>Your cart is empty</h3>

                <p>Add something you love.</p>

            </div>

        `;

        return;
    }


    cartItems.innerHTML =
        cart.map(item => `

            <div class="cart-item">

                <img
                    src="${item.image}"
                    alt="${item.name}">

                <div style="flex:1">

                    <h4>
                        ${item.name}
                    </h4>

                    <p>
                        $${item.price} ×
                        ${item.quantity}
                    </p>

                    <div style="
                        display:flex;
                        gap:7px;
                        margin-top:7px;
                    ">

                        <button
                            class="icon-btn"
                            style="width:28px;height:28px"
                            onclick="changeQuantity(${item.id}, -1)">
                            −
                        </button>

                        <button
                            class="icon-btn"
                            style="width:28px;height:28px"
                            onclick="changeQuantity(${item.id}, 1)">
                            +
                        </button>

                        <button
                            class="icon-btn"
                            style="width:28px;height:28px"
                            onclick="removeFromCart(${item.id})">

                            <i class="fa-solid fa-trash"
                               style="font-size:10px">
                            </i>

                        </button>

                    </div>

                </div>

            </div>

        `).join("");

}


function changeQuantity(id, amount) {

    const item =
        cart.find(product => product.id === id);

    if (!item) return;


    item.quantity += amount;


    if (item.quantity <= 0) {

        cart =
            cart.filter(
                product => product.id !== id
            );

    }


    updateCart();

}


function removeFromCart(id) {

    cart =
        cart.filter(
            product => product.id !== id
        );

    updateCart();

    showToast("Item removed from cart");

}


/* =========================================================
   CART DRAWER
========================================================= */

function openCart() {

    document
        .getElementById("cartDrawer")
        .classList.add("active");

    document
        .getElementById("overlay")
        .classList.add("active");

}


function closeCart() {

    document
        .getElementById("cartDrawer")
        .classList.remove("active");

    document
        .getElementById("overlay")
        .classList.remove("active");

}


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id) {

    const product =
        products.find(p => p.id === id);


    if (wishlist.has(id)) {

        wishlist.delete(id);

        showToast(
            `${product.name} removed from wishlist`
        );

    } else {

        wishlist.add(id);

        showToast(
            `${product.name} added to wishlist`
        );

    }


    document
        .getElementById("wishlistCount")
        .textContent = wishlist.size;


    renderProducts();

}


/* =========================================================
   CATEGORY FILTER
========================================================= */

function filterCategory(category) {

    const search =
        document.getElementById("searchInput");

    search.value = category;

    renderProducts();

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* =========================================================
   THEME
========================================================= */

function toggleTheme() {

    const body =
        document.body;

    const current =
        body.getAttribute("data-theme");


    const newTheme =
        current === "dark"
            ? "light"
            : "dark";


    body.setAttribute(
        "data-theme",
        newTheme
    );


    localStorage.setItem(
        "nexus-theme",
        newTheme
    );


    updateThemeIcon(newTheme);

}


function updateThemeIcon(theme) {

    const icon =
        document.getElementById("themeIcon");


    if (theme === "dark") {

        icon.className =
            "fa-solid fa-sun";

    } else {

        icon.className =
            "fa-solid fa-moon";

    }

}


/* =========================================================
   MOBILE MENU
========================================================= */

function toggleMenu() {

    document
        .getElementById("navLinks")
        .classList.toggle("active");

}


/* =========================================================
   SCROLL ACTIONS
========================================================= */

function scrollToProducts() {

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


function scrollToDeals() {

    document
        .getElementById("deals")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* =========================================================
   FLASH DEAL
========================================================= */

function addFlashDeal() {

    const deal =
        products[0];

    addToCart(deal.id);

    openCart();

}


/* =========================================================
   COUNTDOWN
========================================================= */

let remainingSeconds =
    12 * 60 * 60;


function updateCountdown() {

    const hours =
        Math.floor(
            remainingSeconds / 3600
        );

    const minutes =
        Math.floor(
            (remainingSeconds % 3600) / 60
        );

    const seconds =
        remainingSeconds % 60;


    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2, "0");


    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2, "0");


    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2, "0");


    if (remainingSeconds > 0) {

        remainingSeconds--;

    } else {

        remainingSeconds =
            12 * 60 * 60;

    }

}


setInterval(
    updateCountdown,
    1000
);


/* =========================================================
   NEWSLETTER
========================================================= */

function subscribe(event) {

    event.preventDefault();


    const email =
        document
        .getElementById("email")
        .value;


    showToast(
        `Thanks! ${email} is subscribed.`
    );


    event.target.reset();

}


/* =========================================================
   CHECKOUT
========================================================= */

function checkout() {

    if (!cart.length) {

        showToast(
            "Your cart is empty"
        );

        return;
    }


    showToast(
        "Checkout demo started!"
    );

}


/* =========================================================
   TOAST
========================================================= */

let toastTimer;


function showToast(message) {

    const toast =
        document.getElementById("toast");


    toast.textContent =
        message;


    toast.classList.add("show");


    clearTimeout(toastTimer);


    toastTimer =
        setTimeout(() => {

            toast.classList.remove("show");

        }, 2500);

}


/* =========================================================
   INITIALIZATION
========================================================= */

function init() {

    const savedTheme =
        localStorage.getItem("nexus-theme")
        || "light";


    document.body.setAttribute(
        "data-theme",
        savedTheme
    );


    updateThemeIcon(
        savedTheme
    );


    document.getElementById("year")
        .textContent =
        new Date().getFullYear();


    renderProducts();

    updateCart();

    updateCountdown();

}


init();

</script>

</body>
</html>
