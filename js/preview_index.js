$(document).ready(function() {
  console.log(schools[3]);

  // select text in field on focus
  // NOTE: input:text works, but not textarea
  $('textarea, input:text').focus(function() {
    $(this).select();
  });

  // prep the form to be opened as a dialog modal
  $('.dialog-form').dialog({
    autoOpen: false,
    height: 'auto',
    width: 'auto',
    modal: true,
    show: {
      effect: 'fade',
      duration: 300
    },
    hide: {
      effect: 'fade',
      duration: 300
    }
  });

  // provide visual feedback on editable areas
  $('.selectable').hover(
    function() { // mouse in
      $(this).css({
        'opacity': '0.5',
        'cursor': 'pointer'
      });
    }, function() { // mouse out
      $(this).css('opacity', '1.0');
    }
  );

  /*
   * Edit flag
   */
  $('#connections_flag').click(function(event) {
    event.preventDefault();
    //var edition = $(this).parent().attr('title').split(':')[2].trim();
    
    $('#connections_flag_edit').dialog('open');
  });

  /*
   * Edit edition flag
   */
  $('#connections_edition_flag').click(function() {
    //console.log('connections edition flag clicked');
    $('#connections_quarter_edit').dialog('open');
  });


  /*
   * Edit lead_in
   */
  $('#lead_in').click(function() {

    // grab the lead_in text and put it in the textarea
    var text = $('#lead_in').html().trim();
    $('#lead_in_text').val(text);
    // open the form as a dialog modal
    $('#lead_in_edit').dialog('open');
  });


  /*
   * Edit kicker
   */
  $('#kicker').click(function() {

    // grab the lead_in text and put it in the textarea
    var text = $('#kicker').html().trim();
    $('#kicker_text').val(text);

    // open the form as a dialog modal
    $('#kicker_edit').dialog('open');
  });

  /*
   * Edit headline
   */
  $('#main_body').click(function() {

    console.log(this);
    // grab the lead_in text and put it in the textarea
    var headline = $(this).find('h2').html().trim();
    console.log(headline);
    $('#headline_text').val(headline);

    var body = $('#main_body p, #main_body h2');
    var body = $(this).find('p').find('ul');
    //var body = $(this).find('p').html().trim() + $(this).find('ul').html().trim();
    //var body = $('#main_body p, #main_body li').html().trim();
    $('#main_body_text').val(body);
    console.log(body);

    // open the form as a dialog modal
    $('#main_body_edit').dialog('open');
  });

  /*
   * Edit main body
   */
  //$('#main_body_text_to_edit').click(function() {
    
    // grab the lead_in text and put it in the textarea
//    var text = $('#main_body p, #main_body ul').html().trim();
//    $('#main_body_text').val(text);
//    
//    // open the form as a dialog modal
//    $('#main_body_edit').dialog('open');
//  });

  /*
   * Edit poll
   */
  // todo NEED TO POPULATE LINK FIELD
  $('#poll').click(function() {

    //console.log($(this));
    var text = $(this).html().trim();
    $('#poll_q_text').val(text);

    $('#poll_edit').dialog('open');

  });

  /*
   * Edit resources
   */
  $('#resources').click(function(event) {
    // ignore the default behavior or following a link
    event.preventDefault();

    // get link text
    var a = $(this).find('li');
    var resources = '';

    // add each resource to var resources
    $(a).each(function() {
      resources += $(this).html().trim();
    });

    // set the value of the textarea in the form
    $('#resources_text').val(resources);

    // open the form for editing the resources
    $('#resources_edit').dialog('open');
    
  });


  /*
   * Edit peer
   */
  $('#peer').click(function() {

    var peerName = $('#peer_name').html().trim();
    $('#peer_name_text').val(peerName);

    var peerOcc = $('#peer_occ').html().trim();
    $('#peer_occ_text').val(peerOcc);

    var peerSchool = $('#peer_school').html().trim();
    $('#peer_school_text').val(peerSchool);

    var peerClass = $('#peer_school span').html().trim();
    $('#peer_class_yr_text').val(peerClass);

    var peerInv = $('#peer_inv').html().trim();
    $('#peer_inv_text').val(peerInv);

    var peerRev = $('#peer_rev').html().trim();
    $('#peer_rev_text').val(peerRev);

    $('#peer_school_text').autocomplete({
      source: schools
    });
    
    $('#peer_edit').dialog('open');
  });


});
