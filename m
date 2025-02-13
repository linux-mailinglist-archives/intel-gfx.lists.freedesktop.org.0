Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68924A34E67
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0914310EB87;
	Thu, 13 Feb 2025 19:23:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oy8FwM5R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2DC10EB88
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474627; x=1771010627;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=SFRc/IlazmsN4mXQ/0gxZhdqsB0OKm7Hnbio9ydzjDc=;
 b=Oy8FwM5R4o1uxTNI1iow4mKezm0VuXTuOQP3phO2WvjhfSmqaiiXF3KK
 GtkPTlxqpi6bw6BOLac1k26ieC6fhGbad8tHTHDcv4DAOl0//DaV7DELX
 W1/qlSF1pSEEe9pm2mmxByuYesafjdXSJ9or6XBzye8BiBNjzEofMOOJH
 Q/kevCAasaEnufVAasgFG4t3pyTfA9k+G5eRu4hJ+pVPKTtXp+Q7vxUtO
 YTriw9hXaFApOSSW8FJZHzci/V3RJW1XAqQ8ljDZNsz0VqtzWbBOxn9Ki
 tGMMaWLl9p8J0TiMRx11LOsdrQfLjMZMbAKyS6uwMxdYn/dHHa79lFUbe w==;
X-CSE-ConnectionGUID: ox7+JWt/T1aM1a1OriE+wQ==
X-CSE-MsgGUID: 6M/MpY+KRnaVB95S2z8lhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="44131650"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="44131650"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:23:47 -0800
X-CSE-ConnectionGUID: oxIuKf2fQByLSqdwH1IMiQ==
X-CSE-MsgGUID: sBg9RG97SfuInAODU4aH9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="112985688"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:23:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 12/12] drm/i915: s/state/plane_state/
In-Reply-To: <20250213150220.13580-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-13-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:23:41 +0200
Message-ID: <87ldu9wsw2.fsf@intel.com>
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

On Thu, 13 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the canonical 'plane_state' name for funciton arguments where
> appropriate.

*function

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Also do the s/int plane/int color_plane/ in couple of the
> function prototypes while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 32 ++++++++++++-------------
>  drivers/gpu/drm/i915/display/intel_fb.h | 11 +++++----
>  2 files changed, 22 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 399babb57030..97d54b40cf1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1049,13 +1049,13 @@ static u32 intel_adjust_aligned_offset(int *x, in=
t *y,
>   * the x/y offsets.
>   */
>  u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> -				      const struct intel_plane_state *state,
> +				      const struct intel_plane_state *plane_state,
>  				      int color_plane,
>  				      u32 old_offset, u32 new_offset)
>  {
> -	return intel_adjust_aligned_offset(x, y, state->hw.fb, color_plane,
> -					   state->hw.rotation,
> -					   state->view.color_plane[color_plane].mapping_stride,
> +	return intel_adjust_aligned_offset(x, y, plane_state->hw.fb, color_plan=
e,
> +					   plane_state->hw.rotation,
> +					   plane_state->view.color_plane[color_plane].mapping_stride,
>  					   old_offset, new_offset);
>  }
>=20=20
> @@ -1129,14 +1129,14 @@ static u32 intel_compute_aligned_offset(struct in=
tel_display *display,
>  }
>=20=20
>  u32 intel_plane_compute_aligned_offset(int *x, int *y,
> -				       const struct intel_plane_state *state,
> +				       const struct intel_plane_state *plane_state,
>  				       int color_plane)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> -	struct intel_plane *plane =3D to_intel_plane(state->uapi.plane);
> -	const struct drm_framebuffer *fb =3D state->hw.fb;
> -	unsigned int rotation =3D state->hw.rotation;
> -	unsigned int pitch =3D state->view.color_plane[color_plane].mapping_str=
ide;
> +	struct intel_display *display =3D to_intel_display(plane_state);
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	unsigned int pitch =3D plane_state->view.color_plane[color_plane].mappi=
ng_stride;
>  	unsigned int alignment =3D plane->min_alignment(plane, fb, color_plane);
>=20=20
>  	return intel_compute_aligned_offset(display, x, y, fb, color_plane,
> @@ -1944,12 +1944,12 @@ void intel_fb_fill_view(const struct intel_frameb=
uffer *fb, unsigned int rotatio
>   * with gen2/3, and 90/270 degree rotations isn't supported on any of th=
em.
>   */
>  u32 intel_fb_xy_to_linear(int x, int y,
> -			  const struct intel_plane_state *state,
> +			  const struct intel_plane_state *plane_state,
>  			  int color_plane)
>  {
> -	const struct drm_framebuffer *fb =3D state->hw.fb;
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	unsigned int cpp =3D fb->format->cpp[color_plane];
> -	unsigned int pitch =3D state->view.color_plane[color_plane].mapping_str=
ide;
> +	unsigned int pitch =3D plane_state->view.color_plane[color_plane].mappi=
ng_stride;
>=20=20
>  	return y * pitch + x * cpp;
>  }
> @@ -1960,12 +1960,12 @@ u32 intel_fb_xy_to_linear(int x, int y,
>   * specify the start of scanout from the beginning of the gtt mapping.
>   */
>  void intel_add_fb_offsets(int *x, int *y,
> -			  const struct intel_plane_state *state,
> +			  const struct intel_plane_state *plane_state,
>  			  int color_plane)
>=20=20
>  {
> -	*x +=3D state->view.color_plane[color_plane].x;
> -	*y +=3D state->view.color_plane[color_plane].y;
> +	*x +=3D plane_state->view.color_plane[color_plane].x;
> +	*y +=3D plane_state->view.color_plane[color_plane].y;
>  }
>=20=20
>  static
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 46286a40e10e..bdd76b372957 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -71,11 +71,11 @@ void intel_fb_plane_get_subsampling(int *hsub, int *v=
sub,
>  				    int color_plane);
>=20=20
>  u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> -				      const struct intel_plane_state *state,
> +				      const struct intel_plane_state *plane_state,
>  				      int color_plane,
>  				      u32 old_offset, u32 new_offset);
>  u32 intel_plane_compute_aligned_offset(int *x, int *y,
> -				       const struct intel_plane_state *state,
> +				       const struct intel_plane_state *plane_state,
>  				       int color_plane);
>=20=20
>  bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
> @@ -94,10 +94,11 @@ unsigned int intel_fb_view_vtd_guard(const struct drm=
_framebuffer *fb,
>  int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
>=20=20
>  unsigned int intel_fb_xy_to_linear(int x, int y,
> -				   const struct intel_plane_state *state,
> -				   int plane);
> +				   const struct intel_plane_state *plane_state,
> +				   int color_plane);
>  void intel_add_fb_offsets(int *x, int *y,
> -			  const struct intel_plane_state *state, int plane);
> +			  const struct intel_plane_state *plane_state,
> +			  int color_plane);
>=20=20
>  int intel_framebuffer_init(struct intel_framebuffer *ifb,
>  			   struct drm_gem_object *obj,

--=20
Jani Nikula, Intel
