Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E2AA83D66
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 10:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10BA710E7CE;
	Thu, 10 Apr 2025 08:45:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VrohZHRT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F267C10E7C5;
 Thu, 10 Apr 2025 08:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744274721; x=1775810721;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=I5aRsG5lVNQA9CRnTb5faFc32rEyfMcGT866IidyfEg=;
 b=VrohZHRT0L87xVSAXPyXUJvlqvhxDNo7fCMeqSe+Usf6un0QW8trtkOn
 IOwLAey1VEQRelma8ZkMdExdrqQregbLU0cuxRjKfDF9o1kqVqWD2VltY
 Z3jAngw+7RIvyEDLXSW7PxraoeXgLaDforcE+qVZAMjZ0LccjIfBb++JP
 H3puK+UVGUq9+ocWbGV/LsQ6hRZ0Qf9oR6diYgcxSG3eafaeCvpiDJ49e
 aeXJHM87FZiv5PtpEhxM2ylBadYr5K310GUd7MePEKWZB1Tyk3owFHq1R
 g75tYN0svZWF56xaLoU2frmXGMdUtiQbtV6pDZd5fw14vElz9NYlkmH23 A==;
X-CSE-ConnectionGUID: hqvjRuaTS/WJIVIfrR+UxQ==
X-CSE-MsgGUID: g6T61sg0SKmCHz5Brf/SXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45022189"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45022189"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:45:21 -0700
X-CSE-ConnectionGUID: I5fJ9yoyRK+ips4jXtJMiQ==
X-CSE-MsgGUID: Z4oc8CL9SmeBr2KAXI0PQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129675950"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:45:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/6] drm/i915: Precompute plane SURF address
In-Reply-To: <20250402172240.9275-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-2-ville.syrjala@linux.intel.com>
Date: Thu, 10 Apr 2025 11:45:16 +0300
Message-ID: <874iywwgkj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we pre-compute the plane surface/base address
> partially (only for cursor_needs_physical cases) in
> intel_plane_pin_fb() and finish the calculation in the
> plane->update_arm(). Let's just precompute the whole thing
> instead.
>
> One benefit is that we get rid of all the vma offset stuff
> from the low level plane code. Another use I have in mind
> is including the surface address in the plane tracepoints,
> which should make it easier to analyze display faults.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

It's quite a big patch, I went through this a couple of times, and
didn't spot anything wrong.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     | 53 ++++++++++---------
>  drivers/gpu/drm/i915/display/i9xx_plane.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 18 +++----
>  .../drm/i915/display/intel_display_types.h    |  5 +-
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 27 ++++++----
>  .../drm/i915/display/intel_plane_initial.c    |  2 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 36 ++++++-------
>  .../drm/i915/display/skl_universal_plane.c    | 41 +++++++-------
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  5 ++
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  4 ++
>  10 files changed, 99 insertions(+), 93 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 5e8344fdfc28..bfeb4bf864e2 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -356,6 +356,19 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>=20=20
> +static u32 i8xx_plane_surf_offset(const struct intel_plane_state *plane_=
state)
> +{
> +	int x =3D plane_state->view.color_plane[0].x;
> +	int y =3D plane_state->view.color_plane[0].y;
> +
> +	return intel_fb_xy_to_linear(x, y, plane_state, 0);
> +}
> +
> +u32 i965_plane_surf_offset(const struct intel_plane_state *plane_state)
> +{
> +	return plane_state->view.color_plane[0].offset;
> +}
> +
>  static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> @@ -459,7 +472,7 @@ static void i9xx_plane_update_arm(struct intel_dsb *d=
sb,
>  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
>  	int x =3D plane_state->view.color_plane[0].x;
>  	int y =3D plane_state->view.color_plane[0].y;
> -	u32 dspcntr, dspaddr_offset, linear_offset;
> +	u32 dspcntr;
>=20=20
>  	dspcntr =3D plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
>=20=20
> @@ -468,13 +481,6 @@ static void i9xx_plane_update_arm(struct intel_dsb *=
dsb,
>  	    crtc_state->async_flip_planes & BIT(plane->id))
>  		dspcntr |=3D DISP_ASYNC_FLIP;
>=20=20
> -	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> -
> -	if (DISPLAY_VER(display) >=3D 4)
> -		dspaddr_offset =3D plane_state->view.color_plane[0].offset;
> -	else
> -		dspaddr_offset =3D linear_offset;
> -
>  	if (display->platform.cherryview && i9xx_plane =3D=3D PLANE_B) {
>  		int crtc_x =3D plane_state->uapi.dst.x1;
>  		int crtc_y =3D plane_state->uapi.dst.y1;
> @@ -494,7 +500,7 @@ static void i9xx_plane_update_arm(struct intel_dsb *d=
sb,
>  				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
>  	} else if (DISPLAY_VER(display) >=3D 4) {
>  		intel_de_write_fw(display, DSPLINOFF(display, i9xx_plane),
> -				  linear_offset);
> +				  intel_fb_xy_to_linear(x, y, plane_state, 0));
>  		intel_de_write_fw(display, DSPTILEOFF(display, i9xx_plane),
>  				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
>  	}
> @@ -507,11 +513,9 @@ static void i9xx_plane_update_arm(struct intel_dsb *=
dsb,
>  	intel_de_write_fw(display, DSPCNTR(display, i9xx_plane), dspcntr);
>=20=20
>  	if (DISPLAY_VER(display) >=3D 4)
> -		intel_de_write_fw(display, DSPSURF(display, i9xx_plane),
> -				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> +		intel_de_write_fw(display, DSPSURF(display, i9xx_plane), plane_state->=
surf);
>  	else
> -		intel_de_write_fw(display, DSPADDR(display, i9xx_plane),
> -				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> +		intel_de_write_fw(display, DSPADDR(display, i9xx_plane), plane_state->=
surf);
>  }
>=20=20
>  static void i830_plane_update_arm(struct intel_dsb *dsb,
> @@ -600,16 +604,13 @@ g4x_primary_async_flip(struct intel_dsb *dsb,
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
>  	u32 dspcntr =3D plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
> -	u32 dspaddr_offset =3D plane_state->view.color_plane[0].offset;
>  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
>=20=20
>  	if (async_flip)
>  		dspcntr |=3D DISP_ASYNC_FLIP;
>=20=20
>  	intel_de_write_fw(display, DSPCNTR(display, i9xx_plane), dspcntr);
> -
> -	intel_de_write_fw(display, DSPSURF(display, i9xx_plane),
> -			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> +	intel_de_write_fw(display, DSPSURF(display, i9xx_plane), plane_state->s=
urf);
>  }
>=20=20
>  static void
> @@ -620,11 +621,9 @@ vlv_primary_async_flip(struct intel_dsb *dsb,
>  		       bool async_flip)
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
> -	u32 dspaddr_offset =3D plane_state->view.color_plane[0].offset;
>  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
>=20=20
> -	intel_de_write_fw(display, DSPADDR_VLV(display, i9xx_plane),
> -			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> +	intel_de_write_fw(display, DSPADDR_VLV(display, i9xx_plane), plane_stat=
e->surf);
>  }
>=20=20
>  static void
> @@ -1018,6 +1017,11 @@ intel_primary_plane_create(struct intel_display *d=
isplay, enum pipe pipe)
>  	plane->get_hw_state =3D i9xx_plane_get_hw_state;
>  	plane->check_plane =3D i9xx_plane_check;
>=20=20
> +	if (DISPLAY_VER(display) >=3D 4)
> +		plane->surf_offset =3D i965_plane_surf_offset;
> +	else
> +		plane->surf_offset =3D i8xx_plane_surf_offset;
> +
>  	if (DISPLAY_VER(display) >=3D 5 || display->platform.g4x)
>  		plane->capture_error =3D g4x_primary_capture_error;
>  	else if (DISPLAY_VER(display) >=3D 4)
> @@ -1233,24 +1237,21 @@ bool i9xx_fixup_initial_plane_config(struct intel=
_crtc *crtc,
>  	const struct intel_plane_state *plane_state =3D
>  		to_intel_plane_state(plane->base.state);
>  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> -	u32 base;
>=20=20
>  	if (!plane_state->uapi.visible)
>  		return false;
>=20=20
> -	base =3D intel_plane_ggtt_offset(plane_state);
> -
>  	/*
>  	 * We may have moved the surface to a different
>  	 * part of ggtt, make the plane aware of that.
>  	 */
> -	if (plane_config->base =3D=3D base)
> +	if (plane_config->base =3D=3D plane_state->surf)
>  		return false;
>=20=20
>  	if (DISPLAY_VER(display) >=3D 4)
> -		intel_de_write(display, DSPSURF(display, i9xx_plane), base);
> +		intel_de_write(display, DSPSURF(display, i9xx_plane), plane_state->sur=
f);
>  	else
> -		intel_de_write(display, DSPADDR(display, i9xx_plane), base);
> +		intel_de_write(display, DSPADDR(display, i9xx_plane), plane_state->sur=
f);
>=20=20
>  	return true;
>  }
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/=
i915/display/i9xx_plane.h
> index d90546d60855..565dab751301 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.h
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
> @@ -24,6 +24,7 @@ unsigned int vlv_plane_min_alignment(struct intel_plane=
 *plane,
>  				     const struct drm_framebuffer *fb,
>  				     int colot_plane);
>  int i9xx_check_plane_surface(struct intel_plane_state *plane_state);
> +u32 i965_plane_surf_offset(const struct intel_plane_state *plane_state);
>=20=20
>  struct intel_plane *
>  intel_primary_plane_create(struct intel_display *display, enum pipe pipe=
);
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 3276a5b4a9b0..5333b34a5776 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -33,17 +33,9 @@ static const u32 intel_cursor_formats[] =3D {
>  	DRM_FORMAT_ARGB8888,
>  };
>=20=20
> -static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
> +static u32 intel_cursor_surf_offset(const struct intel_plane_state *plan=
e_state)
>  {
> -	struct intel_display *display =3D to_intel_display(plane_state);
> -	u32 base;
> -
> -	if (DISPLAY_INFO(display)->cursor_needs_physical)
> -		base =3D plane_state->phys_dma_addr;
> -	else
> -		base =3D intel_plane_ggtt_offset(plane_state);
> -
> -	return base + plane_state->view.color_plane[0].offset;
> +	return plane_state->view.color_plane[0].offset;
>  }
>=20=20
>  static u32 intel_cursor_position(const struct intel_crtc_state *crtc_sta=
te,
> @@ -297,7 +289,7 @@ static void i845_cursor_update_arm(struct intel_dsb *=
dsb,
>=20=20
>  		size =3D CURSOR_HEIGHT(height) | CURSOR_WIDTH(width);
>=20=20
> -		base =3D intel_cursor_base(plane_state);
> +		base =3D plane_state->surf;
>  		pos =3D intel_cursor_position(crtc_state, plane_state, false);
>  	}
>=20=20
> @@ -675,7 +667,7 @@ static void i9xx_cursor_update_arm(struct intel_dsb *=
dsb,
>  		if (width !=3D height)
>  			fbc_ctl =3D CUR_FBC_EN | CUR_FBC_HEIGHT(height - 1);
>=20=20
> -		base =3D intel_cursor_base(plane_state);
> +		base =3D plane_state->surf;
>  		pos =3D intel_cursor_position(crtc_state, plane_state, false);
>  	}
>=20=20
> @@ -1051,6 +1043,8 @@ intel_cursor_plane_create(struct intel_display *dis=
play,
>  		cursor->check_plane =3D i9xx_check_cursor;
>  	}
>=20=20
> +	cursor->surf_offset =3D intel_cursor_surf_offset;
> +
>  	if (DISPLAY_VER(display) >=3D 5 || display->platform.g4x)
>  		cursor->capture_error =3D g4x_cursor_capture_error;
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 367b53a9eae2..0190eb33939e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -632,7 +632,6 @@ struct intel_plane_state {
>  #define PLANE_HAS_FENCE BIT(0)
>=20=20
>  	struct intel_fb_view view;
> -	u32 phys_dma_addr; /* for cursor_needs_physical */
>=20=20
>  	/* for legacy cursor fb unpin */
>  	struct drm_vblank_work unpin_work;
> @@ -655,6 +654,9 @@ struct intel_plane_state {
>  	/* chroma upsampler control register */
>  	u32 cus_ctl;
>=20=20
> +	/* surface address register */
> +	u32 surf;
> +
>  	/*
>  	 * scaler_id
>  	 *    =3D -1 : not using a scaler
> @@ -1503,6 +1505,7 @@ struct intel_plane {
>  	bool (*get_hw_state)(struct intel_plane *plane, enum pipe *pipe);
>  	int (*check_plane)(struct intel_crtc_state *crtc_state,
>  			   struct intel_plane_state *plane_state);
> +	u32 (*surf_offset)(const struct intel_plane_state *plane_state);
>  	int (*min_cdclk)(const struct intel_crtc_state *crtc_state,
>  			 const struct intel_plane_state *plane_state);
>  	void (*async_flip)(struct intel_dsb *dsb,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index c648ab8a93d7..fb7d0c8b9302 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -276,17 +276,6 @@ int intel_plane_pin_fb(struct intel_plane_state *pla=
ne_state,
>=20=20
>  		plane_state->ggtt_vma =3D vma;
>=20=20
> -		/*
> -		 * Pre-populate the dma address before we enter the vblank
> -		 * evade critical section as i915_gem_object_get_dma_address()
> -		 * will trigger might_sleep() even if it won't actually sleep,
> -		 * which is the case when the fb has already been pinned.
> -		 */
> -		if (intel_plane_needs_physical(plane)) {
> -			struct drm_i915_gem_object *obj =3D to_intel_bo(intel_fb_bo(&fb->base=
));
> -
> -			plane_state->phys_dma_addr =3D i915_gem_object_get_dma_address(obj, 0=
);
> -		}
>  	} else {
>  		unsigned int alignment =3D intel_plane_fb_min_alignment(plane_state);
>=20=20
> @@ -310,6 +299,22 @@ int intel_plane_pin_fb(struct intel_plane_state *pla=
ne_state,
>  		WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
>  	}
>=20=20
> +	/*
> +	 * Pre-populate the dma address before we enter the vblank
> +	 * evade critical section as i915_gem_object_get_dma_address()
> +	 * will trigger might_sleep() even if it won't actually sleep,
> +	 * which is the case when the fb has already been pinned.
> +	 */
> +	if (intel_plane_needs_physical(plane)) {
> +		struct drm_i915_gem_object *obj =3D to_intel_bo(intel_fb_bo(&fb->base)=
);
> +
> +		plane_state->surf =3D i915_gem_object_get_dma_address(obj, 0) +
> +			plane->surf_offset(plane_state);
> +	} else {
> +		plane_state->surf =3D intel_plane_ggtt_offset(plane_state) +
> +			plane->surf_offset(plane_state);
> +	}
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers=
/gpu/drm/i915/display/intel_plane_initial.c
> index b0c4892775ce..1c49610eb42f 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -356,6 +356,8 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  	    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
>  		plane_state->flags |=3D PLANE_HAS_FENCE;
>=20=20
> +	plane_state->surf =3D intel_plane_ggtt_offset(plane_state);
> +
>  	plane_state->uapi.src_x =3D 0;
>  	plane_state->uapi.src_y =3D 0;
>  	plane_state->uapi.src_w =3D fb->width << 16;
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 1ad6c8a94b3d..9bcb8dda6129 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -394,15 +394,12 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
>  	enum pipe pipe =3D plane->pipe;
>  	enum plane_id plane_id =3D plane->id;
>  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> -	u32 sprsurf_offset =3D plane_state->view.color_plane[0].offset;
>  	u32 x =3D plane_state->view.color_plane[0].x;
>  	u32 y =3D plane_state->view.color_plane[0].y;
> -	u32 sprctl, linear_offset;
> +	u32 sprctl;
>=20=20
>  	sprctl =3D plane_state->ctl | vlv_sprite_ctl_crtc(crtc_state);
>=20=20
> -	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> -
>  	if (display->platform.cherryview && pipe =3D=3D PIPE_B)
>  		chv_sprite_update_csc(plane_state);
>=20=20
> @@ -417,7 +414,8 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
>=20=20
>  	intel_de_write_fw(display, SPCONSTALPHA(pipe, plane_id), 0);
>=20=20
> -	intel_de_write_fw(display, SPLINOFF(pipe, plane_id), linear_offset);
> +	intel_de_write_fw(display, SPLINOFF(pipe, plane_id),
> +			  intel_fb_xy_to_linear(x, y, plane_state, 0));
>  	intel_de_write_fw(display, SPTILEOFF(pipe, plane_id),
>  			  SP_OFFSET_Y(y) | SP_OFFSET_X(x));
>=20=20
> @@ -427,8 +425,7 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
>  	 * the control register just before the surface register.
>  	 */
>  	intel_de_write_fw(display, SPCNTR(pipe, plane_id), sprctl);
> -	intel_de_write_fw(display, SPSURF(pipe, plane_id),
> -			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
> +	intel_de_write_fw(display, SPSURF(pipe, plane_id), plane_state->surf);
>=20=20
>  	vlv_sprite_update_clrc(plane_state);
>  	vlv_sprite_update_gamma(plane_state);
> @@ -829,15 +826,12 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum pipe pipe =3D plane->pipe;
>  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> -	u32 sprsurf_offset =3D plane_state->view.color_plane[0].offset;
>  	u32 x =3D plane_state->view.color_plane[0].x;
>  	u32 y =3D plane_state->view.color_plane[0].y;
> -	u32 sprctl, linear_offset;
> +	u32 sprctl;
>=20=20
>  	sprctl =3D plane_state->ctl | ivb_sprite_ctl_crtc(crtc_state);
>=20=20
> -	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> -
>  	if (key->flags) {
>  		intel_de_write_fw(display, SPRKEYVAL(pipe), key->min_value);
>  		intel_de_write_fw(display, SPRKEYMSK(pipe),
> @@ -851,7 +845,8 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
>  		intel_de_write_fw(display, SPROFFSET(pipe),
>  				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
>  	} else {
> -		intel_de_write_fw(display, SPRLINOFF(pipe), linear_offset);
> +		intel_de_write_fw(display, SPRLINOFF(pipe),
> +				  intel_fb_xy_to_linear(x, y, plane_state, 0));
>  		intel_de_write_fw(display, SPRTILEOFF(pipe),
>  				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
>  	}
> @@ -862,8 +857,7 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
>  	 * the control register just before the surface register.
>  	 */
>  	intel_de_write_fw(display, SPRCTL(pipe), sprctl);
> -	intel_de_write_fw(display, SPRSURF(pipe),
> -			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
> +	intel_de_write_fw(display, SPRSURF(pipe), plane_state->surf);
>=20=20
>  	ivb_sprite_update_gamma(plane_state);
>  }
> @@ -1180,15 +1174,12 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum pipe pipe =3D plane->pipe;
>  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> -	u32 dvssurf_offset =3D plane_state->view.color_plane[0].offset;
>  	u32 x =3D plane_state->view.color_plane[0].x;
>  	u32 y =3D plane_state->view.color_plane[0].y;
> -	u32 dvscntr, linear_offset;
> +	u32 dvscntr;
>=20=20
>  	dvscntr =3D plane_state->ctl | g4x_sprite_ctl_crtc(crtc_state);
>=20=20
> -	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> -
>  	if (key->flags) {
>  		intel_de_write_fw(display, DVSKEYVAL(pipe), key->min_value);
>  		intel_de_write_fw(display, DVSKEYMSK(pipe),
> @@ -1196,7 +1187,8 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
>  		intel_de_write_fw(display, DVSKEYMAX(pipe), key->max_value);
>  	}
>=20=20
> -	intel_de_write_fw(display, DVSLINOFF(pipe), linear_offset);
> +	intel_de_write_fw(display, DVSLINOFF(pipe),
> +			  intel_fb_xy_to_linear(x, y, plane_state, 0));
>  	intel_de_write_fw(display, DVSTILEOFF(pipe),
>  			  DVS_OFFSET_Y(y) | DVS_OFFSET_X(x));
>=20=20
> @@ -1206,8 +1198,7 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
>  	 * the control register just before the surface register.
>  	 */
>  	intel_de_write_fw(display, DVSCNTR(pipe), dvscntr);
> -	intel_de_write_fw(display, DVSSURF(pipe),
> -			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
> +	intel_de_write_fw(display, DVSSURF(pipe), plane_state->surf);
>=20=20
>  	if (display->platform.g4x)
>  		g4x_sprite_update_gamma(plane_state);
> @@ -1623,6 +1614,7 @@ intel_sprite_plane_create(struct intel_display *dis=
play,
>  		plane->capture_error =3D vlv_sprite_capture_error;
>  		plane->get_hw_state =3D vlv_sprite_get_hw_state;
>  		plane->check_plane =3D vlv_sprite_check;
> +		plane->surf_offset =3D i965_plane_surf_offset;
>  		plane->max_stride =3D i965_plane_max_stride;
>  		plane->min_alignment =3D vlv_plane_min_alignment;
>  		plane->min_cdclk =3D vlv_plane_min_cdclk;
> @@ -1647,6 +1639,7 @@ intel_sprite_plane_create(struct intel_display *dis=
play,
>  		plane->capture_error =3D ivb_sprite_capture_error;
>  		plane->get_hw_state =3D ivb_sprite_get_hw_state;
>  		plane->check_plane =3D g4x_sprite_check;
> +		plane->surf_offset =3D i965_plane_surf_offset;
>=20=20
>  		if (display->platform.broadwell || display->platform.haswell) {
>  			plane->max_stride =3D hsw_sprite_max_stride;
> @@ -1672,6 +1665,7 @@ intel_sprite_plane_create(struct intel_display *dis=
play,
>  		plane->capture_error =3D g4x_sprite_capture_error;
>  		plane->get_hw_state =3D g4x_sprite_get_hw_state;
>  		plane->check_plane =3D g4x_sprite_check;
> +		plane->surf_offset =3D i965_plane_surf_offset;
>  		plane->max_stride =3D g4x_sprite_max_stride;
>  		plane->min_alignment =3D g4x_sprite_min_alignment;
>  		plane->min_cdclk =3D g4x_sprite_min_cdclk;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 8739195aba69..b82a9e07350b 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1285,13 +1285,20 @@ static u32 skl_surf_address(const struct intel_pl=
ane_state *plane_state,
>  	}
>  }
>=20=20
> -static u32 skl_plane_surf(const struct intel_plane_state *plane_state,
> -			  int color_plane)
> +static int icl_plane_color_plane(const struct intel_plane_state *plane_s=
tate)
>  {
> +	if (plane_state->planar_linked_plane && !plane_state->is_y_plane)
> +		return 1;
> +	else
> +		return 0;
> +}
> +
> +static u32 skl_plane_surf_offset(const struct intel_plane_state *plane_s=
tate)
> +{
> +	int color_plane =3D icl_plane_color_plane(plane_state);
>  	u32 plane_surf;
>=20=20
> -	plane_surf =3D intel_plane_ggtt_offset(plane_state) +
> -		skl_surf_address(plane_state, color_plane);
> +	plane_surf =3D skl_surf_address(plane_state, color_plane);
>=20=20
>  	if (plane_state->decrypt)
>  		plane_surf |=3D PLANE_SURF_DECRYPT;
> @@ -1373,14 +1380,6 @@ static void icl_plane_csc_load_black(struct intel_=
dsb *dsb,
>  	intel_de_write_dsb(display, dsb, PLANE_CSC_POSTOFF(pipe, plane_id, 2), =
0);
>  }
>=20=20
> -static int icl_plane_color_plane(const struct intel_plane_state *plane_s=
tate)
> -{
> -	if (plane_state->planar_linked_plane && !plane_state->is_y_plane)
> -		return 1;
> -	else
> -		return 0;
> -}
> -
>  static void
>  skl_plane_update_noarm(struct intel_dsb *dsb,
>  		       struct intel_plane *plane,
> @@ -1476,7 +1475,7 @@ skl_plane_update_arm(struct intel_dsb *dsb,
>  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
>  			   plane_ctl);
>  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
> -			   skl_plane_surf(plane_state, 0));
> +			   plane_state->surf);
>  }
>=20=20
>  static void icl_plane_update_sel_fetch_noarm(struct intel_dsb *dsb,
> @@ -1632,7 +1631,6 @@ icl_plane_update_arm(struct intel_dsb *dsb,
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum plane_id plane_id =3D plane->id;
>  	enum pipe pipe =3D plane->pipe;
> -	int color_plane =3D icl_plane_color_plane(plane_state);
>  	u32 plane_ctl;
>=20=20
>  	plane_ctl =3D plane_state->ctl |
> @@ -1658,7 +1656,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
>  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
>  			   plane_ctl);
>  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
> -			   skl_plane_surf(plane_state, color_plane));
> +			   plane_state->surf);
>  }
>=20=20
>  static void skl_plane_capture_error(struct intel_crtc *crtc,
> @@ -1682,10 +1680,10 @@ skl_plane_async_flip(struct intel_dsb *dsb,
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum plane_id plane_id =3D plane->id;
>  	enum pipe pipe =3D plane->pipe;
> -	u32 plane_ctl =3D plane_state->ctl, plane_surf;
> +	u32 plane_ctl =3D plane_state->ctl;
> +	u32 plane_surf =3D plane_state->surf;
>=20=20
>  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> -	plane_surf =3D skl_plane_surf(plane_state, 0);
>=20=20
>  	if (async_flip) {
>  		if (DISPLAY_VER(display) >=3D 30)
> @@ -2837,6 +2835,8 @@ skl_universal_plane_create(struct intel_display *di=
splay,
>  		plane->min_cdclk =3D skl_plane_min_cdclk;
>  	}
>=20=20
> +	plane->surf_offset =3D skl_plane_surf_offset;
> +
>  	if (DISPLAY_VER(display) >=3D 13)
>  		plane->max_stride =3D adl_plane_max_stride;
>  	else
> @@ -3163,21 +3163,18 @@ bool skl_fixup_initial_plane_config(struct intel_=
crtc *crtc,
>  		to_intel_plane_state(plane->base.state);
>  	enum plane_id plane_id =3D plane->id;
>  	enum pipe pipe =3D crtc->pipe;
> -	u32 base;
>=20=20
>  	if (!plane_state->uapi.visible)
>  		return false;
>=20=20
> -	base =3D intel_plane_ggtt_offset(plane_state);
> -
>  	/*
>  	 * We may have moved the surface to a different
>  	 * part of ggtt, make the plane aware of that.
>  	 */
> -	if (plane_config->base =3D=3D base)
> +	if (plane_config->base =3D=3D plane_state->surf)
>  		return false;
>=20=20
> -	intel_de_write(display, PLANE_SURF(pipe, plane_id), base);
> +	intel_de_write(display, PLANE_SURF(pipe, plane_id), plane_state->surf);
>=20=20
>  	return true;
>  }
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index d918ae1c8061..b9c45a5a3d82 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -6,6 +6,7 @@
>  #include <drm/ttm/ttm_bo.h>
>=20=20
>  #include "i915_vma.h"
> +#include "intel_atomic_plane.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> @@ -436,6 +437,10 @@ int intel_plane_pin_fb(struct intel_plane_state *new=
_plane_state,
>  		return PTR_ERR(vma);
>=20=20
>  	new_plane_state->ggtt_vma =3D vma;
> +
> +	new_plane_state->surf =3D intel_plane_ggtt_offset(new_plane_state) +
> +		plane->surf_offset(new_plane_state);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/=
drm/xe/display/xe_plane_initial.c
> index 4ca0cb571194..a15f60835239 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -11,6 +11,7 @@
>  #include "xe_mmio.h"
>=20=20
>  #include "i915_reg.h"
> +#include "i915_vma.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_crtc.h"
>  #include "intel_display.h"
> @@ -237,6 +238,9 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  		goto nofb;
>=20=20
>  	plane_state->ggtt_vma =3D vma;
> +
> +	plane_state->surf =3D intel_plane_ggtt_offset(plane_state);
> +
>  	plane_state->uapi.src_x =3D 0;
>  	plane_state->uapi.src_y =3D 0;
>  	plane_state->uapi.src_w =3D fb->width << 16;

--=20
Jani Nikula, Intel
