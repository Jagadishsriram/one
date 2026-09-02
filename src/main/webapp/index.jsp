<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="NexusShop — Modern premium e-commerce experience">
    <meta name="theme-color" content="#0b1220">

    <title>NexusShop — Premium Modern E-Commerce</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap"
        rel="stylesheet"
    >

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    >

    <style>
:root{
  --bg:#f4f6fb;
  --surface:#ffffff;
  --surface-soft:#f8f9fd;
  --surface-muted:#eef1f7;
  --text:#101322;
  --muted:#697386;
  --primary:#5b4bdb;
  --primary-2:#8b5cf6;
  --accent:#06b6d4;
  --success:#16a34a;
  --danger:#ef476f;
  --warning:#f59e0b;
  --border:#e5e7ef;
  --border-strong:#d7dbea;
  --shadow-sm:0 8px 24px rgba(16,19,34,.05);
  --shadow:0 18px 55px rgba(16,19,34,.09);
  --shadow-lg:0 30px 90px rgba(16,19,34,.16);
  --radius-sm:12px;
  --radius:20px;
  --radius-lg:30px;
  --container:1280px;
  --transition:.25s cubic-bezier(.2,.7,.2,1);
}

body.dark{
  --bg:#080a12;
  --surface:#111522;
  --surface-soft:#151a29;
  --surface-muted:#1b2131;
  --text:#f7f8fc;
  --muted:#9aa3b5;
  --primary:#8b7cf6;
  --primary-2:#a78bfa;
  --accent:#22d3ee;
  --border:#252b3b;
  --border-strong:#30374a;
  --shadow-sm:0 8px 24px rgba(0,0,0,.24);
  --shadow:0 18px 55px rgba(0,0,0,.32);
  --shadow-lg:0 30px 90px rgba(0,0,0,.48);
}

*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  min-height:100vh;
  font-family:Inter,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
  background:
    radial-gradient(circle at 0 0,rgba(91,75,219,.08),transparent 28%),
    radial-gradient(circle at 100% 15%,rgba(6,182,212,.06),transparent 24%),
    var(--bg);
  color:var(--text);
  line-height:1.55;
  transition:background .3s ease,color .3s ease;
}
body:before{
  content:"";
  position:fixed;
  inset:0;
  pointer-events:none;
  z-index:-1;
  background-image:linear-gradient(rgba(91,75,219,.018) 1px,transparent 1px),
                   linear-gradient(90deg,rgba(91,75,219,.018) 1px,transparent 1px);
  background-size:40px 40px;
}
img{max-width:100%;display:block}
button,input{font:inherit}
button{border:0}
a{color:inherit;text-decoration:none}
ul{list-style:none}
.container{width:min(calc(100% - 48px),var(--container));margin-inline:auto}

.section{padding:104px 0}
.section-header{margin-bottom:40px}
.section-header.center{text-align:center}
.eyebrow{
  display:inline-flex;align-items:center;gap:8px;
  padding:7px 12px;border:1px solid rgba(91,75,219,.15);
  border-radius:999px;background:rgba(91,75,219,.08);
  color:var(--primary);font-size:11px;font-weight:800;
  text-transform:uppercase;letter-spacing:.1em;
}
body.dark .eyebrow{color:#c4b5fd;background:rgba(139,124,246,.1)}
.section-title{
  margin-top:13px;font-family:Poppins,sans-serif;
  font-size:clamp(30px,4vw,48px);line-height:1.08;letter-spacing:-.045em;
}
.section-description{max-width:650px;margin:13px auto 0;color:var(--muted)}

.btn{
  display:inline-flex;align-items:center;justify-content:center;gap:9px;
  min-height:48px;padding:0 21px;border-radius:14px;
  font-size:13px;font-weight:800;cursor:pointer;
  transition:transform var(--transition),box-shadow var(--transition),background var(--transition),border-color var(--transition);
}
.btn:hover{transform:translateY(-2px)}
.btn-primary{
  color:#fff;
  background:linear-gradient(135deg,var(--primary),var(--primary-2));
  box-shadow:0 12px 28px rgba(91,75,219,.24);
}
.btn-primary:hover{box-shadow:0 16px 34px rgba(91,75,219,.32)}
.btn-dark{background:#151827;color:#fff}
body.dark .btn-dark{background:#fff;color:#101322}
.btn-outline{
  color:var(--text);background:var(--surface);
  border:1px solid var(--border-strong);
}
.btn-outline:hover{border-color:var(--primary);color:var(--primary)}

.topbar{
  background:#0e1020;color:#fff;border-bottom:1px solid rgba(255,255,255,.08);
  font-size:11px;letter-spacing:.01em;
}
.topbar-inner{min-height:38px;display:flex;align-items:center;justify-content:space-between;gap:20px}
.topbar strong{color:#a78bfa}
.topbar-links{display:flex;gap:22px;color:#b6bdcd}

header{
  position:sticky;top:0;z-index:100;
  background:color-mix(in srgb,var(--surface) 88%,transparent);
  backdrop-filter:blur(22px);
  border-bottom:1px solid var(--border);
  box-shadow:0 8px 35px rgba(16,19,34,.035);
}
.navbar{min-height:82px;display:flex;align-items:center;justify-content:space-between;gap:24px}
.brand{display:flex;align-items:center;gap:11px;font-family:Poppins,sans-serif;font-size:21px;font-weight:800;white-space:nowrap}
.brand-icon{
  width:40px;height:40px;display:grid;place-items:center;border-radius:13px;
  color:#fff;background:linear-gradient(135deg,var(--primary),var(--accent));
  box-shadow:0 10px 25px rgba(91,75,219,.22);
}
.brand span span{color:var(--primary)}
.main-nav{display:flex;align-items:center}
.main-nav ul{display:flex;align-items:center;gap:3px}
.main-nav a{
  display:flex;align-items:center;gap:7px;padding:10px 13px;border-radius:11px;
  color:var(--muted);font-size:13px;font-weight:700;transition:var(--transition);
}
.main-nav a:hover,.main-nav a.active{color:var(--text);background:var(--surface-muted)}
.main-nav a.active{box-shadow:inset 0 0 0 1px var(--border)}
.header-right{display:flex;align-items:center;gap:7px}
.search-box{
  width:285px;height:44px;display:flex;align-items:center;gap:10px;
  padding:0 14px;border:1px solid var(--border);border-radius:14px;
  background:var(--surface-soft);transition:var(--transition);
}
.search-box:focus-within{border-color:rgba(91,75,219,.45);box-shadow:0 0 0 4px rgba(91,75,219,.08)}
.search-box i{color:var(--muted)}
.search-box input{width:100%;border:0;outline:0;background:transparent;color:var(--text);font-size:12px}
.icon-button{
  position:relative;width:44px;height:44px;display:grid;place-items:center;
  border:1px solid transparent;border-radius:13px;background:transparent;color:var(--text);
  cursor:pointer;transition:var(--transition);
}
.icon-button:hover{background:var(--surface-muted);border-color:var(--border);transform:translateY(-1px)}
.count{
  position:absolute;top:-3px;right:-3px;min-width:18px;height:18px;padding:0 5px;
  display:grid;place-items:center;border-radius:999px;background:var(--danger);color:#fff;
  font-size:9px;font-weight:900;border:2px solid var(--surface);
}
.mobile-menu-btn{display:none}

.hero{
  position:relative;min-height:700px;display:flex;align-items:center;overflow:hidden;
  background:
    linear-gradient(90deg,rgba(8,10,22,.98) 0%,rgba(12,14,35,.88) 45%,rgba(12,14,35,.30) 100%),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=2000&q=92") center/cover no-repeat;
}
.hero:before{
  content:"";position:absolute;width:560px;height:560px;right:3%;top:7%;
  border-radius:50%;background:radial-gradient(circle,rgba(34,211,238,.22),transparent 67%);
  filter:blur(3px);
}
.hero:after{
  content:"";position:absolute;inset:auto 0 0;height:170px;
  background:linear-gradient(transparent,var(--bg));
}
.hero .container{position:relative;z-index:2}
.hero-content{max-width:780px;color:#fff}
.hero-badge{
  display:inline-flex;align-items:center;gap:8px;padding:8px 13px;
  border:1px solid rgba(255,255,255,.15);border-radius:999px;
  background:rgba(255,255,255,.08);backdrop-filter:blur(14px);
  color:#dbe4ff;font-size:11px;font-weight:800;
}
.hero-badge i{color:#67e8f9}
.hero h1{
  margin-top:22px;font-family:Poppins,sans-serif;
  font-size:clamp(48px,7vw,88px);line-height:1.01;letter-spacing:-.06em;
}
.hero h1 span{
  background:linear-gradient(90deg,#67e8f9,#a78bfa,#f0abfc);
  -webkit-background-clip:text;background-clip:text;color:transparent;
}
.hero-description{max-width:650px;margin:22px 0 31px;color:rgba(255,255,255,.72);font-size:16px}
.hero-buttons{display:flex;flex-wrap:wrap;gap:11px}
.hero .btn-outline{color:#fff;background:rgba(255,255,255,.07);border-color:rgba(255,255,255,.16);backdrop-filter:blur(10px)}
.hero-stats{display:flex;gap:0;margin-top:48px}
.hero-stat{min-width:155px;padding:0 25px;border-left:1px solid rgba(255,255,255,.14)}
.hero-stat:first-child{padding-left:0;border-left:0}
.hero-stat strong{display:block;font-family:Poppins,sans-serif;font-size:21px}
.hero-stat span{color:rgba(255,255,255,.55);font-size:11px}

.trust-strip{
  margin-top:-1px;padding:18px 0;border-bottom:1px solid var(--border);
  background:var(--surface);
}
.trust-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:12px}
.trust-item{
  display:flex;align-items:center;gap:12px;padding:14px 18px;
  border-right:1px solid var(--border);
}
.trust-item:last-child{border-right:0}
.trust-item>i{font-size:19px;color:var(--primary)}
.trust-item strong{display:block;font-size:12px}
.trust-item span{display:block;margin-top:2px;color:var(--muted);font-size:10px}

.category-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.category-card{
  position:relative;padding:24px 15px;border:1px solid var(--border);border-radius:var(--radius);
  background:linear-gradient(180deg,var(--surface),var(--surface-soft));
  text-align:center;cursor:pointer;box-shadow:var(--shadow-sm);
  transition:var(--transition);overflow:hidden;
}
.category-card:after{
  content:"";position:absolute;width:100px;height:100px;right:-45px;top:-45px;border-radius:50%;
  background:rgba(91,75,219,.07);transition:var(--transition);
}
.category-card:hover{transform:translateY(-7px);border-color:rgba(91,75,219,.25);box-shadow:var(--shadow)}
.category-card:hover:after{transform:scale(1.5)}
.category-icon{
  position:relative;z-index:1;width:58px;height:58px;display:grid;place-items:center;
  margin:0 auto 14px;border-radius:18px;background:linear-gradient(135deg,rgba(91,75,219,.12),rgba(6,182,212,.10));
  color:var(--primary);font-size:21px;
}
.category-card h3{font-size:13px}
.category-card p{margin-top:4px;color:var(--muted);font-size:10px}

.product-toolbar{display:flex;align-items:center;justify-content:space-between;gap:15px;margin-bottom:24px}
.result-count{color:var(--muted);font-size:12px}
.filter-buttons{display:flex;gap:7px;flex-wrap:wrap}
.filter-btn{
  padding:8px 13px;border:1px solid var(--border);border-radius:999px;
  background:var(--surface);color:var(--muted);cursor:pointer;font-size:11px;font-weight:700;transition:var(--transition)
}
.filter-btn:hover,.filter-btn.active{background:var(--text);color:var(--surface);border-color:var(--text)}
.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product-card{
  position:relative;overflow:hidden;border:1px solid var(--border);border-radius:var(--radius);
  background:var(--surface);box-shadow:var(--shadow-sm);
  transition:var(--transition);
}
.product-card:hover{transform:translateY(-8px);box-shadow:var(--shadow);border-color:rgba(91,75,219,.20)}
.product-image{position:relative;height:285px;overflow:hidden;background:var(--surface-muted)}
.product-image img{width:100%;height:100%;object-fit:cover;transition:transform .6s cubic-bezier(.2,.7,.2,1)}
.product-card:hover .product-image img{transform:scale(1.075)}
.product-image:after{content:"";position:absolute;inset:auto 0 0;height:35%;background:linear-gradient(transparent,rgba(0,0,0,.13));pointer-events:none}
.product-badge{
  position:absolute;top:13px;left:13px;z-index:2;padding:6px 9px;border-radius:999px;
  background:#111322;color:#fff;box-shadow:0 7px 20px rgba(0,0,0,.15);
  font-size:9px;font-weight:900;letter-spacing:.06em;
}
.product-badge.sale{background:var(--danger)}
.wishlist-btn{
  position:absolute;top:12px;right:12px;z-index:3;width:39px;height:39px;
  display:grid;place-items:center;border:1px solid rgba(255,255,255,.45);border-radius:50%;
  background:rgba(255,255,255,.88);color:#202436;backdrop-filter:blur(12px);
  cursor:pointer;box-shadow:0 8px 20px rgba(0,0,0,.10);transition:var(--transition);
}
.wishlist-btn:hover{transform:scale(1.08);color:var(--danger)}
.wishlist-btn.active{background:#fff0f3;color:var(--danger)}
.product-body{padding:19px}
.product-category{color:var(--primary);font-size:9px;font-weight:900;text-transform:uppercase;letter-spacing:.1em}
.product-title{margin-top:6px;font-family:Poppins,sans-serif;font-size:15px;line-height:1.35}
.rating-row{display:flex;align-items:center;gap:8px;margin-top:9px}
.stars{color:#fbbf24;font-size:11px;letter-spacing:1px}
.review-count{color:var(--muted);font-size:10px}
.price-row{display:flex;align-items:end;justify-content:space-between;gap:10px;margin-top:15px}
.price{font-family:Poppins,sans-serif;font-size:21px;font-weight:800}
.old-price{margin-left:5px;color:var(--muted);font-size:10px;text-decoration:line-through}
.add-cart{
  width:100%;margin-top:15px;min-height:43px;border-radius:13px;
  background:#171a2a;color:#fff;cursor:pointer;font-size:12px;font-weight:800;
  transition:var(--transition);box-shadow:0 8px 18px rgba(23,26,42,.12);
}
.add-cart:hover{transform:translateY(-2px);background:var(--primary);box-shadow:0 12px 24px rgba(91,75,219,.22)}
body.dark .add-cart{background:#f4f5f8;color:#101322}
body.dark .add-cart:hover{background:#fff}
.empty-products{grid-column:1/-1;padding:75px 20px;text-align:center;color:var(--muted)}
.empty-products i{display:block;margin-bottom:14px;font-size:40px;opacity:.35}

.deal-card{
  position:relative;display:grid;grid-template-columns:1fr 1fr;overflow:hidden;
  border:1px solid rgba(255,255,255,.08);border-radius:var(--radius-lg);
  background:linear-gradient(135deg,#0b0d18,#20184c 55%,#073b48);color:#fff;box-shadow:var(--shadow-lg);
}
.deal-image{min-height:500px;background:url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90") center/cover}
.deal-content{display:flex;flex-direction:column;justify-content:center;padding:65px}
.deal-label{display:inline-flex;align-items:center;width:max-content;padding:7px 10px;border-radius:999px;background:rgba(239,71,111,.14);color:#ff9caf;font-size:10px;font-weight:900;text-transform:uppercase}
.deal-content h2{margin-top:15px;font-family:Poppins,sans-serif;font-size:clamp(32px,4vw,50px);line-height:1.08;letter-spacing:-.045em}
.deal-content p{max-width:500px;margin-top:13px;color:rgba(255,255,255,.60)}
.timer{display:flex;gap:9px;margin:25px 0}
.time-box{min-width:78px;padding:12px 10px;border:1px solid rgba(255,255,255,.09);border-radius:16px;background:rgba(255,255,255,.07);backdrop-filter:blur(12px);text-align:center}
.time-box strong{display:block;font-family:Poppins,sans-serif;font-size:23px}
.time-box span{color:rgba(255,255,255,.46);font-size:8px;text-transform:uppercase}
.deal-price{display:flex;align-items:center;gap:10px;margin-bottom:22px}
.deal-price strong{font-family:Poppins,sans-serif;font-size:33px}
.deal-old-price{color:rgba(255,255,255,.4);text-decoration:line-through}

.testimonial-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.testimonial{
  padding:26px;border:1px solid var(--border);border-radius:var(--radius);
  background:var(--surface);box-shadow:var(--shadow-sm);transition:var(--transition)
}
.testimonial:hover{transform:translateY(-4px);box-shadow:var(--shadow)}
.testimonial-stars{color:#fbbf24;font-size:12px}
.testimonial-text{margin-top:15px;color:var(--muted);font-size:13px;line-height:1.75}
.testimonial-user{display:flex;align-items:center;gap:11px;margin-top:20px}
.testimonial-avatar{width:42px;height:42px;border-radius:50%;object-fit:cover}
.testimonial-name{font-size:12px;font-weight:800}
.testimonial-role{color:var(--muted);font-size:10px}

.newsletter{
  position:relative;overflow:hidden;padding:72px 30px;border-radius:var(--radius-lg);
  background:
    radial-gradient(circle at 8% 20%,rgba(34,211,238,.20),transparent 30%),
    radial-gradient(circle at 92% 80%,rgba(139,92,246,.28),transparent 34%),
    #0e1020;color:#fff;text-align:center;box-shadow:var(--shadow-lg)
}
.newsletter:before{
  content:"";position:absolute;width:260px;height:260px;left:-120px;top:-120px;border:1px solid rgba(255,255,255,.08);border-radius:50%
}
.newsletter h2{font-family:Poppins,sans-serif;font-size:clamp(30px,4vw,43px);letter-spacing:-.04em}
.newsletter p{margin-top:10px;color:rgba(255,255,255,.58)}
.newsletter-form{
  position:relative;display:flex;justify-content:center;max-width:570px;margin:25px auto 0;
  padding:5px;border:1px solid rgba(255,255,255,.10);border-radius:16px;background:rgba(255,255,255,.07)
}
.newsletter-form input{flex:1;min-width:0;padding:0 16px;border:0;outline:0;background:transparent;color:#fff}
.newsletter-form input::placeholder{color:rgba(255,255,255,.40)}
.newsletter-message{min-height:20px;margin-top:10px;font-size:11px}

footer{padding:70px 0 25px;border-top:1px solid var(--border);background:var(--surface)}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:50px}
.footer-brand p{max-width:340px;margin-top:14px;color:var(--muted);font-size:12px}
.footer-title{margin-bottom:15px;font-size:12px;font-weight:900}
.footer-links{display:grid;gap:9px}
.footer-links a{color:var(--muted);font-size:11px;transition:var(--transition)}
.footer-links a:hover{color:var(--primary);padding-left:3px}
.socials{display:flex;gap:8px;margin-top:20px}
.social{width:36px;height:36px;display:grid;place-items:center;border:1px solid var(--border);border-radius:11px;color:var(--muted);transition:var(--transition)}
.social:hover{background:var(--text);color:var(--surface);transform:translateY(-3px)}
.footer-bottom{display:flex;justify-content:space-between;gap:20px;margin-top:50px;padding-top:20px;border-top:1px solid var(--border);color:var(--muted);font-size:10px}

.overlay{
  position:fixed;inset:0;z-index:200;background:rgba(3,5,12,.56);
  opacity:0;visibility:hidden;transition:var(--transition);backdrop-filter:blur(4px)
}
.overlay.active{opacity:1;visibility:visible}
.cart-drawer{
  position:fixed;top:0;right:0;z-index:210;width:min(480px,100%);height:100vh;
  display:flex;flex-direction:column;background:var(--surface);
  border-left:1px solid var(--border);box-shadow:-25px 0 70px rgba(0,0,0,.22);
  transform:translateX(100%);transition:transform .35s cubic-bezier(.2,.7,.2,1)
}
.cart-drawer.active{transform:translateX(0)}
.cart-header{display:flex;align-items:center;justify-content:space-between;padding:23px;border-bottom:1px solid var(--border)}
.cart-header h2{font-family:Poppins,sans-serif;font-size:20px}
.close-btn{width:38px;height:38px;display:grid;place-items:center;border-radius:11px;background:var(--surface-muted);color:var(--text);cursor:pointer}
.cart-items{flex:1;overflow-y:auto;padding:20px}
.cart-item{display:grid;grid-template-columns:65px 1fr auto;gap:12px;padding:13px 0;border-bottom:1px solid var(--border)}
.cart-item img{width:65px;height:65px;border-radius:13px;object-fit:cover}
.cart-item-title{font-size:12px;font-weight:800}
.cart-item-price{margin-top:4px;color:var(--muted);font-size:10px}
.quantity{display:flex;align-items:center;gap:7px;margin-top:8px}
.quantity button{width:25px;height:25px;border-radius:7px;background:var(--surface-muted);color:var(--text);cursor:pointer}
.remove-item{color:var(--danger);background:transparent;cursor:pointer;font-size:11px}
.cart-empty{height:100%;display:grid;place-items:center;text-align:center;color:var(--muted)}
.cart-empty i{margin-bottom:10px;font-size:40px;opacity:.3}
.cart-footer{padding:20px;border-top:1px solid var(--border)}
.cart-total{display:flex;justify-content:space-between;margin-bottom:15px;font-family:Poppins,sans-serif}
.checkout-btn{width:100%}

.toast-container{position:fixed;right:20px;bottom:20px;z-index:500;display:grid;gap:9px}
.toast{
  display:flex;align-items:center;gap:10px;min-width:270px;padding:13px 16px;
  border:1px solid rgba(255,255,255,.08);border-radius:13px;background:#121522;color:#fff;
  box-shadow:var(--shadow-lg);font-size:11px;animation:toastIn .3s ease forwards
}
.toast i{color:#67e8f9}
@keyframes toastIn{from{opacity:0;transform:translateY(10px)}to{opacity:1;transform:translateY(0)}}

@media(max-width:1100px){
  .main-nav{display:none}
  .mobile-menu-btn{display:grid}
  .search-box{width:220px}
  .category-grid{grid-template-columns:repeat(3,1fr)}
  .product-grid{grid-template-columns:repeat(3,1fr)}
}
@media(max-width:900px){
  .trust-grid{grid-template-columns:repeat(2,1fr)}
  .trust-item:nth-child(2){border-right:0}
  .deal-card{grid-template-columns:1fr}
  .deal-image{min-height:330px}
  .testimonial-grid{grid-template-columns:1fr}
  .footer-grid{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:700px){
  .container{width:min(calc(100% - 30px),var(--container))}
  .topbar-links{display:none}
  .navbar{min-height:70px}
  .header-right .search-box{display:none}
  .hero{min-height:680px}
  .hero h1{font-size:46px}
  .hero-description{font-size:14px}
  .hero-buttons{flex-direction:column;align-items:stretch}
  .hero-buttons .btn{width:100%}
  .hero-stats{flex-wrap:wrap;gap:20px;margin-top:38px}
  .hero-stat{min-width:110px;padding:0 14px}
  .hero-stat:first-child{padding-left:0}
  .section{padding:75px 0}
  .category-grid{grid-template-columns:repeat(2,1fr);gap:10px}
  .product-grid{grid-template-columns:repeat(2,1fr);gap:11px}
  .product-image{height:195px}
  .product-body{padding:14px}
  .product-title{font-size:13px}
  .price{font-size:17px}
  .old-price{display:block;margin-left:0}
  .add-cart{font-size:10px}
  .product-toolbar{align-items:flex-start;flex-direction:column}
  .filter-buttons{width:100%;overflow-x:auto;flex-wrap:nowrap;padding-bottom:5px}
  .filter-btn{white-space:nowrap}
  .deal-content{padding:42px 24px}
  .deal-image{min-height:240px}
  .timer{gap:5px}
  .time-box{min-width:58px;padding:10px 5px}
  .time-box strong{font-size:18px}
  .newsletter{padding:50px 18px}
  .newsletter-form{flex-direction:column;padding:8px;border-radius:16px}
  .newsletter-form input{height:44px}
  .newsletter-form .btn{width:100%}
  .footer-grid{grid-template-columns:1fr;gap:30px}
  .footer-bottom{flex-direction:column}
}
@media(max-width:390px){
  .product-grid{grid-template-columns:1fr}
  .product-image{height:235px}
}

    </style>
</head>

<body class="nexus-redesign">

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="topbar">
    <div class="container topbar-inner">
        <div>
            🚚 Free shipping on orders over <strong>$50</strong>
        </div>

        <div class="topbar-links">
            <span>Track Order</span>
            <span>Help Center</span>
            <span>USD / EN</span>
        </div>
    </div>
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>
    <div class="container navbar">

        <div style="display:flex;align-items:center;gap:10px;">

            <button
                class="icon-button mobile-menu-btn"
                id="mobileMenuBtn"
                aria-label="Open menu"
            >
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="brand">
                <span class="brand-icon">
                    <i class="fa-solid fa-bag-shopping"></i>
                </span>

                <span>
                    Nexus<span>Shop</span>
                </span>
            </a>

        </div>


        <nav class="main-nav" id="mainNav">
            <ul>
                <li>
                    <a href="#home" class="active">
                        <i class="fa-solid fa-house"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#about">
                        About
                    </a>
                </li>
            </ul>
        </nav>


        <div class="header-right">

            <div class="search-box">
                <i class="fa-solid fa-magnifying-glass"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    autocomplete="off"
                >
            </div>

            <button
                class="icon-button"
                id="themeBtn"
                aria-label="Toggle dark mode"
            >
                <i class="fa-solid fa-moon"></i>
            </button>

            <button
                class="icon-button"
                aria-label="Wishlist"
                id="headerWishlist"
            >
                <i class="fa-regular fa-heart"></i>

                <span
                    class="count"
                    id="wishlistCount"
                    style="display:none"
                >
                    0
                </span>
            </button>

            <button
                class="icon-button"
                id="cartBtn"
                aria-label="Shopping cart"
            >
                <i class="fa-solid fa-bag-shopping"></i>

                <span
                    class="count"
                    id="cartCount"
                >
                    0
                </span>
            </button>

        </div>
    </div>


    <!-- Mobile Navigation -->

    <div
        id="mobileNav"
        style="
            display:none;
            border-top:1px solid var(--border);
            background:var(--surface);
        "
    >
        <div class="container" style="padding:12px 0;">
            <nav>
                <ul style="display:grid;gap:4px;">

                    <li>
                        <a
                            href="#home"
                            class="mobile-nav-link"
                            style="display:block;padding:12px;border-radius:10px;"
                        >
                            Home
                        </a>
                    </li>

                    <li>
                        <a
                            href="#categories"
                            class="mobile-nav-link"
                            style="display:block;padding:12px;border-radius:10px;"
                        >
                            Categories
                        </a>
                    </li>

                    <li>
                        <a
                            href="#products"
                            class="mobile-nav-link"
                            style="display:block;padding:12px;border-radius:10px;"
                        >
                            Trending Products
                        </a>
                    </li>

                    <li>
                        <a
                            href="#deals"
                            class="mobile-nav-link"
                            style="display:block;padding:12px;border-radius:10px;"
                        >
                            Deals
                        </a>
                    </li>

                    <li>
                        <a
                            href="#about"
                            class="mobile-nav-link"
                            style="display:block;padding:12px;border-radius:10px;"
                        >
                            About
                        </a>
                    </li>

                </ul>
            </nav>
        </div>
    </div>
</header>


<main id="home">

<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-badge">
                <i class="fa-solid fa-sparkles"></i>
                New season collection 2026
            </div>

            <h1>
                Premium picks.
                <span>Better shopping.</span>
            </h1>

            <p class="hero-description">
                Discover carefully selected fashion, technology,
                accessories and everyday essentials — all in one
                modern shopping experience.
            </p>

            <div class="hero-buttons">

                <button
                    class="btn btn-primary"
                    id="shopNowBtn"
                >
                    Shop Collection
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

                <button
                    class="btn btn-outline"
                    id="heroDealsBtn"
                >
                    <i class="fa-solid fa-bolt"></i>
                    View Flash Deals
                </button>

            </div>


            <div class="hero-stats">

                <div class="hero-stat">
                    <strong>10K+</strong>
                    <span>Happy customers</span>
                </div>

                <div class="hero-stat">
                    <strong>4.9/5</strong>
                    <span>Customer rating</span>
                </div>

                <div class="hero-stat">
                    <strong>24/7</strong>
                    <span>Customer support</span>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     TRUST STRIP
========================================================= -->
<section class="trust-strip" aria-label="Shopping benefits">
    <div class="container trust-grid">
        <div class="trust-item"><i class="fa-solid fa-truck-fast"></i><div><strong>Free & fast delivery</strong><span>On qualifying orders</span></div></div>
        <div class="trust-item"><i class="fa-solid fa-shield-halved"></i><div><strong>Secure checkout</strong><span>Your payment is protected</span></div></div>
        <div class="trust-item"><i class="fa-solid fa-rotate-left"></i><div><strong>Easy returns</strong><span>Simple 30-day returns</span></div></div>
        <div class="trust-item"><i class="fa-solid fa-headset"></i><div><strong>24/7 support</strong><span>We're here to help</span></div></div>
    </div>
</section>


<!-- =========================================================
     CATEGORIES
========================================================= -->

<section
    class="section"
    id="categories"
>

    <div class="container">

        <div class="section-header center">

            <span class="eyebrow">
                <i class="fa-solid fa-layer-group"></i>
                Explore
            </span>

            <h2 class="section-title">
                Shop by category
            </h2>

            <p class="section-description">
                Everything you need, organized into simple
                categories so you can find it faster.
            </p>

        </div>


        <div
            class="category-grid"
            id="categoryGrid"
        ></div>

    </div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section
    class="section"
    id="products"
    style="padding-top:20px;"
>

    <div class="container">

        <div class="section-header">

            <span class="eyebrow">
                <i class="fa-solid fa-fire"></i>
                Trending now
            </span>

            <h2 class="section-title">
                Popular products
            </h2>

            <p class="section-description" style="margin-left:0;">
                Customer favorites and trending products
                selected for this week.
            </p>

        </div>


        <div class="product-toolbar">

            <div
                class="result-count"
                id="resultCount"
            >
                Showing 8 products
            </div>


            <div
                class="filter-buttons"
                id="filterButtons"
            ></div>

        </div>


        <div
            class="product-grid"
            id="productGrid"
        ></div>

    </div>

</section>


<!-- =========================================================
     DEAL
========================================================= -->

<section
    class="section"
    id="deals"
    style="padding-top:25px;"
>

    <div class="container">

        <div class="section-header center">

            <span class="eyebrow">
                <i class="fa-solid fa-bolt"></i>
                Limited time
            </span>

            <h2 class="section-title">
                Flash sale
            </h2>

            <p class="section-description">
                Grab today's featured deal before the timer runs out.
            </p>

        </div>


        <div class="deal-card">

            <div class="deal-image"></div>

            <div class="deal-content">

                <span class="deal-label">
                    <i class="fa-solid fa-fire"></i>
                    Today's deal
                </span>

                <h2>
                    MacBook Air M2
                </h2>

                <p>
                    Lightweight. Powerful. Beautiful.
                    Get the M2-powered MacBook Air at a
                    limited-time price.
                </p>


                <div class="timer">

                    <div class="time-box">
                        <strong id="dealDays">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="time-box">
                        <strong id="dealHours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="time-box">
                        <strong id="dealMinutes">00</strong>
                        <span>Minutes</span>
                    </div>

                    <div class="time-box">
                        <strong id="dealSeconds">00</strong>
                        <span>Seconds</span>
                    </div>

                </div>


                <div class="deal-price">

                    <strong>$999</strong>

                    <span class="deal-old-price">
                        $1,199
                    </span>

                    <span
                        style="
                            padding:6px 9px;
                            border-radius:7px;
                            background:#ef4444;
                            color:white;
                            font-size:10px;
                            font-weight:800;
                        "
                    >
                        SAVE 17%
                    </span>

                </div>


                <button
                    class="btn btn-primary"
                    id="buyDealBtn"
                    style="width:max-content;"
                >
                    Add to Cart
                    <i class="fa-solid fa-cart-plus"></i>
                </button>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     TESTIMONIALS
========================================================= -->

<section class="section">

    <div class="container">

        <div class="section-header center">

            <span class="eyebrow">
                <i class="fa-solid fa-message"></i>
                Customer love
            </span>

            <h2 class="section-title">
                What customers say
            </h2>

            <p class="section-description">
                Real experiences from people who shop with us.
            </p>

        </div>


        <div class="testimonial-grid">

            <article class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p class="testimonial-text">
                    "Fast shipping, beautiful packaging and
                    excellent support. The whole experience
                    felt premium from start to finish."
                </p>

                <div class="testimonial-user">

                    <img
                        class="testimonial-avatar"
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                        alt="Ava Martin"
                    >

                    <div>
                        <div class="testimonial-name">
                            Ava Martin
                        </div>

                        <div class="testimonial-role">
                            Verified customer
                        </div>
                    </div>

                </div>

            </article>


            <article class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p class="testimonial-text">
                    "The product selection is fantastic.
                    Checkout was incredibly smooth and
                    my order arrived earlier than expected."
                </p>

                <div class="testimonial-user">

                    <img
                        class="testimonial-avatar"
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="Michael Lee"
                    >

                    <div>
                        <div class="testimonial-name">
                            Michael Lee
                        </div>

                        <div class="testimonial-role">
                            Frequent customer
                        </div>
                    </div>

                </div>

            </article>


            <article class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p class="testimonial-text">
                    "I love how easy it is to browse everything.
                    The deals are genuinely useful and the
                    interface looks fantastic on my phone."
                </p>

                <div class="testimonial-user">

                    <img
                        class="testimonial-avatar"
                        src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                        alt="Sophia Williams"
                    >

                    <div>
                        <div class="testimonial-name">
                            Sophia Williams
                        </div>

                        <div class="testimonial-role">
                            Verified customer
                        </div>
                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <span class="eyebrow">
                <i class="fa-regular fa-envelope"></i>
                Newsletter
            </span>

            <h2 style="margin-top:14px;">
                Get the good stuff first.
            </h2>

            <p>
                New arrivals, exclusive offers and weekly deals.
                No spam.
            </p>


            <form
                class="newsletter-form"
                id="newsletterForm"
            >

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Your email address"
                    required
                >

                <button
                    class="btn btn-primary"
                    type="submit"
                >
                    Subscribe
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

            </form>

            <div
                class="newsletter-message"
                id="newsletterMessage"
            ></div>

        </div>

    </div>

</section>


<!-- =========================================================
     ABOUT / TRUST
========================================================= -->

<section
    class="section"
    id="about"
    style="padding-top:20px;"
>

    <div class="container">

        <div
            style="
                display:grid;
                grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
                gap:16px;
            "
        >

            <div
                style="
                    padding:25px;
                    background:var(--surface);
                    border:1px solid var(--border);
                    border-radius:var(--radius);
                "
            >
                <i
                    class="fa-solid fa-truck-fast"
                    style="color:var(--accent);font-size:25px;"
                ></i>

                <h3 style="margin-top:15px;font-size:15px;">
                    Fast delivery
                </h3>

                <p
                    class="muted"
                    style="margin-top:7px;font-size:12px;"
                >
                    Reliable shipping with real-time order tracking.
                </p>
            </div>


            <div
                style="
                    padding:25px;
                    background:var(--surface);
                    border:1px solid var(--border);
                    border-radius:var(--radius);
                "
            >
                <i
                    class="fa-solid fa-shield-halved"
                    style="color:var(--accent);font-size:25px;"
                ></i>

                <h3 style="margin-top:15px;font-size:15px;">
                    Secure checkout
                </h3>

                <p
                    class="muted"
                    style="margin-top:7px;font-size:12px;"
                >
                    Your payment and personal information stay protected.
                </p>
            </div>


            <div
                style="
                    padding:25px;
                    background:var(--surface);
                    border:1px solid var(--border);
                    border-radius:var(--radius);
                "
            >
                <i
                    class="fa-solid fa-rotate-left"
                    style="color:var(--accent);font-size:25px;"
                ></i>

                <h3 style="margin-top:15px;font-size:15px;">
                    Easy returns
                </h3>

                <p
                    class="muted"
                    style="margin-top:7px;font-size:12px;"
                >
                    Simple returns and helpful customer support.
                </p>
            </div>


            <div
                style="
                    padding:25px;
                    background:var(--surface);
                    border:1px solid var(--border);
                    border-radius:var(--radius);
                "
            >
                <i
                    class="fa-solid fa-headset"
                    style="color:var(--accent);font-size:25px;"
                ></i>

                <h3 style="margin-top:15px;font-size:15px;">
                    24/7 support
                </h3>

                <p
                    class="muted"
                    style="margin-top:7px;font-size:12px;"
                >
                    We're always here when you need us.
                </p>
            </div>

        </div>

    </div>

</section>

</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="brand">
                    <span class="brand-icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </span>

                    <span>
                        Nexus<span>Shop</span>
                    </span>
                </a>

                <p>
                    A modern e-commerce experience built for
                    discovering products you'll love.
                </p>

                <div class="socials">

                    <a class="social" href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a class="social" href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a class="social" href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a class="social" href="#">
                        <i class="fa-brands fa-linkedin-in"></i>
                    </a>

                </div>

            </div>


            <div>
                <div class="footer-title">
                    Shop
                </div>

                <div class="footer-links">
                    <a href="#products">All Products</a>
                    <a href="#categories">Categories</a>
                    <a href="#deals">Deals</a>
                    <a href="#">New Arrivals</a>
                </div>
            </div>


            <div>
                <div class="footer-title">
                    Company
                </div>

                <div class="footer-links">
                    <a href="#about">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Press</a>
                    <a href="#">Contact</a>
                </div>
            </div>


            <div>
                <div class="footer-title">
                    Support
                </div>

                <div class="footer-links">
                    <a href="#">Help Center</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">Privacy</a>
                </div>
            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NexusShop.
                All rights reserved.
            </span>

            <span>
                Designed for a modern shopping experience.
            </span>

        </div>

    </div>

</footer>


<!-- =========================================================
     CART OVERLAY
========================================================= -->

<div
    class="overlay"
    id="cartOverlay"
></div>


<!-- =========================================================
     CART DRAWER
========================================================= -->

<aside
    class="cart-drawer"
    id="cartDrawer"
    aria-label="Shopping cart"
>

    <div class="cart-header">

        <h2>
            Your Cart
        </h2>

        <button
            class="close-btn"
            id="closeCart"
            aria-label="Close cart"
        >
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>


    <div
        class="cart-items"
        id="cartItems"
    ></div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>
                Total
            </span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button
            class="btn btn-primary checkout-btn"
            id="checkoutBtn"
        >
            Proceed to Checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- =========================================================
     TOASTS
========================================================= -->

<div
    class="toast-container"
    id="toastContainer"
></div>


<script>
/* ============================================================
   PRODUCT DATA
============================================================ */

const CATEGORIES = [
    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen-button",
        description: "Latest phones"
    },
    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop",
        description: "Powerful computers"
    },
    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt",
        description: "Modern fashion"
    },
    {
        id: "gadgets",
        name: "Audio & Gadgets",
        icon: "fa-headphones",
        description: "Smart gadgets"
    },
    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints",
        description: "Shoes & sneakers"
    },
    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-clock",
        description: "Complete your look"
    }
];


const PRODUCTS = [
    {
        id: 1,
        title: "iPhone 14 Pro Max",
        category: "phones",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "NEW",
        image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        category: "laptops",
        price: 1999,
        rating: 5,
        reviews: 86,
        badge: "POPULAR",
        image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        category: "accessories",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        sale: true,
        image: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        category: "footwear",
        price: 150,
        rating: 4,
        reviews: 53,
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        category: "gadgets",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "PRO",
        image: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 6,
        title: "Premium Fragrance",
        category: "accessories",
        price: 120,
        rating: 5,
        reviews: 189,
        image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 7,
        title: "Urban Travel Backpack",
        category: "accessories",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "SALE",
        sale: true,
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        category: "gadgets",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "BESTSELLER",
        image: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=800&q=85"
    }
];


/* ============================================================
   STATE
============================================================ */

let cart = [];

let wishlist = new Set();

let currentFilter = "all";


/* ============================================================
   DOM
============================================================ */

const categoryGrid =
    document.getElementById("categoryGrid");

const productGrid =
    document.getElementById("productGrid");

const filterButtons =
    document.getElementById("filterButtons");

const resultCount =
    document.getElementById("resultCount");

const searchInput =
    document.getElementById("searchInput");

const cartDrawer =
    document.getElementById("cartDrawer");

const cartOverlay =
    document.getElementById("cartOverlay");

const cartItems =
    document.getElementById("cartItems");

const cartCount =
    document.getElementById("cartCount");

const cartTotal =
    document.getElementById("cartTotal");

const wishlistCount =
    document.getElementById("wishlistCount");

const toastContainer =
    document.getElementById("toastContainer");


/* ============================================================
   HELPERS
============================================================ */

function escapeHtml(value) {

    return String(value).replace(
        /[&<>"']/g,
        char => ({
            "&": "&amp;",
            "<": "&lt;",
            ">": "&gt;",
            '"': "&quot;",
            "'": "&#039;"
        }[char])
    );
}


function formatPrice(value) {

    return "$" + Number(value).toLocaleString(
        "en-US",
        {
            maximumFractionDigits: 0
        }
    );
}


function getProduct(id) {

    return PRODUCTS.find(
        product => product.id === Number(id)
    );
}


/* ============================================================
   TOAST
============================================================ */

function showToast(message, icon = "fa-circle-check") {

    const toast =
        document.createElement("div");

    toast.className = "toast";

    toast.innerHTML = `
        <i class="fa-solid ${icon}"></i>
        <span>${escapeHtml(message)}</span>
    `;

    toastContainer.appendChild(toast);

    setTimeout(() => {

        toast.style.opacity = "0";
        toast.style.transform = "translateY(10px)";

        setTimeout(() => {
            toast.remove();
        }, 250);

    }, 2500);
}


/* ============================================================
   CATEGORIES
============================================================ */

function renderCategories() {

    categoryGrid.innerHTML =
        CATEGORIES.map(category => `

            <article
                class="category-card"
                data-category="${category.id}"
            >

                <div class="category-icon">
                    <i class="fa-solid ${category.icon}"></i>
                </div>

                <h3>
                    ${escapeHtml(category.name)}
                </h3>

                <p>
                    ${escapeHtml(category.description)}
                </p>

            </article>

        `).join("");


    categoryGrid
        .querySelectorAll(".category-card")
        .forEach(card => {

            card.addEventListener(
                "click",
                () => {

                    const category =
                        card.dataset.category;

                    currentFilter = category;

                    renderFilters();
                    renderProducts();

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );

        });
}


/* ============================================================
   FILTER BUTTONS
============================================================ */

function renderFilters() {

    const filters = [
        {
            id: "all",
            name: "All"
        },
        ...CATEGORIES.map(category => ({
            id: category.id,
            name: category.name
        }))
    ];


    filterButtons.innerHTML =
        filters.map(filter => `

            <button
                class="filter-btn ${
                    currentFilter === filter.id
                        ? "active"
                        : ""
                }"
                data-filter="${filter.id}"
            >
                ${escapeHtml(filter.name)}
            </button>

        `).join("");


    filterButtons
        .querySelectorAll(".filter-btn")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    currentFilter =
                        button.dataset.filter;

                    renderFilters();
                    renderProducts();

                }
            );

        });
}


/* ============================================================
   PRODUCT FILTERING
============================================================ */

function getFilteredProducts() {

    let products = [...PRODUCTS];


    if (currentFilter !== "all") {

        products =
            products.filter(
                product =>
                    product.category ===
                    currentFilter
            );

    }


    const query =
        searchInput.value
            .trim()
            .toLowerCase();


    if (query) {

        products =
            products.filter(product => {

                const category =
                    CATEGORIES.find(
                        item =>
                            item.id ===
                            product.category
                    );

                return (
                    product.title
                        .toLowerCase()
                        .includes(query)
                    ||
                    product.category
                        .toLowerCase()
                        .includes(query)
                    ||
                    category?.name
                        .toLowerCase()
                        .includes(query)
                );

            });

    }


    return products;
}


/* ============================================================
   PRODUCTS
============================================================ */

function renderProducts() {

    const products =
        getFilteredProducts();


    resultCount.textContent =
        `Showing ${products.length} ${
            products.length === 1
                ? "product"
                : "products"
        }`;


    if (!products.length) {

        productGrid.innerHTML = `

            <div class="empty-products">

                <i class="fa-solid fa-box-open"></i>

                <h3>
                    No products found
                </h3>

                <p style="margin-top:6px;">
                    Try another search or category.
                </p>

            </div>

        `;

        return;
    }


    productGrid.innerHTML =
        products.map(product => {

            const category =
                CATEGORIES.find(
                    item =>
                        item.id ===
                        product.category
                );


            const isWishlisted =
                wishlist.has(product.id);


            return `

                <article
                    class="product-card"
                    data-product="${product.id}"
                >

                    <div class="product-image">

                        ${
                            product.badge
                            ?
                            `
                            <span
                                class="product-badge ${
                                    product.sale
                                        ? "sale"
                                        : ""
                                }"
                            >
                                ${escapeHtml(product.badge)}
                            </span>
                            `
                            :
                            ""
                        }


                        <button
                            class="wishlist-btn ${
                                isWishlisted
                                    ? "active"
                                    : ""
                            }"
                            data-wishlist="${product.id}"
                            aria-label="Add to wishlist"
                        >
                            <i class="${
                                isWishlisted
                                    ? "fa-solid"
                                    : "fa-regular"
                            } fa-heart"></i>
                        </button>


                        <img
                            src="${product.image}"
                            alt="${escapeHtml(product.title)}"
                            loading="lazy"
                        >

                    </div>


                    <div class="product-body">

                        <div class="product-category">
                            ${escapeHtml(category?.name || product.category)}
                        </div>

                        <h3 class="product-title">
                            ${escapeHtml(product.title)}
                        </h3>


                        <div class="rating-row">

                            <div class="stars">
                                ${"★".repeat(
                                    Math.round(product.rating)
                                )}
                            </div>

                            <span class="review-count">
                                ${product.rating.toFixed(1)}
                                (${product.reviews})
                            </span>

                        </div>


                        <div class="price-row">

                            <div>

                                <span class="price">
                                    ${formatPrice(product.price)}
                                </span>

                                ${
                                    product.oldPrice
                                    ?
                                    `
                                    <span class="old-price">
                                        ${formatPrice(product.oldPrice)}
                                    </span>
                                    `
                                    :
                                    ""
                                }

                            </div>

                        </div>


                        <button
                            class="add-cart"
                            data-add-cart="${product.id}"
                        >
                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart
                        </button>

                    </div>

                </article>

            `;

        }).join("");


    attachProductEvents();
}


/* ============================================================
   PRODUCT EVENTS
============================================================ */

function attachProductEvents() {

    productGrid
        .querySelectorAll("[data-add-cart]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    addToCart(
                        Number(
                            button.dataset.addCart
                        )
                    );

                }
            );

        });


    productGrid
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    toggleWishlist(
                        Number(
                            button.dataset.wishlist
                        )
                    );

                }
            );

        });
}


/* ============================================================
   WISHLIST
============================================================ */

function toggleWishlist(productId) {

    const product =
        getProduct(productId);


    if (!product) {
        return;
    }


    if (wishlist.has(productId)) {

        wishlist.delete(productId);

        showToast(
            `${product.title} removed from wishlist.`,
            "fa-heart"
        );

    } else {

        wishlist.add(productId);

        showToast(
            `${product.title} added to wishlist.`,
            "fa-heart"
        );

    }


    updateWishlistCount();

    renderProducts();
}


function updateWishlistCount() {

    const count =
        wishlist.size;


    wishlistCount.textContent =
        count;


    wishlistCount.style.display =
        count
            ? "grid"
            : "none";
}


/* ============================================================
   CART
============================================================ */

function addToCart(productId) {

    const product =
        getProduct(productId);


    if (!product) {
        return;
    }


    const existing =
        cart.find(
            item =>
                item.id === productId
        );


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            id: productId,
            quantity: 1
        });

    }


    updateCart();

    showToast(
        `${product.title} added to cart.`,
        "fa-cart-plus"
    );

    openCart();
}


function removeFromCart(productId) {

    cart =
        cart.filter(
            item =>
                item.id !== productId
        );

    updateCart();
}


function changeQuantity(productId, amount) {

    const item =
        cart.find(
            cartItem =>
                cartItem.id === productId
        );


    if (!item) {
        return;
    }


    item.quantity += amount;


    if (item.quantity <= 0) {

        removeFromCart(productId);

    } else {

        updateCart();

    }
}


function updateCart() {

    const totalItems =
        cart.reduce(
            (sum, item) =>
                sum + item.quantity,
            0
        );


    const totalPrice =
        cart.reduce(
            (sum, item) => {

                const product =
                    getProduct(item.id);

                return sum +
                    (product.price *
                    item.quantity);

            },
            0
        );


    cartCount.textContent =
        totalItems;


    cartTotal.textContent =
        formatPrice(totalPrice);


    if (!cart.length) {

        cartItems.innerHTML = `

            <div class="cart-empty">

                <div>

                    <i class="fa-solid fa-bag-shopping"></i>

                    <h3>
                        Your cart is empty
                    </h3>

                    <p style="margin-top:5px;">
                        Add something you love.
                    </p>

                </div>

            </div>

        `;

        return;
    }


    cartItems.innerHTML =
        cart.map(item => {

            const product =
                getProduct(item.id);


            return `

                <div class="cart-item">

                    <img
                        src="${product.image}"
                        alt="${escapeHtml(product.title)}"
                    >


                    <div>

                        <div class="cart-item-title">
                            ${escapeHtml(product.title)}
                        </div>

                        <div class="cart-item-price">
                            ${formatPrice(product.price)}
                        </div>


                        <div class="quantity">

                            <button
                                data-minus="${product.id}"
                            >
                                −
                            </button>

                            <span>
                                ${item.quantity}
                            </span>

                            <button
                                data-plus="${product.id}"
                            >
                                +
                            </button>

                        </div>

                    </div>


                    <button
                        class="remove-item"
                        data-remove="${product.id}"
                        aria-label="Remove item"
                    >
                        <i class="fa-solid fa-trash"></i>
                    </button>

                </div>

            `;

        }).join("");


    cartItems
        .querySelectorAll("[data-minus]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    changeQuantity(
                        Number(
                            button.dataset.minus
                        ),
                        -1
                    );

                }
            );

        });


    cartItems
        .querySelectorAll("[data-plus]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    changeQuantity(
                        Number(
                            button.dataset.plus
                        ),
                        1
                    );

                }
            );

        });


    cartItems
        .querySelectorAll("[data-remove]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    removeFromCart(
                        Number(
                            button.dataset.remove
                        )
                    );

                }
            );

        });
}


/* ============================================================
   CART DRAWER
============================================================ */

function openCart() {

    cartDrawer.classList.add("active");
    cartOverlay.classList.add("active");

    document.body.style.overflow =
        "hidden";
}


function closeCart() {

    cartDrawer.classList.remove("active");
    cartOverlay.classList.remove("active");

    document.body.style.overflow =
        "";
}


document
    .getElementById("cartBtn")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("closeCart")
    .addEventListener(
        "click",
        closeCart
    );


cartOverlay.addEventListener(
    "click",
    closeCart
);


/* ============================================================
   CHECKOUT
============================================================ */

document
    .getElementById("checkoutBtn")
    .addEventListener(
        "click",
        () => {

            if (!cart.length) {

                showToast(
                    "Your cart is empty.",
                    "fa-cart-shopping"
                );

                return;
            }


            showToast(
                "Checkout demo — connect your payment system here.",
                "fa-credit-card"
            );

        }
    );


/* ============================================================
   SEARCH
============================================================ */

let searchTimer;


searchInput.addEventListener(
    "input",
    () => {

        clearTimeout(searchTimer);

        searchTimer =
            setTimeout(
                () => {

                    renderProducts();

                },
                180
            );

    }
);


/* ============================================================
   SHOP BUTTON
============================================================ */

document
    .getElementById("shopNowBtn")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


document
    .getElementById("heroDealsBtn")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* ============================================================
   FLASH DEAL
============================================================ */

document
    .getElementById("buyDealBtn")
    .addEventListener(
        "click",
        () => {

            addToCart(2);

        }
    );


function startDealTimer() {

    const target =
        Date.now() +
        (
            24 * 60 * 60 * 1000
        ) +
        (
            36 * 60 * 1000
        );


    function updateTimer() {

        const difference =
            target - Date.now();


        if (difference <= 0) {

            document.getElementById(
                "dealDays"
            ).textContent = "00";

            document.getElementById(
                "dealHours"
            ).textContent = "00";

            document.getElementById(
                "dealMinutes"
            ).textContent = "00";

            document.getElementById(
                "dealSeconds"
            ).textContent = "00";

            return;

        }


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (
                    difference /
                    (1000 * 60 * 60)
                ) % 24
            );


        const minutes =
            Math.floor(
                (
                    difference /
                    (1000 * 60)
                ) % 60
            );


        const seconds =
            Math.floor(
                (
                    difference /
                    1000
                ) % 60
            );


        document.getElementById(
            "dealDays"
        ).textContent =
            String(days).padStart(2, "0");


        document.getElementById(
            "dealHours"
        ).textContent =
            String(hours).padStart(2, "0");


        document.getElementById(
            "dealMinutes"
        ).textContent =
            String(minutes).padStart(2, "0");


        document.getElementById(
            "dealSeconds"
        ).textContent =
            String(seconds).padStart(2, "0");

    }


    updateTimer();

    setInterval(updateTimer, 1000);
}


/* ============================================================
   NEWSLETTER
============================================================ */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();


            const email =
                document
                    .getElementById(
                        "newsletterEmail"
                    )
                    .value
                    .trim();


            const message =
                document.getElementById(
                    "newsletterMessage"
                );


            if (!email) {

                message.textContent =
                    "Please enter your email.";

                message.style.color =
                    "#ff9b9b";

                return;
            }


            message.textContent =
                "You're subscribed! Welcome to NexusShop.";

            message.style.color =
                "#9ee7ff";


            event.target.reset();

        }
    );


/* ============================================================
   DARK MODE
============================================================ */

const themeBtn =
    document.getElementById(
        "themeBtn"
    );


const savedTheme =
    localStorage.getItem(
        "nexus-theme"
    );


if (savedTheme === "dark") {

    document.body.classList.add(
        "dark"
    );

    themeBtn.innerHTML =
        '<i class="fa-solid fa-sun"></i>';

}


themeBtn.addEventListener(
    "click",
    () => {

        document.body.classList.toggle(
            "dark"
        );


        const isDark =
            document.body.classList.contains(
                "dark"
            );


        localStorage.setItem(
            "nexus-theme",
            isDark
                ? "dark"
                : "light"
        );


        themeBtn.innerHTML =
            isDark
                ?
                '<i class="fa-solid fa-sun"></i>'
                :
                '<i class="fa-solid fa-moon"></i>';

    }
);


/* ============================================================
   MOBILE MENU
============================================================ */

const mobileMenuBtn =
    document.getElementById(
        "mobileMenuBtn"
    );


const mobileNav =
    document.getElementById(
        "mobileNav"
    );


mobileMenuBtn.addEventListener(
    "click",
    () => {

        const isOpen =
            mobileNav.style.display ===
            "block";


        mobileNav.style.display =
            isOpen
                ? "none"
                : "block";


        mobileMenuBtn.innerHTML =
            isOpen
                ?
                '<i class="fa-solid fa-bars"></i>'
                :
                '<i class="fa-solid fa-xmark"></i>';

    }
);


document
    .querySelectorAll(".mobile-nav-link")
    .forEach(link => {

        link.addEventListener(
            "click",
            () => {

                mobileNav.style.display =
                    "none";

                mobileMenuBtn.innerHTML =
                    '<i class="fa-solid fa-bars"></i>';

            }
        );

    });


/* ============================================================
   HEADER WISHLIST
============================================================ */

document
    .getElementById("headerWishlist")
    .addEventListener(
        "click",
        () => {

            if (!wishlist.size) {

                showToast(
                    "Your wishlist is empty.",
                    "fa-heart"
                );

                return;
            }


            currentFilter = "all";

            searchInput.value = "";

            renderFilters();


            const wishedProducts =
                PRODUCTS.filter(
                    product =>
                        wishlist.has(product.id)
                );


            productGrid.innerHTML =
                wishedProducts.length
                    ?
                    wishedProducts.map(
                        product =>
                            createProductHTML(product)
                    ).join("")
                    :
                    `
                    <div class="empty-products">
                        <i class="fa-regular fa-heart"></i>
                        <h3>No wishlist items</h3>
                    </div>
                    `;


            attachProductEvents();


            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* ============================================================
   PRODUCT HTML HELPER
============================================================ */

function createProductHTML(product) {

    const category =
        CATEGORIES.find(
            item =>
                item.id ===
                product.category
        );


    const isWishlisted =
        wishlist.has(product.id);


    return `

        <article
            class="product-card"
        >

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `
                    <span
                        class="product-badge ${
                            product.sale
                                ? "sale"
                                : ""
                        }"
                    >
                        ${escapeHtml(product.badge)}
                    </span>
                    `
                    :
                    ""
                }

                <button
                    class="wishlist-btn ${
                        isWishlisted
                            ? "active"
                            : ""
                    }"
                    data-wishlist="${product.id}"
                >
                    <i class="${
                        isWishlisted
                            ? "fa-solid"
                            : "fa-regular"
                    } fa-heart"></i>
                </button>

                <img
                    src="${product.image}"
                    alt="${escapeHtml(product.title)}"
                >

            </div>

            <div class="product-body">

                <div class="product-category">
                    ${escapeHtml(category?.name || "")}
                </div>

                <h3 class="product-title">
                    ${escapeHtml(product.title)}
                </h3>

                <div class="rating-row">
                    <div class="stars">
                        ${"★".repeat(
                            Math.round(product.rating)
                        )}
                    </div>

                    <span class="review-count">
                        ${product.rating.toFixed(1)}
                        (${product.reviews})
                    </span>
                </div>

                <div class="price-row">

                    <div>

                        <span class="price">
                            ${formatPrice(product.price)}
                        </span>

                        ${
                            product.oldPrice
                            ?
                            `
                            <span class="old-price">
                                ${formatPrice(product.oldPrice)}
                            </span>
                            `
                            :
                            ""
                        }

                    </div>

                </div>

                <button
                    class="add-cart"
                    data-add-cart="${product.id}"
                >
                    <i class="fa-solid fa-cart-plus"></i>
                    Add to Cart
                </button>

            </div>

        </article>
    `;
}


/* ============================================================
   YEAR
============================================================ */

document.getElementById(
    "year"
).textContent =
    new Date().getFullYear();


/* ============================================================
   INIT
============================================================ */

function init() {

    renderCategories();

    renderFilters();

    renderProducts();

    updateCart();

    updateWishlistCount();

    startDealTimer();

}


init();

</script>

</body>
</html>
