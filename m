Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BC0A2C15C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 12:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44B110EAC6;
	Fri,  7 Feb 2025 11:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FAx7/g8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBA410EAC6;
 Fri,  7 Feb 2025 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738926513; x=1770462513;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kauT0iiYQNDJecV/GrQQ22TfNvng5opR4O/G4TE38uA=;
 b=FAx7/g8WFYnwPr6g+jw1Sze2a5cIB3+cwbgxqo8/RgRFCTI7VERas4wn
 0SzmvmQhFRnBoGKIHs+kjedlQGJ8tgB3dgjal3vFBil5UQkZ5JIkk+diB
 EoxLpA9HDaVQSG6mXJ3WB8/4ommACI0IkbY6Y8zNxVbMgcOn4DsIc5F2O
 //hVWwoNfY+mhiYdN03v3ivMOEQKlNPPs2zmnqC0xGp1ifIZILh4mmsm2
 tqP/UtKwVNDniswXwjkN/nmox91hbhWEVPCev5B+ee/ryYWD9+W3vNMSc
 xcANXIZvBcy+z/kgxm6/Lyis8dm/A5FfOi0NB90fGvvbUTJ3kkjhqXFnz w==;
X-CSE-ConnectionGUID: Kr75NcRfQGKnViXX304VFQ==
X-CSE-MsgGUID: BPxmOBrBRm+bb5htT08t8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43324202"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="43324202"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 03:08:32 -0800
X-CSE-ConnectionGUID: KOfqjbbgQROReTIQ2CR6Sg==
X-CSE-MsgGUID: bS/Zl2IOSmmVoO6VtiX+bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="112123802"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 03:08:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 01/12] drm/i915: Pass intel_display to
 intel_scanout_needs_vtd_wa()
In-Reply-To: <20250206185533.32306-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
 <20250206185533.32306-2-ville.syrjala@linux.intel.com>
Date: Fri, 07 Feb 2025 13:08:26 +0200
Message-ID: <87r04a3tcl.fsf@intel.com>
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

On Thu, 06 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that intel_scanout_needs_vtd_wa() is no longer used from
> the gem code we can convert it to take struct intel_display.
> which will help with converting the low level plane code over
> as well.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c          | 11 ++++++-----
>  drivers/gpu/drm/i915/display/intel_cursor.c        |  7 ++++---
>  drivers/gpu/drm/i915/display/intel_display.c       |  6 ++++--
>  drivers/gpu/drm/i915/display/intel_display.h       |  2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c        | 10 +++++-----
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  3 ++-
>  6 files changed, 22 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index bd3f8db13700..110ad49884be 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -780,13 +780,13 @@ unsigned int vlv_plane_min_alignment(struct intel_p=
lane *plane,
>  				     const struct drm_framebuffer *fb,
>  				     int color_plane)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>=20=20
>  	if (intel_plane_can_async_flip(plane, fb->modifier))
>  		return 256 * 1024;
>=20=20
>  	/* FIXME undocumented so not sure what's actually needed */
> -	if (intel_scanout_needs_vtd_wa(i915))
> +	if (intel_scanout_needs_vtd_wa(display))
>  		return 256 * 1024;
>=20=20
>  	switch (fb->modifier) {
> @@ -804,12 +804,12 @@ static unsigned int g4x_primary_min_alignment(struc=
t intel_plane *plane,
>  					      const struct drm_framebuffer *fb,
>  					      int color_plane)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>=20=20
>  	if (intel_plane_can_async_flip(plane, fb->modifier))
>  		return 256 * 1024;
>=20=20
> -	if (intel_scanout_needs_vtd_wa(i915))
> +	if (intel_scanout_needs_vtd_wa(display))
>  		return 256 * 1024;
>=20=20
>  	switch (fb->modifier) {
> @@ -865,6 +865,7 @@ static const struct drm_plane_funcs i8xx_plane_funcs =
=3D {
>  struct intel_plane *
>  intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe =
pipe)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_plane *plane;
>  	const struct drm_plane_funcs *plane_funcs;
>  	unsigned int supported_rotations;
> @@ -959,7 +960,7 @@ intel_primary_plane_create(struct drm_i915_private *d=
ev_priv, enum pipe pipe)
>  		plane->min_alignment =3D i9xx_plane_min_alignment;
>=20=20
>  	/* FIXME undocumented for VLV/CHV so not sure what's actually needed */
> -	if (intel_scanout_needs_vtd_wa(dev_priv))
> +	if (intel_scanout_needs_vtd_wa(display))
>  		plane->vtd_guard =3D 128;
>=20=20
>  	if (IS_I830(dev_priv) || IS_I845G(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 6a1035a22b0a..791557b99d94 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -372,9 +372,9 @@ static unsigned int i9xx_cursor_min_alignment(struct =
intel_plane *plane,
>  					      const struct drm_framebuffer *fb,
>  					      int color_plane)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>=20=20
> -	if (intel_scanout_needs_vtd_wa(i915))
> +	if (intel_scanout_needs_vtd_wa(display))
>  		return 64 * 1024;
>=20=20
>  	return 4 * 1024; /* physical for i915/i945 */
> @@ -989,6 +989,7 @@ struct intel_plane *
>  intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_plane *cursor;
>  	int ret, zpos;
>  	u64 *modifiers;
> @@ -1019,7 +1020,7 @@ intel_cursor_plane_create(struct drm_i915_private *=
dev_priv,
>  		else
>  			cursor->min_alignment =3D i9xx_cursor_min_alignment;
>=20=20
> -		if (intel_scanout_needs_vtd_wa(dev_priv))
> +		if (intel_scanout_needs_vtd_wa(display))
>  			cursor->vtd_guard =3D 2;
>=20=20
>  		cursor->update_arm =3D i9xx_cursor_update_arm;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a6383ddde871..0f4d4a86cb98 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8782,7 +8782,9 @@ void intel_hpd_poll_fini(struct drm_i915_private *i=
915)
>  	drm_connector_list_iter_end(&conn_iter);
>  }
>=20=20
> -bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
> +bool intel_scanout_needs_vtd_wa(struct intel_display *display)
>  {
> -	return IS_DISPLAY_VER(i915, 6, 11) && i915_vtd_active(i915);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
> +	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 49a246feb1ae..793c9d30c582 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -596,7 +596,7 @@ bool assert_port_valid(struct drm_i915_private *i915,=
 enum port port);
>  	unlikely(__ret_warn_on);					\
>  })
>=20=20
> -bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
> +bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>  int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_stat=
e);
>=20=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index a6b27798fdc3..d873c3ea5fa6 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -980,9 +980,9 @@ static unsigned int g4x_sprite_min_alignment(struct i=
ntel_plane *plane,
>  					     const struct drm_framebuffer *fb,
>  					     int color_plane)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>=20=20
> -	if (intel_scanout_needs_vtd_wa(i915))
> +	if (intel_scanout_needs_vtd_wa(display))
>  		return 128 * 1024;
>=20=20
>  	return 4 * 1024;
> @@ -1610,7 +1610,7 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>  		plane->min_cdclk =3D vlv_plane_min_cdclk;
>=20=20
>  		/* FIXME undocumented for VLV/CHV so not sure what's actually needed */
> -		if (intel_scanout_needs_vtd_wa(dev_priv))
> +		if (intel_scanout_needs_vtd_wa(display))
>  			plane->vtd_guard =3D 128;
>=20=20
>  		if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_B) {
> @@ -1639,7 +1639,7 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>=20=20
>  		plane->min_alignment =3D g4x_sprite_min_alignment;
>=20=20
> -		if (intel_scanout_needs_vtd_wa(dev_priv))
> +		if (intel_scanout_needs_vtd_wa(display))
>  			plane->vtd_guard =3D 64;
>=20=20
>  		formats =3D snb_sprite_formats;
> @@ -1656,7 +1656,7 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>  		plane->min_alignment =3D g4x_sprite_min_alignment;
>  		plane->min_cdclk =3D g4x_sprite_min_cdclk;
>=20=20
> -		if (intel_scanout_needs_vtd_wa(dev_priv))
> +		if (intel_scanout_needs_vtd_wa(display))
>  			plane->vtd_guard =3D 64;
>=20=20
>  		if (IS_SANDYBRIDGE(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index ee93361bba09..e166e1915afa 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2697,6 +2697,7 @@ struct intel_plane *
>  skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  			   enum pipe pipe, enum plane_id plane_id)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	const struct drm_plane_funcs *plane_funcs;
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
> @@ -2750,7 +2751,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	else
>  		plane->min_alignment =3D skl_plane_min_alignment;
>=20=20
> -	if (intel_scanout_needs_vtd_wa(dev_priv))
> +	if (intel_scanout_needs_vtd_wa(display))
>  		plane->vtd_guard =3D DISPLAY_VER(dev_priv) >=3D 10 ? 168 : 136;
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 11) {

--=20
Jani Nikula, Intel
