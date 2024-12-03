<x-app-layout>
    @section('title')
        Dashboard
    @endsection

    @push('css')
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/apexcharts@3.35.3/dist/apexcharts.min.css">
        <style>
            .text-lg{
                font-size: 1.125rem; /* 18px */
                line-height: 1.75rem; /* 28px */
            }
            .table-responsive {
                max-height: 300px;
                overflow-y: auto;
            }

            .card-title {
                font-weight: bold;
                color: #333;
            }

            .table-striped thead th {
                color: white;
            }

            .table-striped thead th:nth-child(1) {
                background-color: #28a745;
                /* Green */
            }

            .table-striped thead th:nth-child(2) {
                background-color: #007bff;
                /* Blue */
            }

            .table-striped thead th:nth-child(3) {
                background-color: #ffc107;
                /* Yellow */
            }

            .nav-tabs .nav-link.active {
                background-color: #007bff;
                color: white;
            }

            .filter-select {
                margin-bottom: 15px;
            }

            /* Dark Mode Styles */
            body.dark-mode {
                background-color: #121212;
                color: #e0e0e0;
            }

            body.dark-mode .card {
                background-color: #1e1e1e;
                border-color: #333;
            }

            body.dark-mode .card-title {
                color: #e0e0e0;
            }

            body.dark-mode .breadcrumb-item a {
                color: #b0b0b0;
            }

            body.dark-mode .table-striped thead th {
                color: #e0e0e0;
            }

            body.dark-mode .table-striped thead th:nth-child(1) {
                background-color: #2e7d32;
                /* Dark Green */
            }

            body.dark-mode .table-striped thead th:nth-child(2) {
                background-color: #1565c0;
                /* Dark Blue */
            }

            body.dark-mode .table-striped thead th:nth-child(3) {
                background-color: #ff8f00;
                /* Dark Yellow */
            }

            body.dark-mode .nav-tabs .nav-link.active {
                background-color: #1565c0;
                color: #e0e0e0;
            }

            .apexcharts-toolbar {
                background-color: #333;
                /* Warna latar belakang gelap */
                color: #e0e0e0;
                /* Warna teks untuk toolbar */
            }

            .apexcharts-menu-item {
                color: #e0e0e0;
                /* Warna teks untuk item menu */
            }
        </style>
    @endpush

    <!-- Breadcrumb -->
    <div class="font-weight-medium shadow-none position-relative overflow-hidden mb-7">
        <div class="card-body px-0">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <h4 class="font-weight-medium fs-14 mb-0">Dashboard</h4>
                    <div class="d-flex justify-content-between">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a class="text-muted text-decoration-none" href="">Home</a>
                                </li>
                                <li class="breadcrumb-item text-muted" aria-current="page">Dashboard</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <a href="{{ route('ideas.create') }}" class="btn btn-danger">Submit your CITA!</a>
            </div>
        </div>
    </div>

    <!-- Summary -->
    <div class="row">
    @foreach($dataPercentages as $index => $data)
        <div class="col-lg-3 col-md-12">
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <h4 class="card-title text-primary">{{$data['name']}}</h4>
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <p>Target Elimination Ideas: {{$data['standard']}}</p>
                            <p>Implemented: {{$data['actual']}}</p>
                            <p>Success Rate: {{$data['percentage']}}%</p>
                        </div>
                        <div class="text-right text-lg">
                            <span class="badge {{ $data['name'] == 'AI Implementation' ? 'bg-success' : ( $data['name'] == 'Best Practice Implementation' ? 'bg-info' : ( $data['name'] == 'Improvement Implementation' ? 'bg-warning' : 'bg-danger')) }} text-lg" >{{$data['percentage']}}%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>

    <!-- Main Content -->
    <div class="row">
        <!-- Leaderboards Column -->
        <div class="col-md-3">
            <!-- NoVA-A Elimination Leaderboard -->
            <div class="card mb-4">
                <div class="card-body">
                    <h4 class="card-title">NoVA-A Elimination Leaderboard</h4>
                    <div class="d-flex justify-content-between align-items-center">
                        <select id="year-novaa" class="form-select filter-select" aria-label="Filter by Year">
                        <option value="" selected>Select year</option>
                        @foreach($years as $year)
                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                        @endforeach
                        </select>
                        <select id="month-novaa" class="form-select filter-select" aria-label="Filter by Month">
                             <option value="" selected>Select Month</option>
                             @foreach($months as $month)
                                 <option value="{{ $month }}">{{ \Carbon\Carbon::create()->month($month)->format('F') }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="table-responsive" style="max-height: 300px; overflow-y: auto;">
                        <table id="table-novaa" class="table table-striped" style="position: relative;">
                            <thead class="bg-success w-full" style="position: sticky; top:0px" >
                                <tr>
                                    <th>Rank</th>
                                    <th>Nama</th>
                                    <th>Idea</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($leaderboardNoVAA as $index => $entry)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $entry->name }}</td>
                                    <td>{{ $entry->idea_count }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <!-- Best Practice Implementation Leaderboard -->
            <div class="card mb-4">
                <div class="card-body">
                    <h4 class="card-title">Best Practice Leaderboard</h4>
                    <div class="d-flex justify-content-between align-items-center">
                        <select id="year-bestpractice" class="form-select filter-select" aria-label="Filter by Year">
                        <option value="">Select year</option>
                        @foreach($years as $year)
                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                        @endforeach
                        </select>
                        <select id="month-bestpractice" class="form-select filter-select" aria-label="Filter by Month">
                        <option value="">Select Month</option>
                            @foreach($months as $month)
                                <option value="{{ $month }}">{{ \Carbon\Carbon::create()->month($month)->format('F') }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="table-responsive" style="max-height: 300px; overflow-y: auto;">
                        <table id="table-bestpractice" class="table table-striped" style="position: relative;">
                            <thead class="bg-info w-full" style="position: sticky; top:0px">
                                <tr>
                                    <th>Rank</th>
                                    <th>Nama</th>
                                    <th>Idea</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($leaderboardBestpractice as $index => $entry)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $entry->name }}</td>
                                    <td>{{ $entry->idea_count }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
    <!-- Improvement Leaderboard -->
    <div class="card mb-4">
        <div class="card-body">
            <h4 class="card-title">Idea for Improvement Leaderboard</h4>
            <div class="d-flex justify-content-between align-items-center">
                <select id="year-improvement" class="form-select filter-select" aria-label="Filter by Year">
                <option value="">Select year</option>
                        @foreach($years as $year)
                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                        @endforeach
                </select>
                <select id="month-improvement" class="form-select filter-select" aria-label="Filter by Month">
                <option value="">Select Month</option>
                @foreach($months as $month)
                        <option value="{{ $month }}">{{ \Carbon\Carbon::create()->month($month)->format('F') }}</option>
                @endforeach
                </select>
            </div>
            <div class="table-responsive" style="max-height: 300px; overflow-y: auto;">
                <table id="table-improvement"class="table table-striped" style="position: relative;">
                    <thead class="bg-purple" style="position: sticky; top:0px">
                        <tr>
                            <th>Rank</th>
                            <th>Nama</th>
                            <th>Idea</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                       @foreach($leaderboardImprovment as $index => $entry)
                         <tr>
                            <td>{{ $index + 1 }}</td>
                            <td>{{ $entry->name }}</td>
                            <td>{{ $entry->idea_count }}</td>
                         </tr>
                      @endforeach
                    
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

        <div class="col-md-3">
            <!-- AI Leaderboard -->
            <div class="card mb-4">
                <div class="card-body">
                    <h4 class="card-title">AI Implementation Leaderboard</h4>
                    <div class="d-flex justify-content-between align-items-center">
                        <select id="year-AI" class="form-select filter-select" aria-label="Filter by Year">
                        <option value="">Select year</option>
                        @foreach($years as $year)
                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                        @endforeach
                        </select>
                        <select id="month-AI" class="form-select filter-select" aria-label="Filter by Month">
                        <option value="">Select Month</option>
                        @foreach($months as $month)
                            <option value="{{ $month }}">{{ \Carbon\Carbon::create()->month($month)->format('F') }}</option>
                        @endforeach
                        </select>
                    </div>
                    <div class="table-responsive" style="max-height: 300px; overflow-y: auto;">
                        <table id="table-AI" class="table table-striped" style="position: relative;">
                            <thead class="bg-warning w-full" style="position: sticky;top:0px">
                                <tr>
                                    <th>Rank</th>
                                    <th>Nama</th>
                                    <th>Idea</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($leaderboardArtificialIntelegents as $index => $entry)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $entry->name }}</td>
                                    <td>{{ $entry->idea_count }}</td>
                                </tr>
                            @endforeach                          
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Charts Column -->
        <div class="col-lg-12 col-md-12">
            <div class="row">
                <!-- Bar Chart -->
                <div class="col-md-7 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <h4 class="card-title">AI Implementation Bar Chart</h4>
                                <div class="d-flex">
                                    <select id="yearFilterBar" class="form-select filter-select"aria-label="Filter by Year">
                                    <option value="">Select year</option>
                                        @foreach($years as $year)
                                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                                        @endforeach
                                    </select>
                                    <select id="typeFilterBar" class="form-select filter-select"
                                        aria-label="Filter by Type">
                                        <option value="department" selected>Department</option>
                                    </select>
                                </div>
                            </div>
                            <div id="stackedBarChart"></div>
                        </div>
                    </div>
                </div>

                <!-- Pie Charts -->
                <div class="col-md-5 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <h4 class="card-title">Best Practice Pie Chart</h4>
                                <div class="d-flex">
                                    <select id="yearFilterPie" class="form-select filter-select"
                                        aria-label="Filter by Year">
                                        <option value="">Select year</option>
                                        @foreach($years as $year)
                                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                                        @endforeach
                                    </select>
                                    <select id="typeFilterPie" class="form-select filter-select"
                                        aria-label="Filter by Type">
                                        <option value="department" selected>Department</option>
                                    </select>
                                </div>
                            </div>
                            <div id="bestPracticePieChart"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12 col-md-12">
            <div class="row">

                <!-- Bar Chart -->
                <div class="col-md-7 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <h4 class="card-title">NoVA-A Elimination Bar Chart</h4>
                                <div class="d-flex">
                                    <select id="yearFilterNova" class="form-select filter-select"aria-label="Filter by Year">
                                        <option value="">Select year</option>
                                        @foreach($years as $year)
                                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                                        @endforeach
                                    </select>
                                    <select id="typeFilterNova" class="form-select filter-select"
                                        aria-label="Filter by Type">
                                        <option value="department" selected>Department</option>
                                    </select>
                                </div>
                            </div>
                            <div id="novaBarChart"></div>
                        </div>
                    </div>
                </div>

                <div class="col-md-5 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <h4 class="card-title">Idea for Improvement Pie Chart</h4>
                                <div class="d-flex">
                                    <select id="yearFilterImprovement" class="form-select filter-select"aria-label="Filter by Year">
                                        <option value="">Select year</option>
                                        @foreach($years as $year)
                                            <option value="{{ $year }}">{{ \Carbon\Carbon::create()->year($year)->format('Y') }}</option>
                                        @endforeach
                                    </select>
                                    
                                    <select id="typeFilterImprovement" class="form-select filter-select"
                                        aria-label="Filter by Type">
                                        <option value="department" selected>Department</option>
                                    </select>
                                </div>
                            </div>
                            <div id="improvementPieChart"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        <div class="col-md-3">
            <div class="card card-body">
                <table>
                    <thead>
                        <tr>
                            <th>Department</th>
                            <th>Jumlah User</th>
                            <th>Jumlah Ide</th>
                            <th>Effectiveness</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($effectiveDatas as $data)
                        @if($data['name']!='Secret')
                        <tr>
                            <td>{{$data['name']}}</td>
                            <td>{{$data['users']}}</td>
                            <td>{{$data['ideas']}}</td>
                            <td>{{number_format(intval(($data['ideas']) / intval($data['users'] )*100), 0)}}%</td>
                        </tr>
                        @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

   
    @push('scripts')
        <script src="https://cdn.jsdelivr.net/npm/apexcharts@3.35.3/dist/apexcharts.min.js"></script>
        <script>
            // Ambil data kategori dari controller
            const categories = @json($results);
            const departments = @json($departmentNames);
            console.log("test", categories);
            console.log(departments);
            console.log( departments.map(() => Math.floor(Math.random() * 100)));
            // Fungsi untuk memperbarui grafik berdasarkan filter
            function updateBarChart() {
                const type = document.getElementById('typeFilterBar').value;
                let data;
                if (type === 'department') {
                    data = departments;
                } else {
                    data = categories;
                }
                
                stackedBarChart.updateOptions({
                    xaxis: {
                        departments: data.map(item => item.name),
                    },
                    series: [{
                        name: 'Engineering & Maintenance',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100)) // Data dummy random
                    }, {
                        name: 'Finance Admin',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'HCD',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'Manufacturing',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'QM & HSE',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'R&D',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'Sales & Marketing',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'Supply Chain',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }],
                });
            }

            // Fungsi untuk memperbarui grafik berdasarkan Year
            function updateBarChartYear() {
                const yearSelect = document.getElementById('yearFilterBar').value;
                console.log(yearSelect);
                 fetch(`/chartfilter?year=${yearSelect}&name=AI Implementation`)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            console.log("Hasil Data: ",data);
                            
                            // Update option bar chart
                            stackedBarChart.updateOptions({
                                xaxis: {
                                    type: 'category',
                                    data: Barmonths
                                },
                                series: Object.keys(data).map(department => {
                                    return {
                                        name: department,  // Department name (e.g., 'Finance Admin')
                                        type: 'bar',
                                        data: data[department],  // Array of data for the department (12 values for 12 months)
                                    };
                                })
                            });
                        })
                        .catch(error => console.error('Error fetching data:', error));
            }

            function updatePieChartYear() {
                const yearSelect = document.getElementById('yearFilterPie').value;
                
                fetch(`/chartfilter?year=${yearSelect}&name=Best Practice Implementation`)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            console.log("Data: ",data);

                        bestPracticePieChart.updateOptions({
                            series: Object.keys(data).map(item => data[item].reduce((sum, value) => sum + value, 0)), // Data dummy random
                            labels: Object.keys(data).map(item => item)
                        });

                        })
                        .catch(error => console.error('Error fetching data:', error)); 
            }


            function updateNovaBarChartYear() {
                const yearSelect = document.getElementById('yearFilterNova').value;
                console.log(yearSelect);
                 fetch(`/chartfilter?year=${yearSelect}&name=NoVA-A Elimination`)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            console.log("Hasil Data: ",data);
                            
                            // Update option bar chart
                            novaBarChart.updateOptions({
                                xaxis: {
                                    type: 'category',
                                    data: Barmonths
                                },
                                series: Object.keys(data).map(department => {
                                    return {
                                        name: department,  // Department name (e.g., 'Finance Admin')
                                        type: 'bar',
                                        data: data[department],  // Array of data for the department (12 values for 12 months)
                                    };
                                })
                            });
                        })
                        .catch(error => console.error('Error fetching data:', error));
        
            }

            function updateImprovementPieChart(){
                const yearSelect = document.getElementById('yearFilterImprovement').value;
                
                fetch(`/chartfilter?year=${yearSelect}&name=Improvement Implementation`)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            console.log("Data: ",data);

                        improvementPieChart.updateOptions({
                            series: Object.keys(data).map(item => data[item].reduce((sum, value) => sum + value, 0)), // Data dummy random
                            labels: Object.keys(data).map(item => item)
                        });

                        })
                        .catch(error => console.error('Error fetching data:', error)); 
            }



            // Tambahkan event listener untuk filter
            document.getElementById('yearFilterBar').addEventListener('change', updateBarChartYear);
            document.getElementById('yearFilterPie').addEventListener('change', updatePieChartYear);
            document.getElementById('yearFilterNova').addEventListener('change', updateNovaBarChartYear);
            document.getElementById('yearFilterImprovement').addEventListener('change', updateImprovementPieChart);

           
            var Barmonths= [
                    'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
                    'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
                ];
    
            // Inisialisasi grafik
            var stackedBarOptions = {
                series: [{
                        name: 'Engineering & Maintenance',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100)) // Data dummy random
                    }, {
                        name: 'Finance Admin',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'HCD',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'Manufacturing',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'QM & HSE',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'R&D',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'Sales & Marketing',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }, {
                        name: 'Supply Chain',
                        data: Barmonths.map(() => Math.floor(Math.random() * 100))
                    }],
                chart: {
                    type: 'bar',
                    height: 350,
                    stacked: true,
                    foreColor: '#b0bac2' // Text color for dark mode
                },
                plotOptions: {
                    bar: {
                        horizontal: false, // Mengubah bar chart menjadi horizontal
                    },
                },
                xaxis: {
                    categories: Barmonths, // Menggunakan nama dari data kategori
                },
                legend: {
                    position: 'right',
                    offsetY: 40
                },
                fill: {
                    opacity: 2
                },
                tooltip: {
                    theme: 'dark' // Tooltip theme for dark mode
                }
            };

            var stackedBarChart = new ApexCharts(document.querySelector("#stackedBarChart"), stackedBarOptions);
            stackedBarChart.render();
            
            const pieChart = @json($pieChart);
            var bestPracticePieOptions = {
                series: pieChart.map(pieChart => pieChart.idea_count), // Data dummy random
                chart: {
                    type: 'pie',
                    height: 350,
                    foreColor: '#b0bac2' // Text color for dark mode
                },
                labels: pieChart.map(pieChart => pieChart.department_name), // Menggunakan nama dari data kategori
                responsive: [{
                    breakpoint: 480,
                    options: {
                        chart: {
                            width: 200
                        },
                        legend: {
                            position: 'bottom'
                        }
                    }
                }],
                tooltip: {
                    theme: 'dark' // Tooltip theme for dark mode
                }
            };



            var bestPracticePieChart = new ApexCharts(document.querySelector("#bestPracticePieChart"), bestPracticePieOptions);
            bestPracticePieChart.render();


            var novaBarOptions = {
                ...stackedBarOptions,
                xaxis: {
                    categories: Barmonths, // Menggunakan nama dari data kategori
                },
            };

            var novaBarChart = new ApexCharts(document.querySelector("#novaBarChart"), novaBarOptions);
            novaBarChart.render();

            var improvementPieOptions = {
                ...bestPracticePieOptions,
                // labels: de.map(category => category.department_name), // Menggunakan nama dari data kategori
            };

            var improvementPieChart = new ApexCharts(document.querySelector("#improvementPieChart"), improvementPieOptions);
            improvementPieChart.render();
            
            document.addEventListener('DOMContentLoaded', function() {
           
            });


            
            document.getElementById('year-novaa').addEventListener('change', getNovAALeaderboardData);
            document.getElementById('month-novaa').addEventListener('change', getNovAALeaderboardData);
            document.getElementById('year-bestpractice').addEventListener('change', getbestPracticeLeaderboardData);
            document.getElementById('month-bestpractice').addEventListener('change', getbestPracticeLeaderboardData);
            document.getElementById('year-improvement').addEventListener('change', getImprovementLeaderboardData);
            document.getElementById('month-improvement').addEventListener('change', getImprovementLeaderboardData);
            document.getElementById('year-AI').addEventListener('change', getAILeaderboardData);
            document.getElementById('month-AI').addEventListener('change', getAILeaderboardData);

            function getNovAALeaderboardData(){

                const yearSelect = document.getElementById('year-novaa').value;
                const monthSelect = document.getElementById('month-novaa').value;
                console.log(yearSelect, monthSelect);   
                
                fetch(`/filter?year=${yearSelect}&month=${monthSelect}&name=NoVA-A Elimination`)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                const table = document.querySelector("#table-novaa tbody");
                                console.log(data);
                                table.innerHTML = "";
                                data.forEach((item, index) => {
                                    console.log(item);
                                    table.innerHTML += `
                                        <tr>
                                            <td>${index+1}</td> 
                                            <td>${item.name}</td> 
                                            <td>${item.idea_count}</td> 
                                        </tr>
                                    `;
                                });

                            })
                            .catch(error => console.error('Error fetching data:', error));

                        }

                 function getbestPracticeLeaderboardData(){

                const yearSelect = document.getElementById('year-bestpractice').value;
                const monthSelect = document.getElementById('month-bestpractice').value;
                console.log(yearSelect, monthSelect);

                fetch(`/filter?year=${yearSelect}&month=${monthSelect}&name=Best Practice Implementation`)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                const table = document.querySelector("#table-bestpractice tbody");
                                console.log(data);
                                table.innerHTML = "";
                                data.forEach((item, index) => {
                                    console.log(item);
                                    table.innerHTML += `
                                        <tr>
                                            <td>${index+1}</td> 
                                            <td>${item.name}</td> 
                                            <td>${item.idea_count}</td> 
                                        </tr>
                                    `;
                                });

                            })
                            .catch(error => console.error('Error fetching data:', error));
                        }

                function getImprovementLeaderboardData(){

                    const yearSelect = document.getElementById('year-improvement').value;
                    const monthSelect = document.getElementById('month-improvement').value;
                    console.log(yearSelect, monthSelect);

                    fetch(`/filter?year=${yearSelect}&month=${monthSelect}&name=Improvement Implementation`)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                const table = document.querySelector("#table-improvement tbody");
                                console.log(data);
                                table.innerHTML = "";
                                data.forEach((item, index) => {
                                    console.log(item);
                                    table.innerHTML += `
                                        <tr>
                                            <td>${index+1}</td> 
                                            <td>${item.name}</td> 
                                            <td>${item.idea_count}</td> 
                                        </tr>
                                    `;
                                });

                            })
                            .catch(error => console.error('Error fetching data:', error));
                }

                function getAILeaderboardData(){

                const yearSelect = document.getElementById('year-AI').value;
                const monthSelect = document.getElementById('month-AI').value;
                console.log(yearSelect, monthSelect);

                fetch(`/filter?year=${yearSelect}&month=${monthSelect}&name=AI Implementation`)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                const table = document.querySelector("#table-AI tbody");
                                console.log(data);
                                table.innerHTML = "";
                                data.forEach((item, index) => {
                                    console.log(item);
                                    table.innerHTML += `
                                        <tr>
                                            <td>${index+1}</td> 
                                            <td>${item.name}</td> 
                                            <td>${item.idea_count}</td> 
                                        </tr>
                                    `;
                                });

                            })
                            .catch(error => console.error('Error fetching data:', error));
                
            }

        </script>
    @endpush

</x-app-layout>