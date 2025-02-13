Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8211AA34E5D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:20:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77EBF10EB83;
	Thu, 13 Feb 2025 19:20:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EdAC16/Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A116A10EB83
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474435; x=1771010435;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=bKEwdyzz+M6ecKIaMBCveb7qSaLPZ4I0ZQMXL4d0EGY=;
 b=EdAC16/ZYZxlX6bMr3+ssAayKKH4uhv5Tu0qKko7U347Ox69wvsBiihF
 mENRtf3zpk7bMcWDFWCiVapYtNJpvfOtUR/opBr9J6SXcBAaLVryDZPQm
 vCSA8L23Ck3TaP94TatwPKVgs+POnAmkIukhkQXI18kAOd1T6x9lMZ/68
 oKz5jxiqSuaSh5pEe4CpErq2um+nzBjI03m7T4lSHlaLhC4EI686Rte+d
 MGaVKXulvUsiZ8jPGTxDNayZ8PSMCigTCeZjNXeVRNavZpSDzrzL5NlBq
 lD3spPXC4hpaaYxX6wm9i0Vv1U7h8Ggz4OiyoARI5rBrpaitcCNjSX+8z A==;
X-CSE-ConnectionGUID: vw4iLfQUSlO2kO1xin6XOQ==
X-CSE-MsgGUID: 5HDH/qrEQ1qvnsFQIytqvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50823039"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50823039"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:20:35 -0800
X-CSE-ConnectionGUID: PhowePlnTD+CB3KHJtuxnA==
X-CSE-MsgGUID: LB59xzVBSeie8JltjGYsvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="118325552"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:20:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915: Relocate intel_plane_uses_fence()
In-Reply-To: <20250213150220.13580-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-10-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:20:30 +0200
Message-ID: <87tt8xwt1d.fsf@intel.com>
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
> Relocate intel_plane_uses_fence() into intel_fb.c. Not sure
> that's the best place, but since this is mostly about the
> fb and vma I can't think of anything truly better right now.

Better than intel_display.c anyway.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
>  drivers/gpu/drm/i915/display/intel_display.h |  2 --
>  drivers/gpu/drm/i915/display/intel_fb.c      | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
>  4 files changed, 11 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c2bde539a4ff..4800fefd6321 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -637,16 +637,6 @@ unsigned int intel_remapped_info_size(const struct i=
ntel_remapped_info *rem_info
>  	return size;
>  }
>=20=20
> -bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -
> -	return DISPLAY_VER(dev_priv) < 4 ||
> -		(plane->fbc && !plane_state->no_fbc_reason &&
> -		 plane_state->view.gtt.type =3D=3D I915_GTT_VIEW_NORMAL);
> -}
> -
>  /*
>   * Convert the x/y offsets into a linear offset.
>   * Only valid with 0/180 degree rotation, which is fine since linear
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index b3cdf7f04450..d3afd134f70e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -526,8 +526,6 @@ void ilk_pfit_disable(const struct intel_crtc_state *=
old_crtc_state);
>  int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc);
>  unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *=
plane_state);
>=20=20
> -bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
> -
>  struct intel_encoder *
>  intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>  			   const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 5af93235057c..5875af2b61e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1283,6 +1283,16 @@ bool intel_fb_needs_pot_stride_remap(const struct =
intel_framebuffer *fb)
>  		intel_fb_uses_dpt(&fb->base);
>  }
>=20=20
> +bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +
> +	return DISPLAY_VER(dev_priv) < 4 ||
> +		(plane->fbc && !plane_state->no_fbc_reason &&
> +		 plane_state->view.gtt.type =3D=3D I915_GTT_VIEW_NORMAL);
> +}
> +
>  static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_=
plane, unsigned int rotation)
>  {
>  	if (drm_rotation_90_or_270(rotation))
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index e6ef1783e351..63728520eb06 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -77,6 +77,7 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
>  				       int color_plane);
>=20=20
>  bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
> +bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
>  bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *f=
b);
>=20=20
>  int intel_fill_fb_info(struct intel_display *display, struct intel_frame=
buffer *fb);

--=20
Jani Nikula, Intel
