$(document).on('turbolinks:load', function(){
    $(window).on('load',function(){
    $('.typ').children().andSelf().contents().each(function() {
      if (this.nodeType == 3) {
        $(this).replaceWith($(this).text().replace(/(\S)/g, '<span>$1</span>'));
      }
    });
    $('.typ').css({'opacity':1});
    for (var i = 0; i <= $('.typ').children().size(); i++) {
      $('.typ').children('span:eq('+i+')').delay(50*i).animate({'opacity':1},50);
    };
  });
});