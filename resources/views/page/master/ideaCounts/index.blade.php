<x-app-layout>
    @section('title')
        Target
    @endsection

    @push('css')
        <link rel="stylesheet" href="{{ asset('assets') }}/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css">

        <style>
            
        </style>
    @endpush
    <div class="font-weight-medium shadow-none position-relative overflow-hidden mb-7">
        <div class="card-body px-0">
            <div class="d-flex justify-content-between align-items-center">
                    <h1 class="font-weight-medium mb-0 ml-3">Idea Count By User</h1>
                    <nav aria-label="breadcrumb mr-3">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a class="text-muted text-decoration-none" href="{{ route('dashboard') }}">Home
                                </a>
                            </li>
                            <li class="breadcrumb-item text-muted" aria-current="page">Idea Counts</li>
                        </ol>
                    </nav>
            </div>
        </div>
    </div>

    <div class="widget-content searchable-container list">

        <div class="card card-body">
            <div class="">
            <!-- onchange="getDataByDepartment(this)" -->
                <select id="department" class="form-select filter-select w-auto" aria-label="Filter by Department">
                    @foreach ($departments as $department)
                        <option value="{{ $department->id }}">{{ $department->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="table-responsive mt-2">
                <table class="table search-table align-middle text-nowrap" id="targetTable">
                    <thead class="header-item">
                        <th>No</th>
                        <th>Name</th>
                        <th>Idea Counts</th>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>

    </div>

  

    
    @push('scripts')
    <script src="{{ asset('assets') }}/libs/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="{{ asset('assets') }}/js/datatable/datatable-basic.init.js"></script>
    <script>
       $(document).ready(function() {
            // Inisialisasi DataTables sekali
            var table = $('#targetTable').DataTable({
                processing: true,
                serverSide: false,
                ajax: {
                    url: '{{ route('idea_count.search') }}', // Ganti dengan rute yang sesuai
                    type: 'GET',
                    data: function(d) {
                        // Kirim departmentId yang dipilih ke server
                        d.departmentId = $('#department').val();
                    },
                    dataSrc: function(response) {
                        return response; // Sesuaikan dengan struktur data yang diterima dari server
                    }
                },
                columns: [
                    { data: null, render: function(data, type, row, meta) { return meta.row + 1; } }, // Nomor urut
                    { data: 'name' },  // Nama ide
                    { data: 'idea_count' }  // Jumlah ide
                ],
                language: {
                    emptyTable: "No data available"  // Pesan jika tidak ada data
                }
            });

            // Event listener untuk menangani perubahan filter di select
            $('#department').change(function() {
                // Memuat ulang data berdasarkan department yang dipilih
                table.ajax.reload(); // Memuat ulang data dengan parameter yang baru
            });
        });


    </script>
@endpush
</x-app-layout>
