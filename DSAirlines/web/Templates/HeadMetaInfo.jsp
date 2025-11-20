<!-- META -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="icon" href="https://www-turkishairlines.akamaized.net/theme/img/icons/favicon.ico">

<!-- Bootstrap -->
<link rel="stylesheet" 
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
      crossorigin="anonymous">

<!-- GLOBAL DARK ADMIN STYLE -->
<style>
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        background: #000 url('https://images.unsplash.com/photo-1508614999368-9260051291ea?auto=format&fit=crop&w=1950&q=80') no-repeat center center fixed;
        background-size: cover;
    }

    .main-wrapper {
        flex: 1;
    }

    /* SIDEBAR */
    .admin-sidebar {
        margin: 25px;
        padding: 25px 18px;
        background: rgba(0,0,0,0.75);
        border-radius: 14px;
        backdrop-filter: blur(4px);
        height: fit-content;
        min-width: 180px;
    }

    .admin-item {
        background: rgba(255,255,255,0.08) !important;
        border: none !important;
        color: #fff !important;
        font-weight: 600;
        margin-bottom: 10px;
        padding: 12px 10px;
        border-radius: 10px !important;
        transition: 0.25s ease;
    }

    .admin-item:hover {
        background: rgba(255,255,255,0.25) !important;
        transform: translateX(5px);
    }

    /* CONTENT WRAPPER */
    .admin-content {
        background: rgba(0,0,0,0.55);
        padding: 25px;
        margin: 25px 25px 25px 0;
        border-radius: 14px;
        backdrop-filter: blur(4px);
        color: #fff;
    }

    /* TABLE MODERN */
    .table-modern {
        background: rgba(0,0,0,0.25);
        color: #fff;
    }

    .table-modern thead th {
        background: rgba(255,255,255,0.08);
        color: #ddd;
        text-align: center;
        border-bottom: 2px solid #444 !important;
    }

    .table-modern tbody td {
        vertical-align: middle;
        color: #eee;
    }

    .table-modern tbody td input {
        width: 100%;
        padding: 6px 8px;
        background: rgba(255,255,255,0.15);
        border: 1px solid #666;
        color: #fff;
        border-radius: 6px;
    }

    /* BUTTON */
    .btn-primary {
        background: #0055ff !important;
        border: none !important;
        font-weight: 600;
        padding: 8px 18px;
        border-radius: 8px;
    }

    .btn-primary:hover {
        background: #1a6aff !important;
    }
</style>
