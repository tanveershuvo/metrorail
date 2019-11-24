<?php
include_once 'includes/header.php';
include_once 'includes/navbar.php';
include_once 'includes/sidebar.php';
include_once("dbCon.php");
$conn =connect();
?>
<!-- Start intro section -->
    <section id="intro" class="section-intro">
      <div class="overlay">
        <div class="container">
          <div class="main-text">
            <h1 class="intro-title">Welcome To </br><span style="color: #3498DB">MetrolRail E-ticketing</span></h1>
          </br>

            <!-- Start Search box -->
            <div class="row search-bar">
              <div class="advanced-search">
                <form class="search-form" action="controller" method="post">
                  <div class="col-md-3 col-sm-6 search-col">
                    <div class="input-group-addon search-category-container">
                      <label class="styled-select">
                        <select class="dropdown-product selectpicker" name="source" >
                          <option selected="true" disabled="disabled">Source Station</option>
                          <?php
        										 $sql="SELECT * FROM stationinfo ";
        										 $resultData=$conn->query($sql);
        										 foreach ($resultData as $row){
        									?>
                          <option class="subitem" value="<?=$row['id']?>"><?=$row['stationName']?></option>
                          <?php } ?>
                        </select>
                      </label>
                    </div>
                  </div>
                  <div class="col-md-3 col-sm-6 search-col">
                    <div class="input-group-addon search-category-container">
                      <label class="styled-select ">
                        <select class="dropdown-product selectpicker" name="destination" >
                          <option selected="true" disabled="disabled">Destination Station</option>
                          <?php
                             $sql="SELECT * FROM stationinfo ";
                             $resultData=$conn->query($sql);
                             foreach ($resultData as $row){
                          ?>
                          <option class="subitem" value="<?=$row['id']?>"><?=$row['stationName']?></option>
                          <?php } ?>
                        </select>
                      </label>
                    </div>
                  </div>
                  <div class="col-md-3 col-sm-6 search-col">
                    <div class="input-group-addon search-category-container">
                      <label class="styled-select location-select">
                        <select class="dropdown-product selectpicker" name="time" >
                          <option value="0">Time (24 hour format)</option>
                          <option value="8">08:00</option>
                          <option value="9">09:00</option>
                          <option value="10">10:00</option>
                          <option value="11">11:00</option>
                          <option value="12">12:00</option>
                          <option value="13">13:00</option>
                          <option value="14">14:00</option>
                          <option value="15">15:00</option>
                          <option value="16">16:00</option>
                          <option value="17">17:00</option>
                          <option value="18">18:00</option>
                        </select>
                      </label>
                    </div>
                  </div>
                  <div class="col-md-3 col-sm-6 search-col">
                    <button class="btn btn-common btn-search btn-block" name="search" type="submit"><strong>Search</strong></button>
                  </div>
                </form>
              </div>
            </div>
            <!-- End Search box -->
          </div>
        </div>
      </div>
    </section>
    <!-- end intro section -->

    <!-- Start Content -->
    <div id="content">
      <div class="container">
          <div class="col-sm-12 page-content">
            <div class="inner-box">
              <h2 class="title-2"><i class="fa fa-credit-card"></i> My SEARCH</h2>
              <div class="table-responsive">

                <table class="table table-striped table-bordered add-manage-table">
                  <thead>
                    <tr>
                      <th>Source Station</th>
                      <th>Arrival Time</th>
                      <th>Departure Time</th>
                      <th>Destination</th>
                      <th>Total KM</th>
                      <th>Price</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php

                     ?>
                    <tr class="text-center">
                      <td><h5>Brand</h5></td>
                      <td></td>
                      <td></td>
                      <td><h5>Brand</h5></td>
                      <td></td>
                      <td></td>
                    </tr>

                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Content -->

    <!-- Counter Section Start -->
    <section id="counter">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting wow fadeInDownQuick" data-wow-delay=".5s">
              <div class="icon">
                <span>
                  <i class="lnr lnr-tag"></i>
                </span>
              </div>
              <div class="desc">
                <h3 class="counter">12090</h3>
                <p>Regular Ads</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting wow fadeInDownQuick" data-wow-delay="1s">
              <div class="icon">
                <span>
                  <i class="lnr lnr-map"></i>
                </span>
              </div>
              <div class="desc">
                <h3 class="counter">350</h3>
                <p>Locations</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting wow fadeInDownQuick" data-wow-delay="1.5s">
              <div class="icon">
                <span>
                  <i class="lnr lnr-users"></i>
                </span>
              </div>
              <div class="desc">
                <h3 class="counter">23453</h3>
                <p>Reguler Members</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting wow fadeInDownQuick" data-wow-delay="2s">
              <div class="icon">
                <span>
                  <i class="lnr lnr-license"></i>
                </span>
              </div>
              <div class="desc">
                <h3 class="counter">150</h3>
                <p>Premium Ads</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Counter Section End -->
    <?php
    include_once 'includes/footer.php';
    ?>
