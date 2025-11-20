<!-- MANAGER SIDEBAR -->
<style>
    .manager-sidebar {
        margin: 20px;
        padding: 25px 15px;
        background: rgba(0, 0, 0, 0.7);
        border-radius: 14px;
        text-align: center;
        backdrop-filter: blur(4px);
    }

    .manager-item {
        background: rgba(255, 255, 255, 0.08) !important;
        margin-bottom: 12px;
        border: none !important;
        color: #fff !important;
        font-weight: 600;
        padding: 12px 10px;
        border-radius: 10px !important;
        transition: 0.25s ease;
    }

    .manager-item:hover {
        background: rgba(255, 255, 255, 0.22) !important;
        transform: translateX(5px);
    }
</style>

<div class="col-md-2 col-lg-2">
    <div class="manager-sidebar">

        <a class="list-group-item manager-item" href="ApproveFeatures.jsp">
            Approve Features
        </a>

        <a class="list-group-item manager-item" href="ApproveSeats.jsp">
            Approve Seats
        </a>

        <a class="list-group-item manager-item" href="Logout">
            Logout
        </a>

    </div>
</div>
