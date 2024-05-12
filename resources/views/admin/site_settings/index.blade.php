@extends('admin.dashboard')
@section('content')
@section('title')
{{ 'Dashboard' }}
@endsection
<!-- Content Wrapper. Contains page content -->
<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">
                    <h4 class="box-title mb-5">Application Buttons</h4>
                    <p class="subtitle mb-20">Add the classes <code>.btn.btn-app</code> to an <code>&lt;a&gt;</code> tag to achieve the following:</p>
                    <div class="clearfix">
                        <a class="waves-effect waves-light btn btn-app btn-info" href="{{ route('site-settings.info') }}">
                            <i class="fa fa-edit"></i> Basic Info
                        </a>
                        <a class="waves-effect waves-light btn btn-app btn-success" href="#">
                            <i class="fa fa-play"></i> Play
                        </a>
                        <a class="waves-effect waves-light btn btn-app btn-secondary" href="#">
                            <i class="fa fa-pause"></i> Pause
                        </a>
                        <a class="waves-effect waves-light btn btn-app btn-primary" href="#">
                            <i class="fa fa-stop"></i> Stop
                        </a>
                        <a class="waves-effect waves-light btn btn-app btn-warning" href="#">
                            <i class="fa fa-repeat"></i> Repeat
                        </a>
                        <a class="waves-effect waves-light btn btn-app btn-danger" href="#">
                            <i class="fa fa-save"></i> Save
                        </a>
                        <a class="btn btn-app btn-warning" href="#">
                            <span class="badge bg-danger">12</span>
                            <i class="fa fa-bullhorn"></i> Notifications
                        </a>
                        <a class="btn btn-app btn-warning" href="#">
                            <span class="badge bg-primary">41</span>
                            <i class="fa fa-users"></i> Users
                        </a>
                        <a class="btn btn-app btn-primary" href="#">
                            <span class="badge bg-success">45</span>
                            <i class="fa fa-inbox"></i> Orders
                        </a>
                        <a class="btn btn-app btn-success" href="#">
                            <span class="badge bg-info">2</span>
                            <i class="fa fa-envelope"></i> Inbox
                        </a>
                        <a class="btn btn-app btn-danger" href="#">
                            <span class="badge bg-success">48</span>
                            <i class="fa fa-barcode"></i> Products
                        </a>
                        <a class="btn btn-app btn-info" href="#">
                            <span class="badge bg-danger">31</span>
                            <i class="fa fa-heart-o"></i> Likes
                        </a>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- /.content-wrapper -->
@endsection
