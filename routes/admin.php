<?php

use Illuminate\Support\Facades\Route;

Auth::routes();

Route::get('admin/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
Route::post('admin/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
Route::post('admin/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');

// Admin routes
Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'auth:admin'], function () {

    Route::get('/', 'HomeController@index')->name('admin.blank');
    // Route::get('/page', 'HomeController@page');

    Route::get('/admins', 'AdminController@index');
    Route::get('admins_datatable', 'AdminController@datatable')->name('admins.datatable.data');
    Route::get('delete-admin', 'AdminController@destroy');
    Route::get('show-admin/{id}', 'AdminController@show');
    Route::post('store-admin', 'AdminController@store');
    Route::get('edit-admin/{id}', 'AdminController@edit');
    Route::post('update-admin', 'AdminController@update');
    Route::get('add-admin-button', function () {
        return view('admin/admin/button');
    });

    Route::get('/pages', 'PageController@index');
    Route::get('pages_datatable', 'PageController@datatable')->name('pages.datatable.data');
    Route::get('delete-page', 'PageController@destroy');
    Route::get('show-page/{id}', 'PageController@show');
    Route::get('create-page', 'PageController@create');
    Route::post('store-page', 'PageController@store');
    Route::get('edit-page/{id}', 'PageController@edit');
    Route::post('update-page', 'PageController@update');
    Route::get('add-page-button', function () {
        return view('admin/page/button');
    });

//start categories
    Route::get('/category', 'CategoryController@index');
    Route::get('category_datatable', 'CategoryController@datatable')->name('category.datatable.data');
    Route::get('delete-category', 'CategoryController@destroy');
    Route::get('show-category/{id}', 'CategoryController@show');
    Route::get('create-category', 'CategoryController@create');
    Route::post('store-category', 'CategoryController@store');
    Route::get('edit-category/{id}', 'CategoryController@edit');
    Route::post('update-category', 'CategoryController@update');
    Route::get('add-category-button', function () {
        return view('admin/category/button');
    });

//start offers
    Route::get('/offer', 'OfferController@index');
    Route::get('offer_datatable', 'OfferController@datatable')->name('offer.datatable.data');
    Route::get('delete-offer', 'OfferController@destroy');
    Route::get('show-offer/{id}', 'OfferController@show');
    Route::get('create-offer', 'OfferController@create');
    Route::post('store-offer', 'OfferController@store');
    Route::get('edit-offer/{id}', 'OfferController@edit');
    Route::post('update-offer', 'OfferController@update');
    Route::get('add-offer-button', function () {
        return view('admin/offer/button');
    });


//    start posts
    Route::get('/post', 'PostController@index');
    Route::get('post_datatable', 'PostController@datatable')->name('post.datatable.data');
    Route::get('delete-post', 'PostController@destroy');
    Route::get('show-post/{id}', 'PostController@show');
    Route::get('create-post', 'PostController@create');
    Route::post('store-post', 'PostController@store');
    Route::get('edit-post/{id}', 'PostController@edit');
    Route::post('update-post', 'PostController@update');
    Route::get('add-post-button', function () {
        return view('admin/post/button');
    });

//    start posts images
    Route::get('/post-image/{post_id}', 'PostImagesController@index');
    Route::get('post_image_datatable/{post_id}', 'PostImagesController@datatable')->name('image.post.datatable.data');
    Route::get('delete-post-image', 'PostImagesController@destroy');
    Route::get('create-post-image/{post_id}', 'PostImagesController@create');
    Route::post('store-post-image', 'PostImagesController@store');
    Route::get('add-post-image-button/{id}', 'PostImagesController@button');


    Route::get('/client', 'ClientController@index');
    Route::get('client_datatable', 'ClientController@datatable')->name('client.datatable.data');
    Route::get('delete-client', 'ClientController@destroy');
    Route::get('show-client/{id}', 'ClientController@show');
    Route::get('create-client', 'ClientController@create');
    Route::post('store-client', 'ClientController@store');
    Route::get('edit-client/{id}', 'ClientController@edit');
    Route::post('update-client', 'ClientController@update');
    Route::get('add-client-button', function () {
        return view('admin/client/button');
    });

    Route::get('follower_datatable/{parent_id}', 'ClientController@datatable_followers')->name('follower.datatable.data');


    Route::get('client_card_datatable/{parent_id}', 'ClientCardsController@datatable')->name('client.cards.datatable.data');
    Route::get('delete-client-card', 'ClientCardsController@destroy');
    Route::get('create-client-card/{parent_id}', 'ClientCardsController@create');
    Route::post('store-client-card', 'ClientCardsController@store');
    Route::get('edit-client-card/{id}', 'ClientCardsController@edit');
    Route::post('update-client-card', 'ClientCardsController@update');
    Route::get('add-client-card-button/{parent_id}', 'ClientCardsController@button');


});



