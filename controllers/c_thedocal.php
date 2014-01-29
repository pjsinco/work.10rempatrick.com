<?php

require_once(APP_PATH . '/config/constants.php');

class thedocal_controller extends base_controller {
	
  /*-------------------------------------------------------------------
  
  -------------------------------------------------------------------*/
  public function __construct() {
  	parent::__construct();
  } 

  public function index() {
    $this->template->content = 
      View::instance('v_thedocal_index');

    $client_files_head = Array(
      '/css/bootstrap.css',
      '/css/thedocal_main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);   

    // pass all articles to view
    $articles_by_month = CalHelpers::get_articles();

    $this->template->content->articles_by_month = $articles_by_month;
    
    $client_files_body = Array(
      '/js/bootstrap.min.js',
      '/js/thedocal_index.js'
    );
    $this->template->client_files_body = 
      Utils::load_client_files($client_files_body);   

    // render view
    echo $this->template;

  }

  public function advertisers() {
    $this->template->content =
      View::instance('v_thedocal_advertisers');

    $client_files_head = Array(
      '/css/bootstrap.css',
      '/css/thedocal_main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);   

    // pass all articles to view
    $articles_by_month = CalHelpers::get_articles();

    $this->template->content->articles_by_month = $articles_by_month;
    
    $client_files_body = Array(
      '/js/bootstrap.min.js'
    );
    $this->template->client_files_body = 
      Utils::load_client_files($client_files_body);   

    // render view
    echo $this->template;
    
  }

  public function article($id) {
    $this->template->content =
      View::instance('v_thedocal_article');
  

    $client_files_head = Array(
      '/css/bootstrap.css',
      '/css/thedocal_main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);   
    
    $article = CalHelpers::get_article($id);
    
    $client_files_body = Array(
      '/js/bootstrap.min.js',
      '/js/thedocal_article.js'
    );
    $this->template->client_files_body = 
      Utils::load_client_files($client_files_body);   

    // render view
    echo $this->template;
  }

  public function month($month, $year) {
    $this->template->content =
      View::instance('v_thedocal_month');

    $client_files_head = Array(
      '/css/bootstrap.css',
      '/css/thedocal_main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);   
    
    $client_files_body = Array(
      '/js/bootstrap.min.js'
    );
    $this->template->client_files_body = 
      Utils::load_client_files($client_files_body);   

    $articles = CalHelpers::get_articles();
    echo Debug::dump($articles);
    $this->template->content->articles =
      CalHelpers::get_articles();
    $this->template->content->month = $month;
    $this->template->content->year = $year;

    // render view
    echo $this->template;
  }

  public function add_article() {
    $this->template->content =
      View::instance('v_thedocal_add_article');        

    $client_files_head = Array(
      '/css/bootstrap.css',
      '/css/thedocal_main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);   
    
    $client_files_body = Array(
      '/js/bootstrap.min.js'
    );
    $this->template->client_files_body = 
      Utils::load_client_files($client_files_body);   

    $this->template->content->users =
      CalHelpers::get_users();

    // pass all articles to view
    $articles = CalHelpers::get_articles();
    $this->template->content->articles = $articles;
    
    //render view
    echo $this->template;

  }

  public function p_add_article() {

    $_POST['blurb'] = stripslashes($_POST['blurb']);
    $_POST['title'] = stripslashes($_POST['title']);
    $_POST['created'] = Time::now();
    $id = DB::instance(DB_NAME)->insert('thedocal_article', $_POST);
    
    Router::redirect('/thedocal/add_article');
  }
  	
} // eoc
