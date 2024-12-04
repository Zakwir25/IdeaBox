<x-app-layout>
    @push('css')
        <link rel="stylesheet" href="{{ asset('assets/libs/select2/dist/css/select2.min.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/libs/quill/dist/quill.snow.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/libs/dropzone/dist/min/dropzone.min.css') }}">
        <style>
            .dropzone-style {
                border: 2px dashed #007bff;
                border-radius: 5px;
                padding: 20px;
                text-align: center;
                cursor: pointer;
                color: #007bff;
            }

            .image-wrapper {
                position: relative;
                width: 100px;
                height: 100px;
                overflow: hidden;
            }

            .image-wrapper img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .delete-icon {
                position: absolute;
                top: 5px;
                right: 5px;
                background-color: transparent;
                border: none;
                cursor: pointer;
                font-size: 16px;
                line-height: 1;
                padding: 2px 5px;
            }

            .delete-icon i {
                color: red;
            }

            
            video {
                position: fixed;
                right: 0;
                bottom: 0;
                min-width: 100%;
                min-height: 100%;
                }
        </style>
    @endpush
    @section('title')
        Add Ideas
    @endsection
    <video autoplay loop muted>
            <source src="{{ asset('assets/Videobackground/Background.mp4') }}" type="video/mp4">        
        </video>

    <div class="container-fluid font-weight-medium shadow-none position-relative overflow-hidden mb-7">
        <div class="card card-body p-e my-1">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <h4 class="font-weight-medium fs-14 mb-0">Add Ideas</h4>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a class="text-muted text-decoration-none" href="">Home
                                </a>
                            </li>
                            <li class="breadcrumb-item text-muted" aria-current="page">Add Ideas</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <!-- start Basic Area Chart -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 ">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-7">
                            <h4 class="card-title">Form Idea</h4>

                            <button class="navbar-toggler border-0 shadow-none d-md-none" type="button"
                                data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
                                aria-controls="offcanvasRight">
                                <i class="ti ti-menu fs-5 d-flex"></i>
                            </button>
                        </div>
                        <form id="ideaForm" action="{{ route('ideas.store') }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="mb-4">
                                <label class="form-label">Title <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="title" required>
                                <p class="fs-2">A title is required and recommended to be unique.</p>
                            </div>
                            <div class="mb-4">
                                <label class="form-label">Category <span class="text-danger">*</span></label>
                                <select class="form-control" id="categorySelect" name="category_id" required>
                                    <option value="">Select Category</option>
                                    <option value="1">NoVA-A Elimination </option>
                                    <option value="2">Best Practice Implementation</option>
                                    <option value="3">Improvement Implementation</option>
                                    <option value="4">AI Implementation</option>
                                </select>
                            </div>

                            <!-- New Team Member Field -->
                            <div class="mb-4">
                                <label class="form-label">Idea Team Member <span class="text-danger">*</span></label>
                                <select name="members[]" class="select2 form-control"
                                    multiple="multiple">
                                    @foreach ($users as $user)
                                        <option value="{{ $user->id }}">
                                            {{ $user->name }}
                                        </option>
                                    @endforeach
                                </select>
                                <p class="fs-2">Please enter the name of the team member associated with this idea.</p>
                            </div>

                            <div id="dynamicFields">
                                <!-- Dynamic fields will be inserted here based on category -->
                            </div>

                            <div class="mb-4">
                                <label class="form-label">Description</label>
                                <div id="editor"></div>
                                <input type="hidden" name="description" id="descriptionInput">
                                <!-- Input tersembunyi -->
                                <p class="fs-2 mb-0">Set a description to the idea for better visibility.</p>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Images (Optional)</label>
                                <div class="dropzone-style" id="dropzoneArea">
                                    <input type="file" class="form-control" name="files[]" accept=".jpeg,.jpg,.png"
                                        id="fileInput" multiple style="display: none;">
                                    <p>Drop files here or click to upload.</p>
                                </div>
                                <div id="imagePreviewContainer"
                                    style="display: flex; flex-wrap: wrap; gap: 10px; margin-top: 10px;"></div>
                                <p class="fs-2">Upload image files for the idea. Only *.png, *.jpg and *.jpeg image
                                    files
                                    are accepted. Max size 2MB each.</p>
                            </div>
                            <button type="submit" class="btn btn-danger w-100 d-block py-2 px-4 fw-bold">
                                Submit Idea
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end Basic Area Chart -->

    @push('scripts')
        <script src="{{ asset('assets/libs/select2/dist/js/select2.full.min.js') }}"></script>
        <script src="{{ asset('assets/libs/select2/dist/js/select2.min.js') }}"></script>
        <script src="{{ asset('assets/libs/quill/dist/quill.min.js') }}"></script>
        {{-- <script src="{{ asset('assets/js/forms/quill-init.js') }}"></script> --}}
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                $('.select2').select2({
                    maximumSelectionLength: 5,  // Limit the number of selections to 5
                    language: {
                        maximumSelectionLength: function (args) {
                        return "You can only select up to " + args.maximum + " options.";  // Custom message
                       }
                      }
                });
            });
            document.getElementById('categorySelect').addEventListener('change', function() {
                const category = this.value;
                const dynamicFields = document.getElementById('dynamicFields');
                dynamicFields.innerHTML = ''; // Clear previous fields

                if (category === '1') {
                    dynamicFields.innerHTML = `
                        <label class="form-label text-primary" style="word-wrap: break-all;">*Eliminasi kegiatan yang tidak memiliki nilai tambahan di Sinar Meadow (DOWNTIME: Defect, Overproduction, Waiting, Non-Utilized Talent, Transport, Inventory, Motion, Extra-Processing). Serta troubleshooting atas suatu masalah.*</label>
                        <div class="mb-4">
                            <label class="form-label">Before</label>
                            <input type="text" class="form-control" name="before">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">After</label>
                            <input type="text" class="form-control" name="after">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Benefit (Time/Rupiah)</label>
                            <input type="text" class="form-control" name="benefit">
                        </div>
                    `;
                } else if (category === '2') {
                    dynamicFields.innerHTML = `
                        <label class="form-label text-primary" style="word-wrap: break-all;">*Penerapan inovasi di Sinar Meadow yang terinspirasi dari tempat lain yang sudah terbukti efektif & berdampak di tempat lain (Copycat/Copypride).*</label>
                        <div class="mb-4">
                            <label class="form-label">Before</label>
                            <input type="text" class="form-control" name="before">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">After</label>
                            <input type="text" class="form-control" name="after">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Sumber Best Practice</label>
                            <input type="text" class="form-control" name="sumber_best_practice">
                        </div>
                    `;
                } else if (category === '3') {
                    dynamicFields.innerHTML = `
                        <label class="form-label text-primary" style="word-wrap: break-all;">*Implementasi pemberian nilai tambah dari proses yang sudah ada di Sinar Meadow. Menerapkan standar/cara baru untuk proses yang sudah ada.*</label>
                        <div class="mb-4">
                            <label class="form-label">Proses yang diimprove</label>
                            <input type="text" class="form-control" name="proses_improve">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Before</label>
                            <input type="text" class="form-control" name="before">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">After</label>
                            <input type="text" class="form-control" name="after">
                        </div>
                    `;
                } else if (category === '4') {
                    dynamicFields.innerHTML = `
                        <label class="form-label text-primary" style="word-wrap: break-all;">*Pemanfaatan AI untuk improvement maupun problem solving pada pekerjaan di Sinar Meadow.*</label>
                        <div class="mb-4">
                            <label class="form-label">Before</label>
                            <input type="text" class="form-control" name="before">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">After</label>
                            <input type="text" class="form-control" name="after">
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Nama AI</label>
                            <input type="text" class="form-control" name="nama_ai">
                        </div>
                    `;
                }
            });

            document.getElementById('dropzoneArea').addEventListener('click', function() {
                document.getElementById('fileInput').click();
            });

            document.getElementById('fileInput').addEventListener('change', function(event) {
                const files = event.target.files;
                const imagePreviewContainer = document.getElementById('imagePreviewContainer');
                imagePreviewContainer.innerHTML = ''; // Clear previous previews

                Array.from(files).forEach(file => {
                    if (file.size > 2 * 1024 * 1024) { // Check file size (2MB)
                        alert('File size exceeds 2MB: ' + file.name);
                        return; // Skip adding this file
                    }

                    const reader = new FileReader();
                    reader.onload = function(e) {
                        const imageWrapper = document.createElement('div');
                        imageWrapper.classList.add('image-wrapper');

                        const img = document.createElement('img');
                        img.src = e.target.result;

                        const deleteButton = document.createElement('button');
                        deleteButton.classList.add('delete-icon');
                        deleteButton.innerHTML = '<i data-feather="x"></i>';
                        deleteButton.onclick = function() {
                            imageWrapper.remove();
                        };

                        imageWrapper.appendChild(img);
                        imageWrapper.appendChild(deleteButton);
                        imagePreviewContainer.appendChild(imageWrapper);

                        // Refresh feather icons
                        feather.replace();
                    };
                    reader.readAsDataURL(file);
                });
            });


            // Inisialisasi Quill
            var quill = new Quill('#editor', {
                theme: 'snow'
            });

            // Ambil nilai dari Quill dan simpan ke input tersembunyi
            quill.on('text-change', function() {
                var descriptionInput = document.getElementById('descriptionInput');
                descriptionInput.value = quill.root.innerHTML; // Ambil HTML dari Quill
            });

           
        </script>
    @endpush
</x-app-layout>
