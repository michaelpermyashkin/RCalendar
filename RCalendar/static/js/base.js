$('#menu-tabs .nav-link').click(function() {
    $('#menu-tabs .nav-link').each(function() {
        $(this).removeClass('active');
    });

    $(this).addClass('active');
});