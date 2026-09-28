var phpurl = "php/controllers/index.php";

$(document).ready(function () {

    // ---------- Toast ----------
    toastr.options = {
        closeButton: false,
        progressBar: false,
        positionClass: "toast-top-right",
        preventDuplicates: false,
        showDuration: "300",
        hideDuration: "1000",
        timeOut: "5000",
        extendedTimeOut: "1000",
        showEasing: "swing",
        hideEasing: "linear",
        showMethod: "fadeIn",
        hideMethod: "fadeOut"
    };

    function makeToast(text = "") {
        toastr["success"](text);
    }

    // ---------- Helper: escape text so it can't inject HTML ----------
    function esc(value) {
        return $('<div>').text(value ?? '').html();
    }

    // ---------- DataTable: search bar, "show X students" dropdown, sortable columns ----------
    var table = $('#studentTable').DataTable({
        data: [],
        pageLength: 10,
        lengthMenu: [5, 10, 25, 50, 100],
        order: [[0, 'asc']],
        layout: {
            topStart: 'pageLength',   // dropdown, top left
            topEnd: 'search',         // search bar, top right
            bottomStart: 'info',
            bottomEnd: 'paging'
        },
        language: {
            lengthMenu: 'Show _MENU_ students',
            search: '',
            searchPlaceholder: 'Search students...',
            emptyTable: 'No students found.',
            info: 'Showing _START_ to _END_ of _TOTAL_ students'
        },
        columns: [
            { data: 'student_id' },
            { data: 'first_name', render: esc },
            { data: 'last_name',  render: esc },
            {
                data: 'gender',
                render: function (g) {
                    if (g == 0 || g === '0') return 'Male';
                    if (g == 1 || g === '1') return 'Female';
                    return esc(g);
                }
            },
            { data: 'dob' },
            { data: 'email', render: esc },
            {
                data: 'class',
                render: function (c) {
                    return '<span class="badge badge-class rounded-pill px-2 py-1">' + esc(c) + '</span>';
                }
            },
            {
                data: 'student_id',
                orderable: false,      // no sort arrow on Actions
                searchable: false,
                className: 'text-end',
                render: function (id) {
                    return '<button type="button" class="btn btn-sm btn-outline-danger btn-delete" data-id="' + esc(id) + '">' +
                           '<i class="bi bi-trash3-fill"></i></button>';
                }
            }
        ]
    });

    // ---------- Load data ----------
    function loadStudents() {
        $.get(phpurl, { opt: '1' }, function (res) {
            var response = typeof res === 'string' ? JSON.parse(res) : res;

            table.clear();
            if (response.status === 'success' && response.data.length > 0) {
                table.rows.add(response.data);
            }
            table.draw(false); // stay on the current page
        }, 'json');
    }

    loadStudents();
    makeToast("loading page...");

    // ---------- Add student ----------
    $('#formAddStudent').on('submit', function (e) {
        e.preventDefault();

        var formData = {
            opt: '2',
            first_name: $('#firstName').val(),
            last_name: $('#lastName').val(),
            gender: $('#gender').val(),
            dob: $('#dob').val(),
            email: $('#email').val(),
            class: $('#classInput').val()
        };

        $.post(phpurl, formData, function (res) {
            var response = typeof res === 'string' ? JSON.parse(res) : res;

            if (response.status === 'success') {
                $('#formAddStudent')[0].reset();
                var modal = bootstrap.Modal.getInstance(document.getElementById('modalAddStudent'));
                if (modal) modal.hide();
                loadStudents();
                makeToast("Inserting student");
            } else {
                alert(response.message);
            }
        }, 'json');
    });

    // ---------- Delete student ----------
    $(document).on('click', '.btn-delete', function () {
        var studentId = $(this).data('id');

        if (confirm("Are you sure you want to delete this student?")) {
            $.post(phpurl, { opt: '3', id: studentId }, function (res) {
                var response = typeof res === 'string' ? JSON.parse(res) : res;

                if (response.status === 'success') {
                    loadStudents();
                    makeToast("Deleting a record");
                } else {
                    alert(response.message);
                }
            }, 'json');
        }
    });

    // ---------- Refresh ----------
    $('#btnRefresh').on('click', loadStudents);
});
