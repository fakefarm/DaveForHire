(function(){

  $(document).on('click', 'nav ul li a.dynamic', function(e){
    e.preventDefault();
    var url = $(this).attr("href");
    $(url).slideToggle().siblings().not(this).slideUp();
  })
})();



