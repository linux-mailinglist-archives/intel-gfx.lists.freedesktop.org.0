Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C518A79E28
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 10:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8664510E91E;
	Thu,  3 Apr 2025 08:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ivf1EvL3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC44610E1F8;
 Thu,  3 Apr 2025 08:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743668950; x=1775204950;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=9wASSCDtHfWTQS1ibqq2+/aBIDXmnwME9Xqva2ktERg=;
 b=Ivf1EvL394UO2vK20DAVBDfZ+lSzDnyUHjzNzWmuGED3B5PrfUEZsvRm
 gNLp9mV9aAduOeRQkyw4k1zmf9cFsKring5zBHPlKc78LCmip4b0EqFG5
 EXvuD7Ps8vR1zFkOjOLe01sZsp6hJuJbh5a9A65SJQnJYuBPX0VbPoVmw
 41k+fnqqdjKgVgUbSrh/XbAtJ9Q/F3jKdgS32KYPJ52EKoKYUfhiZltMY
 zsc3J1qRTQu1DwMw66OTSGqoqeofA0DJI1VdYgLjz3MVmwNDEh2teHfSK
 qTyspQjUsYatUEi5MrVNaRZDNfucA+LPUFprWDQU2mAZbNs1HjTz0hiZh Q==;
X-CSE-ConnectionGUID: WDoIi/I+QPKK/NTLXyMrug==
X-CSE-MsgGUID: VvKh2/g3QrutVpjfsuAJWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="55261222"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="55261222"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 01:29:10 -0700
X-CSE-ConnectionGUID: miVzOfg2T26Z04ziHYbRnQ==
X-CSE-MsgGUID: 0ZUmn2DZTg+y069X9BqQwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="157901448"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 01:29:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/6] drm/i915: Nuke intel_plane_ggtt_offset()
In-Reply-To: <20250402172240.9275-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-3-ville.syrjala@linux.intel.com>
Date: Thu, 03 Apr 2025 11:29:04 +0300
Message-ID: <87o6xd1wdr.fsf@intel.com>
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
> We don't really need the extra intel_plane_ggtt_offset() wrapper
> anymore. Get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 -----
>  drivers/gpu/drm/i915/display/intel_atomic_plane.h  | 2 --
>  drivers/gpu/drm/i915/display/intel_fb_pin.c        | 2 +-
>  drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c             | 2 +-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c      | 2 +-
>  6 files changed, 4 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 7276179df878..264a50b29c16 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1565,8 +1565,3 @@ int intel_atomic_check_planes(struct intel_atomic_s=
tate *state)
>=20=20
>  	return 0;
>  }
> -
> -u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
> -{
> -	return i915_ggtt_offset(plane_state->ggtt_vma);
> -}
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 6efac923dcbc..65edd88d28a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -88,6 +88,4 @@ int intel_atomic_add_affected_planes(struct intel_atomi=
c_state *state,
>  				     struct intel_crtc *crtc);
>  int intel_atomic_check_planes(struct intel_atomic_state *state);
>=20=20
> -u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
> -
>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index fb7d0c8b9302..f2d8675dd98a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -311,7 +311,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  		plane_state->surf =3D i915_gem_object_get_dma_address(obj, 0) +
>  			plane->surf_offset(plane_state);
>  	} else {
> -		plane_state->surf =3D intel_plane_ggtt_offset(plane_state) +
> +		plane_state->surf =3D i915_ggtt_offset(plane_state->ggtt_vma) +
>  			plane->surf_offset(plane_state);
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers=
/gpu/drm/i915/display/intel_plane_initial.c
> index 1c49610eb42f..3afff528a7bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -356,7 +356,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  	    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
>  		plane_state->flags |=3D PLANE_HAS_FENCE;
>=20=20
> -	plane_state->surf =3D intel_plane_ggtt_offset(plane_state);
> +	plane_state->surf =3D i915_ggtt_offset(plane_state->ggtt_vma);
>=20=20
>  	plane_state->uapi.src_x =3D 0;
>  	plane_state->uapi.src_y =3D 0;
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index b9c45a5a3d82..b2e979805455 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -438,7 +438,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>=20=20
>  	new_plane_state->ggtt_vma =3D vma;
>=20=20
> -	new_plane_state->surf =3D intel_plane_ggtt_offset(new_plane_state) +
> +	new_plane_state->surf =3D i915_ggtt_offset(new_plane_state->ggtt_vma) +
>  		plane->surf_offset(new_plane_state);

I don't think xe specific code should be calling i915 compat functions
directly.

>=20=20
>  	return 0;
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/=
drm/xe/display/xe_plane_initial.c
> index a15f60835239..c563edf14b1a 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -239,7 +239,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>=20=20
>  	plane_state->ggtt_vma =3D vma;
>=20=20
> -	plane_state->surf =3D intel_plane_ggtt_offset(plane_state);
> +	plane_state->surf =3D i915_ggtt_offset(plane_state->ggtt_vma);

Ditto.

>=20=20
>  	plane_state->uapi.src_x =3D 0;
>  	plane_state->uapi.src_y =3D 0;

--=20
Jani Nikula, Intel
