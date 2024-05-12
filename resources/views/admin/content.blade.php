@extends('admin.dashboard')
@section('content')
@section('title')
{{ 'Dashboard' }}
@endsection
<!-- Content Wrapper. Contains page content -->
<section class="content">
    <div class="row">
        <div class="col-xxl-8">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-6 col-12">
                    <div class="box pull-up">
                        <div class="first-section">
                            <div class="d-flex align-items-center justify-content-between first-plan">
                                <div>
                                    <p class="text-mute mb-0">Revenue</p>
                                    <h3 class="text-dark mb-0 mt-1 fw-500">$10,259</h3>
                                </div>
                                <div>
                                    <img src="{{ asset('backend/images/dashboard/ticket-1.png') }}" class="bg-img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-12">
                    <div class="box pull-up">
                        <div class="first-section">
                            <div class="d-flex align-items-center justify-content-between first-plan">
                                <div>
                                    <p class="text-mute mb-0">Ticket Ordered</p>
                                    <h3 class="text-dark mb-0 mt-1 fw-500">800 Pcs</h3>
                                </div>
                                <div>
                                    <img src="{{ asset('backend/images/dashboard/ticket-2.png') }}" class="bg-img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-12 col-12">
                    <div class="box pull-up bg-primary">
                        <div class=" first-section">
                            <div class="d-flex align-items-center justify-content-between first-plan">
                                <div>
                                    <p class="text-white mb-0">Ticket Refunded</p>
                                    <h3 class="text-white mb-0 mt-1 fw-500">50 Left</h3>
                                </div>
                                <div>
                                    <img src="{{ asset('backend/images/dashboard/ticket-3.png') }}" class="bg-img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-12 col-lg-12 col-12">
                    <div class="box">
                        <div class="d-flex justify-content-between box-header">
                            <h4 class="box-title fw-600">Solved Ticket Vs New Ticket</h4>
                            <ul class="d-flex list-unstyled">
                                <li><i class="fa fa-circle text-primary f-12"></i> Ticket Solved</li>
                                <li class="ms-2"><i class="fa fa-circle text-warning f-12"></i> New Ticket</li>
                            </ul>
                        </div>
                        <div class="box-body">
                            <div>
                                <div id="balance_overview"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-6 col-lg-6 col-12">
                    <div class="box">
                        <div class="d-flex justify-content-between box-header">
                            <h4 class="box-title fw-600">Ticket By Type</h4>
                            <ul class="box-controls pull-right">
                                <li class="dropdown">
                                    <a data-bs-toggle="dropdown" href="#" class="px-10 pt-1" aria-expanded="false"><i class="ti-more-alt fs-18"></i></a>
                                    <div class="dropdown-menu dropdown-menu-end" style="">
                                        <a class="dropdown-item" href="#"><i class="ti-import"></i> Import</a>
                                        <a class="dropdown-item" href="#"><i class="ti-export"></i> Export</a>
                                        <a class="dropdown-item" href="#"><i class="ti-printer"></i> Print</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-settings"></i> Settings</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="box-body">
                            <div class="row align-items-center">
                                <div class="col-xxl-6 col-lg-7 col-6 p-0">
                                    <div id="shifts-overview"></div>
                                </div>
                                <div class="col-xxl-6 col-lg-5 col-6 shifts-overview">
                                    <div class="d-flex gap-2">
                                        <div class="flex-shrink-0"><span class="bg-primary"> </span></div>
                                        <div class="flex-grow-1">
                                            <h6 class="text-fade"><i class="fa fa-circle text-primary f-12"> </i> Sales</h6>
                                        </div>
                                    </div>
                                    <div class="d-flex gap-2">
                                        <div class="flex-shrink-0"><span class="bg-danger"></span></div>
                                        <div class="flex-grow-1">
                                            <h6 class="text-fade"><i class="fa fa-circle text-danger f-12"> </i> Setup</h6>
                                        </div>
                                    </div>
                                    <div class="d-flex gap-2">
                                        <div class="flex-shrink-0"><span class="bg-info"> </span></div>
                                        <div class="flex-grow-1">
                                            <h6 class="text-fade"><i class="fa fa-circle text-info f-12"> </i> Refund</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-6 col-lg-6 col-12">
                    <div class="box">
                        <div class="d-flex justify-content-between box-header">
                            <h4 class="box-title fw-600">New Vs Returned Ticket</h4>
                            <ul class="box-controls pull-right">
                                <li class="dropdown">
                                    <a data-bs-toggle="dropdown" href="#" class="px-10 pt-1" aria-expanded="false"><i class="ti-more-alt fs-18"></i></a>
                                    <div class="dropdown-menu dropdown-menu-end" style="">
                                        <a class="dropdown-item" href="#"><i class="ti-import"></i> Import</a>
                                        <a class="dropdown-item" href="#"><i class="ti-export"></i> Export</a>
                                        <a class="dropdown-item" href="#"><i class="ti-printer"></i> Print</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-settings"></i> Settings</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="box-body">
                            <div class="row align-items-center">
                                <div class="col-xxl-6 col-lg-7 col-6 p-0">
                                    <div id="chart-redio"></div>
                                </div>
                                <div class="col-xxl-6 col-lg-5 col-6 shifts-overview">
                                    <div class="d-flex gap-2">
                                        <div class="flex-shrink-0"><span class="bg-primary"> </span></div>
                                        <div class="flex-grow-1">
                                            <h6 class="text-fade"><i class="fa fa-circle text-primary f-12"> </i> New Ticket</h6>
                                        </div>
                                    </div>
                                    <div class="d-flex gap-2">
                                        <div class="flex-shrink-0"><span class="bg-info"></span></div>
                                        <div class="flex-grow-1">
                                            <h6 class="text-fade" style="text-indent: -8px;margin-left: 16px;"><i class="fa fa-circle text-success f-12"> </i> Returned Ticket</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-12 col-lg-12 col-12">
                    <div class="box">
                        <div class="d-flex justify-content-between box-header">
                            <h4 class="box-title fw-600">Resent Sales</h4>
                        </div>
                        <div class="box-body p-0">
                            <div class="table-responsive px-2" style="margin: 0px 2px;">
                                <table class="table table-responsive mb-0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Order Id</th>
                                            <th>Name</th>
                                            <th>Date</th>
                                            <th>Sold Ticket</th>
                                            <th>Refund</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="text-fade">
                                            <td>1.</td>
                                            <td>#C78765</td>
                                            <td>Martin</td>
                                            <td>04/08/23</td>
                                            <td>1 Pcs</td>
                                            <td>No</td>
                                        </tr>
                                        <tr class="text-fade">
                                            <td>2.</td>
                                            <td>#A12778</td>
                                            <td>Josha</td>
                                            <td>03/08/23</td>
                                            <td>2 Pcs</td>
                                            <td>No</td>
                                        </tr>
                                        <tr class="text-fade">
                                            <td>3.</td>
                                            <td>#B23789</td>
                                            <td>Tony</td>
                                            <td>02/08/23</td>
                                            <td>8 Pcs</td>
                                            <td>No</td>
                                        </tr>
                                        <tr class="text-fade">
                                            <td>4.</td>
                                            <td>#E47U47</td>
                                            <td>MArgret</td>
                                            <td>02/08/23</td>
                                            <td>4 Pcs</td>
                                            <td>No</td>
                                        </tr>
                                        <tr class="text-fade">
                                            <td class="border-0">5.</td>
                                            <td class="border-0">#F467DE</td>
                                            <td class="border-0">Tommy</td>
                                            <td class="border-0">01/08/23</td>
                                            <td class="border-0">5 Pcs</td>
                                            <td class="border-0">No</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-4">
            <div class="row">
                <div class="col-xxl-12 col-lg-12 col-12">
                    <div class="box overflow-hidden">
                        <div class="d-flex justify-content-between box-header">
                            <h4 class="box-title fw-600">Number Of Ticket/Week</h4>
                            <ul class="box-controls pull-right">
                                <li class="dropdown">
                                    <a data-bs-toggle="dropdown" href="#" class="px-10 pt-1" aria-expanded="false"><i class="ti-more-alt fs-18"></i></a>
                                    <div class="dropdown-menu dropdown-menu-end" style="">
                                        <a class="dropdown-item" href="#"><i class="ti-import"></i> Import</a>
                                        <a class="dropdown-item" href="#"><i class="ti-export"></i> Export</a>
                                        <a class="dropdown-item" href="#"><i class="ti-printer"></i> Print</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-settings"></i> Settings</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="box-body p-0">
                            <div>
                                <div id="chart-58"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-12 col-lg-6 col-12">
                    <div class="box">
                        <div class="d-flex justify-content-between box-header">
                            <h4 class="box-title fw-600">Agent With Most Tickets</h4>
                        </div>
                        <div class="box-body p-0">
                            <div class="table-responsive px-2" style="margin: 0px 2px;">
                                <table class="table">
                                    <thead>
                                        <tr class="border-bottom-primary">
                                            <th>Name</th>
                                            <th>Ticket</th>
                                            <th>Location</th>
                                            <th>Last Replay</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Briggs</td>
                                            <td>10</td>
                                            <td><i class="flag-icon flag-icon-us f-30 shadow-sm"></i></td>
                                            <td>10:20pm</td>
                                        </tr>
                                        <tr>
                                            <td>Jenkins</td>
                                            <td>12</td>
                                            <td><i class="flag-icon flag-icon-jp f-30 shadow-sm"></i></td>
                                            <td>08:00pm</td>
                                        </tr>
                                        <tr>
                                            <td>Martin</td>
                                            <td>20</td>
                                            <td><i class="flag-icon flag-icon-cn f-30 shadow-sm"></i></td>
                                            <td>05:20pm</td>
                                        </tr>
                                        <tr>
                                            <td>Hella</td>
                                            <td>15</td>
                                            <td><i class="flag-icon flag-icon-in f-30 shadow-sm"></i></td>
                                            <td>08:00pm</td>
                                        </tr>
                                        <tr>
                                            <td>Jones</td>
                                            <td>35</td>
                                            <td><i class="flag-icon flag-icon-de f-30 shadow-sm"></i></td>
                                            <td>06:30am</td>
                                        </tr>
                                        <tr>
                                            <td>Moris</td>
                                            <td>50</td>
                                            <td><i class="flag-icon flag-icon-au f-30 shadow-sm"></i></td>
                                            <td>06:30am</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-12 col-lg-6 col-12">
                    <div class="box overflow-hidden">
                        <div class="d-flex justify-content-between box-header">
                            <h4 class="box-title fw-600">Total Revenue</h4>
                            <ul class="box-controls pull-right">
                                <li class="dropdown">
                                    <a data-bs-toggle="dropdown" href="#" class="px-10 pt-1" aria-expanded="false"><i class="ti-more-alt fs-18"></i></a>
                                    <div class="dropdown-menu dropdown-menu-end" style="">
                                        <a class="dropdown-item" href="#"><i class="ti-import"></i> Import</a>
                                        <a class="dropdown-item" href="#"><i class="ti-export"></i> Export</a>
                                        <a class="dropdown-item" href="#"><i class="ti-printer"></i> Print</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-settings"></i> Settings</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="box-body">
                            <div>
                                <div id="revenue-chart"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.content-wrapper -->
@endsection
