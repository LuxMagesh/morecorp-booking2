<!DOCTYPE html>
<html lang="en">
  <head>
  @include('admin.css')
    <style type="text/css">
       .title_deg
        {
            text-align:center;
            font-size:25px;title_deg
            font-weight:bold;
        }
        .center{
                margin:auto;
                width: 50px;
                border: 3px solid white;
                text-align: center;
                margin-top:40px;
        }
        .img_sz
        {
            width:80px!important;
            height:80px!important;
        }
    </style>
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
            @include('admin.sidebar')
      <!-- partial -->
            @include('admin.nav')
       <!-- partial -->
       <div class="main-panel">
                <div class="content-wrapper">
                @if(session()->has('message'))
                          <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                              {{ session()->get('message') }}
                          </div>
                    @endif
          <div class="row ">
          <div class="row py-2">
            <div class="col-md-12">
                <h2>Booking Details</h3>
            </div>
          </div>
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                  <div class="col-12 grid-margin">
                    <div class="row">
                    <div class="col-6 grid-margin">
                    <h4 class="card-title">List of Bookings</h4>
                    </div>
                    <div class="col-6 grid-margin">
                    <div class="form-group">
                <label for="date_filter">Filter by Date:</label>

                <form method="get" action="{{ url('/show_bookings') }}">
                    <div class="input-group">
                        <select class="form-select" name="date_filter">
                            <option value="">All Dates</option>
                            <option value="today" {{ $dateFilter == 'today' ? 'selected' : '' }}>Today</option>
                            <option value="yesterday" {{ $dateFilter == 'yesterday' ? 'selected' : '' }}>Yesterday</option>
                            <option value="this_week" {{ $dateFilter == 'this_week' ? 'selected' : '' }}>This Week</option>
                            <option value="last_week" {{ $dateFilter == 'last_week' ? 'selected' : '' }}>Last Week</option>
                            <option value="this_month" {{ $dateFilter == 'this_month' ? 'selected' : '' }}>This Month</option>
                            <option value="last_month" {{ $dateFilter == 'last_month' ? 'selected' : '' }}>Last Month</option>
                            <option value="this_year" {{ $dateFilter == 'this_year' ? 'selected' : '' }}>This Year</option>
                            <option value="last_year" {{ $dateFilter == 'last_year' ? 'selected' : '' }}>Last Year</option>
                            </select>
                        <button type="submit" class="btn btn-primary">Filter</button>
                    </div>
                </form>

            </div>
                    </div>
                    </div>
                  </div>
                   
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th>Booking Date</th>
                            <th>Reason for the Booking</th>
                          </tr>
                        </thead>
                        <tbody>
                        @foreach($bookings as $bookingss)
                          <tr> 
                            
                            <td>{{$bookingss->date}}</td>
                            <td>{{$bookingss->reason}}</td>
                           
                          </tr>
                          @endforeach
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
 
                </div>
        </div>
       <!-- container-scroller -->
       <!-- plugins:js -->
            @include('admin.script')
        <!-- End custom js for this page -->
  </body>
</html>