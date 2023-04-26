<!DOCTYPE html>
<html lang="en">
  <head>
  <base href="/public">
  @include('admin.css')
  <style type="text/css">
            .div_center
            {
                text-align: center;
                padding-top: 40px;
            }

            .h2_font
            {
                font-size: 40px;
                padding-bottom: 40px;
            }

            .input_color
            {
                color: black;
            }

            .center
            {
                margin: auto;
                width: 100%;
                text-align: center;
                margin-top: 30px;
                /* border: 3px solid white; */
            }

            label
            {
                display: inline-block;
                width: 200px;
            }

            .design
            {
                padding-bottom: 15px;
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
                        <h2 class="h2_font">Add Product</h2>
                        @if(session()->has('message'))
                          <div class="alert alert-success">

                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>

                              {{ session()->get('message') }}

                          </div>
                    @endif
                        <div class="div_center">
                            <form action="{{ url('/update_product_confirm',$products->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf

                                <div class="design">
                                    <label>Name</label>
                                    <input type="text" name="title" placeholder="add product name" required="" value="{{$products->title}}">
                                </div>

                                <div class="design">
                                    <label>Description</label>
                                    <input type="text" name="description" placeholder="add product description" required="" value="{{$products->description}}">
                                </div>

                                <div class="design">
                                    <label>Price</label>
                                    <input type="number" name="price" placeholder="add product price" required="" value="{{$products->price}}">
                                </div>

                                <div class="design">
                                    <label>Quantity</label>
                                    <input type="number" min="0" name="quantity" placeholder="add quantity" required="" value="{{$products->quantity}}">
                                </div>

                                <div class="design">
                                    <label>Category</label>
                                    <select name="category" required="">
                                        <option value="" selected="">Add a Category Here</option>
                                        @foreach($category as $categories)
                                        <option value="{{$categories->category_name}}">{{$categories->category_name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="design">
                                    <label>Discount Price</label>
                                    <input type="text" name="discount_price" placeholder="add discount price" value="{{$products->discount_price}}">
                                </div>


                                <div class="design">
                                    <label>Image</label>
                                    <img height="300" src="/product/{{$products->image}}">
                                </div>
                                <input type="submit" class="btn btn-primary" name="submit" value="Save">
                                <a href="{{url('show_product')}}"  class="btn btn-primary" value="Cancel">Cancel</a>
                            </form>
                        </div>
                </div>
        </div>
       <!-- container-scroller -->
       <!-- plugins:js -->
            @include('admin.script')
        <!-- End custom js for this page -->
  </body>
</html>