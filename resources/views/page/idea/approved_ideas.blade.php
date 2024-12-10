<x-app-layout>
    @section('title')
        My Ideas
    @endsection
    @push('css')
        <link rel="stylesheet" href="{{ asset('assets') }}/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
    @endpush
    <div class="card w-100 position-relative overflow-hidden">
        <div class="px-4 py-3 border-bottom">
          <h4 class="card-title mb-0">Approved Ideas</h4>
        </div>
        <div class="card-body p-4">
          <div class="table-responsive">
            <table id="ideasTable" class="table align-middle text-nowrap" >
                <thead>
                    <tr>
                        <th>
                            No.
                        </th>
                        <th>
                            Name
                        </th>
                        <th>
                            Status
                        </th>
                        <th>
                            Note
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($ideas as $idea)
                    <tr>
                        <td>
                            {{$loop->iteration}}
                        </td>
                        <td>
                            {{$idea->title}}
                        </td>
                            <td>
                                <span class="{{ strtolower($idea->status) == 'approved' ? 'text-success' : 'text-danger' }}">
                                    {{ucwords($idea->status)}}
                                </span> 
                        </td>
                        <td>
                            {{$idea->note}}
                        </td>
                    </tr>
                    @endforeach
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
                var table = $('#ideasTable').DataTable();
            });
        </script>
    @endpush
</x-app-layout>
