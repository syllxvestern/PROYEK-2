<div id="sidebar-nav" class="sidebar">
	<div class="sidebar-scroll">
		<nav>
			<ul class="nav">
				<li><a href="<?php echo base_url('DashboardAdmin'); ?>" ><i class="lnr lnr-home"></i><span>Dashboard</span></a></li>
				<li><a href="<?php echo base_url('Admin/pegawai'); ?>" class=""><i class="lnr lnr-users"></i> <span>Atur Dokter</span></a></li>
				<li><a href="<?php echo base_url('User/index'); ?>" class=""><i class="lnr lnr-user"></i> <span>Atur Akun</span></a></li>
				<li><a href="<?php echo base_url('Layanan/index'); ?>" class=""><i class="lnr lnr-book"></i> <span>Atur Layanan</span></a></li>
				<li><a href="<?php echo base_url('Jamkes/index'); ?>" class=""><i class="lnr lnr-plus-circle"></i> <span>Atur Jaminan Kesehatan</span></a></li> 
				<li><a href="<?php echo base_url('Jadwal/index'); ?>" class=""><i class="lnr lnr-clock"></i> <span>Atur Jadwal</span></a></li>
				<li><a class="active" href="<?php echo base_url('Antrian/index'); ?>" class=""><i class="lnr lnr-eye"></i> <span>Lihat Antrian</span></a></li>
				<li><a href="<?php echo base_url('Hubungi/index'); ?>" class=""><i class="lnr lnr-phone"></i> <span>Kotak Masuk</span></a></li>
			</ul>
		</nav>
	</div>
</div>
<div class="main">
	<div class="main-content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-10">
					<h3 class="page-title">Daftar Antrian</h3>
				</div>
				<div class="col-md-2" align="right">
        			<a href="<?php echo base_url('Antrian/inputAntrian'); ?>" class="btn btn-raised btn-primary"><span class="fa fa-plus" style="margin-right: 10px;"></span>Tambah</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<?php if($this->session->flashdata('success')){  ?>
					<div class="alert alert-success alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
						<i class="fa fa-check-circle"></i> <?php echo $this->session->flashdata('success'); ?>
					</div>
					<?php }elseif($this->session->flashdata('error')) { ?>
					<div class="alert alert-danger alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
						<i class="false fa-times-circle"></i> <?php echo $this->session->flashdata('error'); ?>
					</div>
					<?php } ?>
					<div class="panel">
						<div class="panel-body">
							<table id="doctor-table" class="table">
								<thead>
									<tr>
										<th>No.</th>
										<th>Nomor Antrian</th>
										<th>Tanggal</th>
										<th>Nama</th>
										<th>Dokter</th>
										<th>Jaminan Kesehatan</th>
										<th style="text-align: center;">Opsi</th>
									</tr>
								</thead>
								<tbody>
									<?php 
									$i = 1;
									if($antrian){
										foreach ($antrian as $value) {
											$encrypted_string = $this->encrypt->encode($value['id_antrian']);
											$id = str_replace(array('+', '/', '='), array('-', '_', '~'), $encrypted_string);
											?>
											<tr>
												<td><?php echo $i++ . "."; ?></td>
												<td><?php echo $value['antrian']; ?></td>
												<td><?php echo $value['tanggal']; ?></td>
												<td><?php echo $value['nama_user']; ?></td>
												<td><?php echo $value['nama_dokter']; ?></td>
												<td><?php echo $value['singkatan']; ?></td>
												<td align="center">
													<a href="<?php echo base_url('Daftar/generate/'.$id); ?>" class="btn btn-sm btn-primary"><span class="fa fa-info"></span></a>
													<a href="<?php echo base_url('Antrian/antrianEdit/'.$id); ?>" class="btn btn-sm btn-warning"><span class="fa-fa-pencil"></span></a>
													<button class="btn btn-sm btn-danger" onclick="deleteThis('<?php echo base_url('Antrian/deleteAntrian/'.$id); ?>');" ><span class="fa fa-trash"></span></button> 
													<button class="btn btn-sm btn-success" onclick="skipThis('<?php echo base_url('Antrian/skipAntrian/'.$id); ?>');" ><span class="fa fa-hand-o-right"></span></button> 
												</td>
											</tr>
											<?php
										}
									}
									?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>