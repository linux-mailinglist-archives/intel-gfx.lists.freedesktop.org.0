Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED908A34E62
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:22:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DCDF10EB86;
	Thu, 13 Feb 2025 19:22:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QQiccpYl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7141110EB86
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474568; x=1771010568;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4NJFgtpLvfqB5MMNW9tjy51tllkn+bLmW3YqHx0TRLA=;
 b=QQiccpYly+w5lRtIrw8i862D2kZLWQ0b99taeH+RIAnCvIjrPDApH0zs
 a6eLuUmnSY3ei13BkfrHHKZdbwVlDmlLZwlgjN9yDmz57c0eouqS6qM6b
 0+dc6aRz6+3N9PdXHRfvr82pFMH8Z8600C+EAtnwhGZfqY6kLGqCEG5cv
 pp8AA30IvYmODpIDpo9wOuYxTLSJRCZg9kJf8194WfSEITwHjg4jZD6Os
 7B6mMbxz5OUrn1BUVXwoYQi0ft+AWslLonR5AX9jRp2uTagmlDpXH1bti
 Jv++SnvPPzi94SPoiH10kNWSINIIj8YOM4N6NS2kr/Gi0g0f5cxyyzXMu Q==;
X-CSE-ConnectionGUID: 8z1Ppmh8T16LGhKvWISMGQ==
X-CSE-MsgGUID: V6+K8fMgQW2GZD6NnPDDaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50823314"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50823314"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:22:48 -0800
X-CSE-ConnectionGUID: mM87uB5wR92T3Aj32EVPHQ==
X-CSE-MsgGUID: xx12zolwR4aWDMy8HbkTvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113891596"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:22:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/12] drm/i915: Relocate some other plane fb related
 stuff into intel_fb.c
In-Reply-To: <20250213150220.13580-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-12-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:22:43 +0200
Message-ID: <87o6z5wsxo.fsf@intel.com>
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
> Move intel_fb_xy_to_linear() and intel_add_fb_offsets()
> These are technially sitting somewhere between plane vs. fb code,
> but we do have a bunch of code like that in intel_fb.c anyway.
> Might need to think about splitting intel_fb.c into pure fb vs.
> plane->fb related stuff somehow, but dunno if that's even feasible.

Again, better than intel_display.c.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 --------------------
>  drivers/gpu/drm/i915/display/intel_display.h |  5 ----
>  drivers/gpu/drm/i915/display/intel_fb.c      | 30 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h      |  6 ++++
>  4 files changed, 36 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c38c37afc154..c58b245ce935 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -601,37 +601,6 @@ void intel_disable_transcoder(const struct intel_crt=
c_state *old_crtc_state)
>  		intel_wait_for_pipe_off(old_crtc_state);
>  }
>=20=20
> -/*
> - * Convert the x/y offsets into a linear offset.
> - * Only valid with 0/180 degree rotation, which is fine since linear
> - * offset is only used with linear buffers on pre-hsw and tiled buffers
> - * with gen2/3, and 90/270 degree rotations isn't supported on any of th=
em.
> - */
> -u32 intel_fb_xy_to_linear(int x, int y,
> -			  const struct intel_plane_state *state,
> -			  int color_plane)
> -{
> -	const struct drm_framebuffer *fb =3D state->hw.fb;
> -	unsigned int cpp =3D fb->format->cpp[color_plane];
> -	unsigned int pitch =3D state->view.color_plane[color_plane].mapping_str=
ide;
> -
> -	return y * pitch + x * cpp;
> -}
> -
> -/*
> - * Add the x/y offsets derived from fb->offsets[] to the user
> - * specified plane src x/y offsets. The resulting x/y offsets
> - * specify the start of scanout from the beginning of the gtt mapping.
> - */
> -void intel_add_fb_offsets(int *x, int *y,
> -			  const struct intel_plane_state *state,
> -			  int color_plane)
> -
> -{
> -	*x +=3D state->view.color_plane[color_plane].x;
> -	*y +=3D state->view.color_plane[color_plane].y;
> -}
> -
>  u32 intel_plane_fb_max_stride(struct drm_device *drm,
>  			      u32 pixel_format, u64 modifier)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index a7bd82662adf..ffbec2c4aabc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -460,11 +460,6 @@ int vlv_get_cck_clock(struct drm_i915_private *dev_p=
riv,
>  int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
>  			   const char *name, u32 reg);
>  void intel_init_display_hooks(struct drm_i915_private *dev_priv);
> -unsigned int intel_fb_xy_to_linear(int x, int y,
> -				   const struct intel_plane_state *state,
> -				   int plane);
> -void intel_add_fb_offsets(int *x, int *y,
> -			  const struct intel_plane_state *state, int plane);
>  bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
>  void intel_encoder_destroy(struct drm_encoder *encoder);
>  struct drm_display_mode *
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index c1923b4c13d6..399babb57030 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1937,6 +1937,36 @@ void intel_fb_fill_view(const struct intel_framebu=
ffer *fb, unsigned int rotatio
>  	else
>  		*view =3D fb->normal_view;
>  }
> +/*
> + * Convert the x/y offsets into a linear offset.
> + * Only valid with 0/180 degree rotation, which is fine since linear
> + * offset is only used with linear buffers on pre-hsw and tiled buffers
> + * with gen2/3, and 90/270 degree rotations isn't supported on any of th=
em.
> + */
> +u32 intel_fb_xy_to_linear(int x, int y,
> +			  const struct intel_plane_state *state,
> +			  int color_plane)
> +{
> +	const struct drm_framebuffer *fb =3D state->hw.fb;
> +	unsigned int cpp =3D fb->format->cpp[color_plane];
> +	unsigned int pitch =3D state->view.color_plane[color_plane].mapping_str=
ide;
> +
> +	return y * pitch + x * cpp;
> +}
> +
> +/*
> + * Add the x/y offsets derived from fb->offsets[] to the user
> + * specified plane src x/y offsets. The resulting x/y offsets
> + * specify the start of scanout from the beginning of the gtt mapping.
> + */
> +void intel_add_fb_offsets(int *x, int *y,
> +			  const struct intel_plane_state *state,
> +			  int color_plane)
> +
> +{
> +	*x +=3D state->view.color_plane[color_plane].x;
> +	*y +=3D state->view.color_plane[color_plane].y;
> +}
>=20=20
>  static
>  u32 intel_fb_max_stride(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index d04d9274bb71..46286a40e10e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -93,6 +93,12 @@ unsigned int intel_fb_view_vtd_guard(const struct drm_=
framebuffer *fb,
>  				     unsigned int rotation);
>  int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
>=20=20
> +unsigned int intel_fb_xy_to_linear(int x, int y,
> +				   const struct intel_plane_state *state,
> +				   int plane);
> +void intel_add_fb_offsets(int *x, int *y,
> +			  const struct intel_plane_state *state, int plane);
> +
>  int intel_framebuffer_init(struct intel_framebuffer *ifb,
>  			   struct drm_gem_object *obj,
>  			   struct drm_mode_fb_cmd2 *mode_cmd);

--=20
Jani Nikula, Intel
