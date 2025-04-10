Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBBEA83D8E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 10:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6316F10E80B;
	Thu, 10 Apr 2025 08:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AGx46R52";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98F410E801;
 Thu, 10 Apr 2025 08:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744275235; x=1775811235;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FHCm9/riXkrMcvOYPaPJr8E8TVkzZZkBvTrSaE7sZp4=;
 b=AGx46R52+VH83CmrYhhOdi1HA21KchIrbdAH1zuYiGGYelkcZFXG2Zti
 Pvh5+3+cW6JXlFU/ajB0u3LQ3qUphcS0HyuQC64JQzY5X0odWtmoGLbvv
 h3PbeMyMFG6R/wZSYOmjCOjYRco7HEAZpkBz5bwwyHvwSDOChqDSY5ECq
 +FAJfSqA0TcFvRE0r6pdVCP/YsvSEEt/Xid0fgDAPpd9z/7hljOTsDegN
 kSxweUV38rPLWniWJzk4Cw3R4l+/EDf5McPU+zk9VluHeugyIgMowLVGt
 NeG0DytMQJQcpBnTa9A4VgWAlx4NtLV5OV2PFy2JaQg7R9dFi8NWSJNBd w==;
X-CSE-ConnectionGUID: eduJVnFwSH6P/SkedBVOsw==
X-CSE-MsgGUID: Z2sdlghHQ5uk5es340N2Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45669411"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45669411"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:53:54 -0700
X-CSE-ConnectionGUID: 4aQWDF4hRIOpCNTG91MN4Q==
X-CSE-MsgGUID: ALy6flCPRBS/2xEeZ4/rqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128759125"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:53:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 6/6] drm/i915: Don't pass crtc_state to
 foo_plane_ctl() & co.
In-Reply-To: <20250402172240.9275-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-7-ville.syrjala@linux.intel.com>
Date: Thu, 10 Apr 2025 11:53:49 +0300
Message-ID: <87plhkv1lu.fsf@intel.com>
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
> The *_plane_ctl() functions only consider the state of the
> plane (the state of the crtc is handled by the corresponding
> *_plane_ctl_crtc()), and thus they don't need the crtc_state
> at all. Don't pass it in.

Trusting the compiler here,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c         |  5 ++---
>  drivers/gpu/drm/i915/display/intel_cursor.c       | 10 ++++------
>  drivers/gpu/drm/i915/display/intel_sprite.c       | 15 ++++++---------
>  .../gpu/drm/i915/display/skl_universal_plane.c    | 11 ++++-------
>  4 files changed, 16 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index bfeb4bf864e2..6a2609402431 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -151,8 +151,7 @@ static bool i9xx_plane_has_windowing(struct intel_pla=
ne *plane)
>  			i9xx_plane =3D=3D PLANE_C;
>  }
>=20=20
> -static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
> -			  const struct intel_plane_state *plane_state)
> +static u32 i9xx_plane_ctl(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> @@ -351,7 +350,7 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>=20=20
> -	plane_state->ctl =3D i9xx_plane_ctl(crtc_state, plane_state);
> +	plane_state->ctl =3D i9xx_plane_ctl(plane_state);
>=20=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 5333b34a5776..8f9c8f0f4b27 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -205,8 +205,7 @@ static u32 i845_cursor_ctl_crtc(const struct intel_cr=
tc_state *crtc_state)
>  	return cntl;
>  }
>=20=20
> -static u32 i845_cursor_ctl(const struct intel_crtc_state *crtc_state,
> -			   const struct intel_plane_state *plane_state)
> +static u32 i845_cursor_ctl(const struct intel_plane_state *plane_state)
>  {
>  	return CURSOR_ENABLE |
>  		CURSOR_FORMAT_ARGB |
> @@ -266,7 +265,7 @@ static int i845_check_cursor(struct intel_crtc_state =
*crtc_state,
>  		return -EINVAL;
>  	}
>=20=20
> -	plane_state->ctl =3D i845_cursor_ctl(crtc_state, plane_state);
> +	plane_state->ctl =3D i845_cursor_ctl(plane_state);
>=20=20
>  	return 0;
>  }
> @@ -398,8 +397,7 @@ static u32 i9xx_cursor_ctl_crtc(const struct intel_cr=
tc_state *crtc_state)
>  	return cntl;
>  }
>=20=20
> -static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
> -			   const struct intel_plane_state *plane_state)
> +static u32 i9xx_cursor_ctl(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	u32 cntl =3D 0;
> @@ -526,7 +524,7 @@ static int i9xx_check_cursor(struct intel_crtc_state =
*crtc_state,
>  		return -EINVAL;
>  	}
>=20=20
> -	plane_state->ctl =3D i9xx_cursor_ctl(crtc_state, plane_state);
> +	plane_state->ctl =3D i9xx_cursor_ctl(plane_state);
>=20=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 9bcb8dda6129..269065840b31 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -263,8 +263,7 @@ static u32 vlv_sprite_ctl_crtc(const struct intel_crt=
c_state *crtc_state)
>  	return sprctl;
>  }
>=20=20
> -static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
> -			  const struct intel_plane_state *plane_state)
> +static u32 vlv_sprite_ctl(const struct intel_plane_state *plane_state)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	unsigned int rotation =3D plane_state->hw.rotation;
> @@ -659,8 +658,7 @@ static bool ivb_need_sprite_gamma(const struct intel_=
plane_state *plane_state)
>  		(display->platform.ivybridge || display->platform.haswell);
>  }
>=20=20
> -static u32 ivb_sprite_ctl(const struct intel_crtc_state *crtc_state,
> -			  const struct intel_plane_state *plane_state)
> +static u32 ivb_sprite_ctl(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> @@ -1009,8 +1007,7 @@ static u32 g4x_sprite_ctl_crtc(const struct intel_c=
rtc_state *crtc_state)
>  	return dvscntr;
>  }
>=20=20
> -static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
> -			  const struct intel_plane_state *plane_state)
> +static u32 g4x_sprite_ctl(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> @@ -1377,9 +1374,9 @@ g4x_sprite_check(struct intel_crtc_state *crtc_stat=
e,
>  		return ret;
>=20=20
>  	if (DISPLAY_VER(display) >=3D 7)
> -		plane_state->ctl =3D ivb_sprite_ctl(crtc_state, plane_state);
> +		plane_state->ctl =3D ivb_sprite_ctl(plane_state);
>  	else
> -		plane_state->ctl =3D g4x_sprite_ctl(crtc_state, plane_state);
> +		plane_state->ctl =3D g4x_sprite_ctl(plane_state);
>=20=20
>  	return 0;
>  }
> @@ -1429,7 +1426,7 @@ vlv_sprite_check(struct intel_crtc_state *crtc_stat=
e,
>  	if (ret)
>  		return ret;
>=20=20
> -	plane_state->ctl =3D vlv_sprite_ctl(crtc_state, plane_state);
> +	plane_state->ctl =3D vlv_sprite_ctl(plane_state);
>=20=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 808580826b0e..cc64d9598c17 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1166,8 +1166,7 @@ static u32 skl_plane_ctl_crtc(const struct intel_cr=
tc_state *crtc_state)
>  	return plane_ctl;
>  }
>=20=20
> -static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
> -			 const struct intel_plane_state *plane_state)
> +static u32 skl_plane_ctl(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> @@ -1225,8 +1224,7 @@ static u32 glk_plane_color_ctl_crtc(const struct in=
tel_crtc_state *crtc_state)
>  	return plane_color_ctl;
>  }
>=20=20
> -static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
> -			       const struct intel_plane_state *plane_state)
> +static u32 glk_plane_color_ctl(const struct intel_plane_state *plane_sta=
te)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> @@ -2355,11 +2353,10 @@ static int skl_plane_check(struct intel_crtc_stat=
e *crtc_state,
>  		plane_state->damage =3D DRM_RECT_INIT(0, 0, 0, 0);
>  	}
>=20=20
> -	plane_state->ctl =3D skl_plane_ctl(crtc_state, plane_state);
> +	plane_state->ctl =3D skl_plane_ctl(plane_state);
>=20=20
>  	if (DISPLAY_VER(display) >=3D 10)
> -		plane_state->color_ctl =3D glk_plane_color_ctl(crtc_state,
> -							     plane_state);
> +		plane_state->color_ctl =3D glk_plane_color_ctl(plane_state);
>=20=20
>  	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
>  	    icl_is_hdr_plane(display, plane->id))

--=20
Jani Nikula, Intel
