<?php
$this->load->view('Template/Link-css'); ?>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<?= base_url('assets/css/table-data.css') ?>">
<?php
$this->load->view('Template/Header');
$this->load->view('Template/SubHeader'); ?>

<!-- Content -->
<div class='MYbounce bg-warning'>
    <h4 class="text-center montserrat-600 letter-spacing text-white text-size-5" id='text-selected ' style="padding: 0; margin: 0;">
        <label class="text-center" id='counter-selected' style="padding: 0; margin: 0;"></label> Item terpilih
    </h4>
</div>
<!-- /BOUNCE -->

<!-- OPTION -->
<div class="text-center" style="position:relative;">

    <button type="submit" title="Edit" name="action" value='edit' id="fixedbutton" class="btn btn-primary btn-sm px-3 py-3">
        <i class="text-size-10 fas fa-pencil-alt"></i>
    </button>


    <button onclick="return confirm('Apakah anda yakin, ingin menghapusnya ?')" type="submit" name="action" value='hapus' id="fixedbutton2" class="btn btn-primary btn-sm px-3 py-3" title="Hapus">
        <i class="text-size-10 far fa-trash-alt"></i>
    </button>


</div>
<!-- /OPTION -->


<!-- Table -->
<section class="container mt-3">
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <h3 class="card-title">
                <?= ICON_LENCANA ?>
                Pengguna</h3>
            <a href="#" class="btn btn-primary px-2 montserrat-600 letter-spacing py-2" data-toggle="modal" data-target="#modal-simple">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="20" height="20" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" />
                    <line x1="12" y1="5" x2="12" y2="19" />
                    <line x1="5" y1="12" x2="19" y2="12" /></svg>
                Tambah
            </a>
        </div>
        <div class="table-responsive">
            <table class="table card-table table-striped table-vcenter text-nowrap datatable mb-0 table-sm" id="listnauser">
                <thead>
                    <tr>
                        <th class="letter-spacing text-center" style="font-size:15px; text-transform:capitalize">Nama
                            User</th>
                        <th class="letter-spacing text-center" style="font-size:15px; text-transform:capitalize">
                            Username</th>
                        <th class="letter-spacing text-center" style="font-size:15px; text-transform:capitalize">Level
                        </th>
                        <th class="letter-spacing text-center" style="font-size:15px; text-transform:capitalize">
                            Aksi</th>
                    </tr>

                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</section>
<!-- /Table -->


<!-- Modal -->
<div class="modal modal-blur fade" id="modal-simple" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">
                    <?= ICON_LENCANA ?>
                    Tambah Pengguna</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <?= ICON_CLOSE ?>
                </button>
            </div>
            <div class="modal-body my-1">
                <!-- Content -->
                <form id="formAddUser">
                    <div class="row">

                        <!-- Nama Pangkat -->
                        <div class="col-lg-12">
                            <label class="form-label">Nama User</label>
                            <input type="text" class="form-control" name="nama_user" placeholder="Ujang Maman" required>
                        </div>

                        <div class="col-lg-12">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control" name="username" placeholder="helloworld" required>
                        </div>

                        <!-- <div class="col-lg-12">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Password" required>
                        </div> -->

                        <div class="col-lg-12">
                            <label class="form-label">Level</label>
                            <select name="level" class="form-control">
                                <option value="1">Admin</option>
                                <option value="2">Penilai</option>
                                <option value="3">Siswa</option>
                            </select>
                        </div>


                        <!-- <div class="col-lg-12">
                            <label class="form-label">Akses</label>
                            <input name='akses' class="form-control" placeholder='write some tags'>
                        </div> -->

                        <!-- <div class="col-lg-12">
                            <label class="form-label">Akses Kelompok</label>
                            <select name="akses_kelompok" class="form-control">
                                <option value="1">Admin</option>
                                <option value="2">Penilai</option>
                                <option value="3">Siswa</option>
                            </select>
                        </div> -->
                        <!-- /Nama Pangkat -->

                    </div>
                    <!-- /Content -->

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white mr-auto" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">
                    <?= ICON_SAVE ?>
                    Simpan
                </button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal modal-blur fade" id="modal-edit" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">
                    <?= ICON_LENCANA ?>
                    Edit Pengguna</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <?= ICON_CLOSE ?>
                </button>
            </div>
            <div class="modal-body my-1">
                <!-- Content -->
                <form id="formEditUser">
                    <div class="row">

                        <input type="hidden" class="form-control" name="id_user" id="idData" required>

                        <!-- Nama Pangkat -->
                        <div class="col-lg-12">
                            <label class="form-label">Nama User</label>
                            <input type="text" class="form-control" id="nama_user1" name="nama_user" placeholder="Ujang Maman" required>
                        </div>

                        <div class="col-lg-12">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control" id="username1" name="username" placeholder="helloworld" required>
                        </div>

                        <!-- <div class="col-lg-12">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" id="password1" name="password" placeholder="Password" required>
                        </div> -->

                        <div class="col-lg-12">
                            <label class="form-label">Level</label>
                            <select name="level" id="level1" class="form-control">
                                <option value="1">Admin</option>
                                <option value="2">Penilai</option>
                                <option value="3">Siswa</option>
                            </select>
                        </div>
                        <!-- 
                        <div class="col-lg-12">
                            <label class="form-label">Akses</label>
                            <input name="akses" id="akses1" class="form-control" placeholder=' write some tags'>
                        </div> -->

                        <div class="col-lg-12">
                            <label class="form-label">Akses Kelompok</label>
                            <select name="akses_kelompok" id="akses_kelompok1" class="form-control">
                                <option value="1">Admin</option>
                                <option value="2">Penilai</option>
                                <option value="3">Siswa</option>
                            </select>
                        </div>
                        <!-- /Nama Pangkat -->

                    </div>
                    <!-- /Content -->

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white mr-auto" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">
                    <?= ICON_SAVE ?>
                    Simpan
                </button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal modal-blur fade" id="modal-akses" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">
                    <?= ICON_LENCANA ?>
                    Edit Pengguna</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <?= ICON_CLOSE ?>
                </button>
            </div>
            <div class="modal-body my-1">
                <!-- Content -->
                <form id="formEditAkses">
                    <div class="row">
                        <Label>keterangan
                            <li>1 : Penilaian Produk</li>
                            <li>2 : Penilaian Telegram</li>
                            <li>3 : Penilaian Telepon</li>
                            <li>4 : Penilaian Posko</li>
                        </Label>
                        <input type="hidden" class="form-control" name="id_user" id="idData1" required>

                        <div class="col-lg-12">
                            <label class="form-label">Akses</label>
                            <input name="akses" id="aksesna" class="form-control" placeholder=' '>
                        </div>
                        <div class="col-lg-12">
                            <label class="form-label">Akses Kelompok</label>
                            <input name="akses_kelompok" id="akses_kelompok" class="form-control" placeholder=' '>
                        </div>


                    </div>
                    <!-- /Content -->

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white mr-auto" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">
                    <?= ICON_SAVE ?>
                    Simpan
                </button>
                </form>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    <style contenteditable>/* Suggestions items */
.tagify__dropdown.users-list .tagify__dropdown__item{
    padding: .5em .7em;
    display: grid;
    grid-template-columns: auto 1fr;
    gap: 0 1em;
    grid-template-areas: "avatar name"
                         "avatar email";
}

.tagify__dropdown.users-list .tagify__dropdown__item:hover .tagify__dropdown__item__avatar-wrap{
    transform: scale(1.2);
}

.tagify__dropdown.users-list .tagify__dropdown__item__avatar-wrap{
    grid-area: avatar;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    overflow: hidden;
    background: #EEE;
    transition: .1s ease-out;
}

.tagify__dropdown.users-list img{
    width: 100%;
    vertical-align: top;
}

.tagify__dropdown.users-list strong{
    grid-area: name;
    width: 100%;
    align-self: center;
}

.tagify__dropdown.users-list span{
    grid-area: email;
    width: 100%;
    font-size: .9em;
    opacity: .6;
}

.tagify__dropdown.users-list .addAll{
    border-bottom: 1px solid #DDD;
    gap: 0;
}


/* Tags items */
#users-list .tagify__tag{
    white-space: nowrap;
}

#users-list .tagify__tag:hover .tagify__tag__avatar-wrap{
    transform: scale(1.6) translateX(-10%);
}

#users-list .tagify__tag .tagify__tag__avatar-wrap{
    width: 16px;
    height: 16px;
    white-space: normal;
    border-radius: 50%;
    margin-right: 5px;
    transition: .12s ease-out;
}

#users-list .tagify__tag img{
    width: 100%;
    vertical-align: top;
}
</style>
</style>

<?php $this->load->view('Template/Link-js'); ?>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
</script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(document).ready(function() {
        table = $('#listnauser').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": url + router + 'get',
                'type': 'POST'
            },
            "columnDefs": [{
                    targets: 0,
                    className: ' montserrat-600'
                },
                {
                    sClass: "text-center",
                    targets: 1,
                    orderable: false
                },
                {
                    sClass: "text-center",
                    targets: 2,
                    orderable: false
                },
                {
                    sClass: "text-center",
                    targets: 3,
                    orderable: false
                }
            ]
        });

        $('.dataTables_wrapper .row:nth-child(3)').addClass("bg-grey px-4 card-footer pb-1").css({
            'padding-top': '10px',
            'margin-top': '-8px'
        })
        $('.dataTables_wrapper .row:nth-child(3) .dataTables_info').addClass("p-0")
        $('.dataTables_wrapper .row:nth-child(3) .dataTables_paginate').addClass("m-0")
        $('table thead tr th:nth-child(1) label span').css('padding', '0px')
        $('label.pure-material-checkbox').css('padding', '0px')
        if (IsMobile() == true) {
            $('#fixedbutton').css('left', "45%")
            $('#fixedbutton2').css('left', "62%")
        }

    });

    $("#formAddUser").submit(function(e) {
        e.preventDefault();
        $.ajax({
            url: url + router + "store",
            type: "post",
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                disableButton()
            },
            complete: function() {
                enableButton()
            },
            success: function(result) {
                let response = JSON.parse(result)
                if (response.status == "fail") {
                    pesan_error('Gagal', response.msg)
                } else {
                    table.ajax.reload(null, false)
                    pesan_sukses('Sukses', response.msg)
                    clearInput($("input"))
                }
            },
            error: function(event) {
                errorCode(event)
            }
        })
    })

    $("#formEditUser").submit(function(e) {
        e.preventDefault();
        $.ajax({
            url: url + router + "update",
            type: "post",
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                disableButton()
            },
            complete: function() {
                enableButton()
            },
            success: function(result) {
                let response = JSON.parse(result)
                if (response.status == "fail") {
                    pesan_error('Gagal', response.msg)
                } else {
                    table.ajax.reload(null, false)
                    pesan_sukses('Sukses', response.msg)
                    clearInput($("input"))
                    $("#modal-edit").modal('hide')
                }
            },
            error: function(event) {
                errorCode(event)
            }
        })
    })

    $('#listnauser').on('click', '#edit', function() {
        let id = $(this).data('id');

        $.ajax({
            url: url + router + 'getData/' + id,
            type: "GET",
            success: function(result) {
                response = JSON.parse(result)
                $("#idData").val(response.id_user)
                $("#nama_user1").val(response.nama_user)
                $("#username1").val(response.username)
                // $("#password1").val(response.password)
                $("#level1").val(response.level).change()
                $("#akses1").val(response.akses).change()
                $("#akses_kelompok1").val(response.akses_kelompok).change()
                $("#modal-edit").modal('show')
            },
            error: function(error) {
                errorCode(error)
            }
        })
    })

    $('#listnauser').on('click', '#delete', function() {
        let id = $(this).data('id');
        // alert(id)
        if (confirm("Yakin akan menghapus data ?")) {
            $.ajax({
                url: url + router + 'delete/' + id,
                type: "GET",
                success: function(result) {
                    response = JSON.parse(result)
                    if (response.status == 'ok') {
                        table.ajax.reload(null, false)
                        // msgSweetSuccess(response.msg)
                        pesan_sukses('Sukses', response.msg)
                    } else {
                        // msgSweetWarning(response.msg)
                        pesan_warning('Warning', response.msg)
                    }
                },
                error: function(error) {
                    errorCode(error)
                }
            })
        }
    })

    $('#listnauser').on('click', '#akses', function() {
        let id = $(this).data('id');

        $.ajax({
            url: url + router + 'getData/' + id,
            type: "GET",
            success: function(result) {
                // var input = document.querySelector('input[name=akses_kelompok]');
                // var tagify = new Tagify(input);
                // var tags = [];
                // tags.push("Asdasd");
                // tagify.addTags(tags);
                // let akses_kelompok = '';

                // let kelompok = JSON.parse(response.akses_kelompok)
                // kelompok.forEach(key => {
                //     akses_kelompok += '' + key.value + ','
                // });
                response = JSON.parse(result)
                $("#idData1").val(response.id_user)
                $("#akses").val(response.akses)
                $("#akses_kelompok").val(response.akses_kelompok)
                $("#modal-akses").modal('show')
            },
            error: function(error) {
                errorCode(error)
            }
        })
    })

    $("#formEditAkses").submit(function(e) {
        e.preventDefault();
        $.ajax({
            url: url + router + "update",
            type: "post",
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                disableButton()
            },
            complete: function() {
                enableButton()
            },
            success: function(result) {
                let response = JSON.parse(result)
                if (response.status == "fail") {
                    pesan_error('Gagal', response.msg)
                } else {
                    table.ajax.reload(null, false)
                    pesan_sukses('Sukses', response.msg)
                    clearInput($("input"))
                    $("#modal-akses").modal('hide')
                }
            },
            error: function(event) {
                errorCode(event)
            }
        })
    })




    $('#listnauser').on('click', '#reset', function() {
        let id = $(this).data('id');
        // alert(id)
        if (confirm("Kata sandi akan di Reset ke Awal")) {
            $.ajax({
                url: url + router + 'set/' + id + "/reset",
                // url: baseUrl + 'admin/user/upk/set/' + id + "/reset",
                type: "GET",
                success: function(result) {
                    response = JSON.parse(result)
                    if (response.status == 'ok') {
                        table.ajax.reload(null, false)
                        // msgSweetSuccess(response.msg)
                        toastSuccess(response.msg)
                    } else {
                        // msgSweetWarning(response.msg)
                        toastWarning(response.msg)
                    }
                },
                error: function(error) {
                    errorCode(error)
                }
            })
        }
    })







   
</script>




<script data-name="users-list">
// https://www.mockaroo.com/
(function(){

var inputElm = document.querySelector('#aksesna');

function tagTemplate(tagData){
    return `
        <tag title="${tagData.email}"
                contenteditable='false'
                spellcheck='false'
                tabIndex="-1"
                class="tagify__tag ${tagData.class ? tagData.class : ""}"
                ${this.getAttributes(tagData)}>
            <x title='' class='tagify__tag__removeBtn' role='button' aria-label='remove tag'></x>
            <div>
                <div class='tagify__tag__avatar-wrap'>
                    <img src="${tagData.avatar}">
                </div>
                <span class='tagify__tag-text'>${tagData.name}</span>
            </div>
        </tag>
    `
}

function suggestionItemTemplate(tagData){
    return `
        <div ${this.getAttributes(tagData)}
            class='tagify__dropdown__item ${tagData.class ? tagData.class : ""}'
            tabindex="0"
            role="option">
            ${ tagData.avatar ? `
            <div class='tagify__dropdown__item__avatar-wrap'>
                <img src="${tagData.avatar}">
            </div>` : ''
            }
            <strong>${tagData.name}</strong>
            <span>${tagData.email}</span>
        </div>
    `
}

// initialize Tagify on the above input node reference
var tagify = new Tagify(inputElm, {
    enforceWhitelist: true,
    skipInvalid: true, // do not remporarily add invalid tags
    dropdown: {
        closeOnSelect: false,
        enabled: 0,
        classname: 'users-list',
        searchKeys: ['name', 'email']  // very important to set by which keys to search for suggesttions when typing
    },
    templates: {
        tag: tagTemplate,
        dropdownItem: suggestionItemTemplate
    },
    whitelist: [
        {
            "value": 1,
            "name": "Justinian Hattersley",
            "avatar": "https://i.pravatar.cc/80?img=1",
            "email": "jhattersley0@ucsd.edu"
        },
        {
            "value": 2,
            "name": "Antons Esson",
            "avatar": "https://i.pravatar.cc/80?img=2",
            "email": "aesson1@ning.com"
        },
        {
            "value": 3,
            "name": "Ardeen Batisse",
            "avatar": "https://i.pravatar.cc/80?img=3",
            "email": "abatisse2@nih.gov"
        },
        {
            "value": 4,
            "name": "Graeme Yellowley",
            "avatar": "https://i.pravatar.cc/80?img=4",
            "email": "gyellowley3@behance.net"
        },
        {
            "value": 5,
            "name": "Dildo Wilford",
            "avatar": "https://i.pravatar.cc/80?img=5",
            "email": "dwilford4@jugem.jp"
        },
        {
            "value": 6,
            "name": "Celesta Orwin",
            "avatar": "https://i.pravatar.cc/80?img=6",
            "email": "corwin5@meetup.com"
        },
        {
            "value": 7,
            "name": "Sally Main",
            "avatar": "https://i.pravatar.cc/80?img=7",
            "email": "smain6@techcrunch.com"
        },
        {
            "value": 8,
            "name": "Grethel Haysman",
            "avatar": "https://i.pravatar.cc/80?img=8",
            "email": "ghaysman7@mashable.com"
        },
        {
            "value": 9,
            "name": "Marvin Mandrake",
            "avatar": "https://i.pravatar.cc/80?img=9",
            "email": "mmandrake8@sourceforge.net"
        },
        {
            "value": 10,
            "name": "Corrie Tidey",
            "avatar": "https://i.pravatar.cc/80?img=10",
            "email": "ctidey9@youtube.com"
        }
    ]
})

tagify.on('dropdown:show dropdown:updated', onDropdownShow)
tagify.on('dropdown:select', onSelectSuggestion)

var addAllSuggestionsElm;

function onDropdownShow(e){
    var dropdownContentElm = e.detail.tagify.DOM.dropdown.content;

    if( tagify.suggestedListItems.length > 1 ){
        addAllSuggestionsElm = getAddAllSuggestionsElm();

        // insert "addAllSuggestionsElm" as the first element in the suggestions list
        dropdownContentElm.insertBefore(addAllSuggestionsElm, dropdownContentElm.firstChild)
    }
}

function onSelectSuggestion(e){
    if( e.detail.elm == addAllSuggestionsElm )
        tagify.dropdown.selectAll.call(tagify);
}

// create a "add all" custom suggestion element every time the dropdown changes
function getAddAllSuggestionsElm(){
    // suggestions items should be based on "dropdownItem" template
    return tagify.parseTemplate('dropdownItem', [{
            class: "addAll",
            name: "Add all",
            email: tagify.settings.whitelist.reduce(function(remainingSuggestions, item){
                return tagify.isTagDuplicate(item.value) ? remainingSuggestions : remainingSuggestions + 1
            }, 0) + " Members"
        }]
      )
}
})()
</script>