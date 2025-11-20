<style>
    /* Sidebar Admin (dari kode kamu sebelumnya) */
    .admin-sidebar {
        margin: 20px;
        padding: 25px 15px;
        background: rgba(0, 0, 0, 0.7);
        border-radius: 14px;
        text-align: center;
        backdrop-filter: blur(3px);
    }

    .admin-item {
        background: rgba(255, 255, 255, 0.08) !important;
        margin-bottom: 10px;
        border: none !important;
        color: white !important;
        font-weight: 600;
        padding: 12px 10px;
        border-radius: 8px !important;
        transition: .25s ease;
    }

    .admin-item:hover {
        background: rgba(255, 255, 255, 0.25) !important;
        transform: translateX(4px);
    }

    /* HEADER STYLE */
    .admin-header {
        background: #000;
        border-bottom: 2px solid #333;
        padding: 12px 0;
    }

    .admin-header .navbar-brand span {
        font-size: 1.35rem;
        letter-spacing: 1.2px;
        font-weight: 600;
        color: #fff;
    }

    .admin-header img {
        height: 42px;
        filter: drop-shadow(0 0 4px rgba(255,255,255,0.2));
    }

    /* untuk membatasi container agar tidak terlalu melebar */
    .admin-header .container {
        max-width: 1100px;
    }
</style>

<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background:#000; border-bottom:2px solid #444; padding:10px 0;">

        <a class="navbar-brand d-flex align-items-center" href="home.jsp" style="color:white;">
            <img src="https://www.shutterstock.com/image-vector/d-s-ds-logo-initial-600nw-1438028612.jpg"
                 alt="DS Airlines"
                 style="height:45px; margin-right:10px; border-radius:6px;">
            <span style="font-size:1.3rem; letter-spacing:1px;">DS Airlines</span>
        </a>

    </nav>
</header>

