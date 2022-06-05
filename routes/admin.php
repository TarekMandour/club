<?php

use Illuminate\Support\Facades\Route;

    Auth::routes();

    Route::get('admin/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
    Route::post('admin/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
    Route::post('admin/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');

    // Admin routes
    Route::group(['prefix' => 'admin','namespace' => 'Admin','middleware' => 'auth:admin'], function () {

        Route::get('/', 'HomeController@index')->name('admin.blank');
        // Route::get('/page', 'HomeController@page');

        Route::get('/admins', 'AdminController@index');
        Route::get('admins_datatable', 'AdminController@datatable')->name('admins.datatable.data');
        Route::get('delete-admin', 'AdminController@destroy');
        Route::get('show-admin/{id}', 'AdminController@show');
        Route::post('store-admin', 'AdminController@store');
        Route::get('edit-admin/{id}', 'AdminController@edit');
        Route::post('update-admin', 'AdminController@update');
        Route::get('add-admin-button', function () {return view('admin/admin/button');});

        Route::get('/pages', 'PageController@index');
        Route::get('pages_datatable', 'PageController@datatable')->name('pages.datatable.data');
        Route::get('delete-page', 'PageController@destroy');
        Route::get('show-page/{id}', 'PageController@show');
        Route::get('create-page', 'PageController@create');
        Route::post('store-page', 'PageController@store');
        Route::get('edit-page/{id}', 'PageController@edit');
        Route::post('update-page', 'PageController@update');
        Route::get('add-page-button', function () {return view('admin/page/button');});



        Route::get('/category', 'CategoryController@index');
        Route::get('category_datatable', 'CategoryController@datatable')->name('category.datatable.data');
        Route::get('delete-category', 'CategoryController@destroy');
        Route::get('show-category/{id}', 'CategoryController@show');
        Route::get('create-category', 'CategoryController@create');
        Route::post('store-category', 'CategoryController@store');
        Route::get('edit-category/{id}', 'CategoryController@edit');
        Route::post('update-category', 'CategoryController@update');
        Route::get('add-category-button', function () {return view('admin/category/button');});


    });



