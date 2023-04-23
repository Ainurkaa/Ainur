<form class="row g-3" action = "/addItem" method="post">
    <div style=" margin-top:30px">
        <label for="name" class="form-label">Name:</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Insert name">
    </div>
    <div style=" margin-top:30px">
        <label for="price" class="form-label">Description:</label>
        <input type="text" class="form-control" id="price" name="price" style="padding: 70px" placeholder="Insert description">
    </div>
    <div style="margin-top:30px">
        <label for="amount" class="form-label">Deadline:</label>
        <input type="date" step = "0.01" class="form-control" id="amount" name="amount">
    </div>
</form>