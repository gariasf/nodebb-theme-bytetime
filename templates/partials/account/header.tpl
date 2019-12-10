<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
	<div class="avatar-wrapper" data-uid="{uid}">
		<!-- IF picture -->
		<img src="{picture}" class="avatar avatar-xl avatar-rounded" />
		<!-- ELSE -->
		<div class="avatar avatar-xl avatar-rounded" style="background-color: {icon:bgColor};" title="{username}">{icon:text}</div>
		<!-- ENDIF picture -->
		<i component="user/status" class="mdi mdi-circle status {status}" title="[[global:{status}]]"></i>

		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<button class="btn-morph fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing --><!-- IF banned --> hide<!-- ENDIF banned -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
			<span>
				<span class="s1"></span>
				<span class="s2"></span>
				<span class="s3"></span>
			</span>
		</button>
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
	</div>

	<div class="container">
		<!-- IMPORT partials/account/menu.tpl -->

		<!-- IF allowCoverPicture -->
		<!-- IF canEdit -->
		<div class="controls">
			<span class="upload"><i class="fa-fw fa-4x mdi mdi-upload"></i></span>
			<span class="resize"><i class="fa-fw fa-4x mdi mdi-cursor-move"></i></span>
			<span class="remove"><i class="fa-fw fa-4x mdi mdi-close"></i></span>
		</div>
		<div class="save">[[groups:cover-save]] <i class="mdi mdi-floppy fa-fw"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="mdi mdi-refresh fa-fw mdi-spin"></i></div>
		<!-- ENDIF canEdit -->
		<!-- ENDIF allowCoverPicture -->
	</div>
</div>
