Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DE4CAFE25
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:16:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B2810E534;
	Tue,  9 Dec 2025 12:16:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YDdIxJ42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F60F10E52E;
 Tue,  9 Dec 2025 12:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765282571; x=1796818571;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hmYW4YfoGPx2F7dHYCHUjNxztjIgzcUeaFUOElG5B2U=;
 b=YDdIxJ42WriE55cslxuniCy0pFTxUBlq4v8YXc4Ogb7+ofiQOdCFjyBt
 2dyrgfcybj1bXXigEYi0lvzYowMsLNMEsTmjIfzeM5jWLYrvp4akwnFxD
 3Ji1Dp7lK6UC7PaHmYkshk7EGxM8nE3x3vTw9E9efxBTDTmiux7uiei0z
 4JHZPkTPV//pqiPHyO8R8xfG0BLJK+tUFQN/PjmiD2sK7e15LQw7dNNCn
 wbLWvY6CDX86FSAUEEwozVNa+I1zti8rf4cWRTxD76OFa3TNjs+ZvA4dc
 jEsWreImNSsMb0ZboKT32VXizw62G1gxJyxTqU90mSwSNKsCd6ifwmWK+ g==;
X-CSE-ConnectionGUID: B0AHbJOdSFyHgmLmAJKN0g==
X-CSE-MsgGUID: 9WhaAwKmQ72qF1pR8t5ISw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78598358"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78598358"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:16:11 -0800
X-CSE-ConnectionGUID: 5TLwrVrrRhCS/SzRQuQBTg==
X-CSE-MsgGUID: 2cu3rBD5Qt2OdjnndiMDOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="201136849"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:16:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tursulin@igalia.com>, intel-gfx@lists.freedesktop.org
Cc: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 intel-xe@lists.freedesktop.org, =?utf-8?Q?Jos=C3=A9?= Roberto de Souza
 <jose.souza@intel.com>, Juha-Pekka Heikkila
 <juhapekka.heikkila@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Detect AuxCCS support via display
 parent interface
In-Reply-To: <20251209120034.9143-1-tursulin@igalia.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251209120034.9143-1-tursulin@igalia.com>
Date: Tue, 09 Dec 2025 14:16:05 +0200
Message-ID: <1e1043f8944a5909dfb7a3367ba69f6c56e7ea3b@intel.com>
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

On Tue, 09 Dec 2025, Tvrtko Ursulin <tursulin@igalia.com> wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
>
> Whether AuxCCS can be properly supported depends on the support both from
> the display side and non-display side of the driver.
>
> Let us therefore allow for the non-display part to be queried via the
> display parent interface.
>
> The new interface replaces the HAS_AUX_CCS macro and we also remove the
> FIXME from skl_universal_plane_create since now the xe will not advertise
> the AuxCCS caps to start with so they do not need to be removed after
> enumeration.
>
> Also, by removing this build specific FIXME we come a step closer to fully
> de-coupling display and non-display.
>
> The existing HAS_AUX_CCS gets renamed to HAS_AUX_DIST since it is still
> required for determining the need for PLANE_AUX_DIST programming.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> References: cf48bddd31de ("drm/i915/display: Disable AuxCCS framebuffers =
if built for Xe")
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com> # v1

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
> v2:
>  * Rename HAS_AUX_CCS to HAS_AUX_DIST and keep using for PLANE_AUX_DIST
>    programming. (Ville)
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c             |  3 ++-
>  drivers/gpu/drm/i915/display/intel_parent.c         |  5 +++++
>  drivers/gpu/drm/i915/display/intel_parent.h         |  2 ++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c  |  9 ++-------
>  drivers/gpu/drm/i915/i915_driver.c                  | 10 ++++++++++
>  include/drm/intel/display_parent_interface.h        |  3 +++
>  7 files changed, 25 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index 11c2b2883f35..50b2e9ae2c18 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -149,7 +149,7 @@ struct intel_display_platforms {
>  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(=
__display) >=3D 14)
>  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >=3D 5)
>  #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >=3D 13)
> -#define HAS_AUX_CCS(__display)		(IS_DISPLAY_VER(__display, 9, 12) || (__=
display)->platform.alderlake_p || (__display)->platform.meteorlake)
> +#define HAS_AUX_DIST(__display)		(IS_DISPLAY_VER(__display, 9, 12) || (_=
_display)->platform.alderlake_p || (__display)->platform.meteorlake)
>  #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >=3D 11 && HAS_=
DSC(__display))
>  #define HAS_CASF(__display)		(DISPLAY_VER(__display) >=3D 20)
>  #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_c=
rawl)
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index b34b4961fe1c..5b8e02ca2faf 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -21,6 +21,7 @@
>  #include "intel_fb_bo.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_panic.h"
> +#include "intel_parent.h"
>  #include "intel_plane.h"
>=20=20
>  #define check_array_bounds(display, a, i) drm_WARN_ON((display)->drm, (i=
) >=3D ARRAY_SIZE(a))
> @@ -558,7 +559,7 @@ static bool plane_has_modifier(struct intel_display *=
display,
>  	 * where supported.
>  	 */
>  	if (intel_fb_is_ccs_modifier(md->modifier) &&
> -	    HAS_AUX_CCS(display) !=3D !!md->ccs.packed_aux_planes)
> +	    intel_parent_has_auxccs(display) !=3D !!md->ccs.packed_aux_planes)
>  		return false;
>=20=20
>  	if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/dr=
m/i915/display/intel_parent.c
> index 2ea310cc3509..7a55def19836 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -94,3 +94,8 @@ void intel_parent_fence_priority_display(struct intel_d=
isplay *display, struct d
>  	if (display->parent->fence_priority_display)
>  		display->parent->fence_priority_display(fence);
>  }
> +
> +bool intel_parent_has_auxccs(struct intel_display *display)
> +{
> +	return display->parent->has_auxccs && display->parent->has_auxccs(displ=
ay->drm);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/dr=
m/i915/display/intel_parent.h
> index 8f91a6f75c53..f34ee81ed7a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -33,4 +33,6 @@ bool intel_parent_has_fenced_regions(struct intel_displ=
ay *display);
>=20=20
>  void intel_parent_fence_priority_display(struct intel_display *display, =
struct dma_fence *fence);
>=20=20
> +bool intel_parent_has_auxccs(struct intel_display *display);
> +
>  #endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 6cd94f400e3f..40148d225410 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -22,6 +22,7 @@
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_panic.h"
> +#include "intel_parent.h"
>  #include "intel_plane.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
> @@ -1602,7 +1603,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
>  	}
>=20=20
>  	/* FLAT CCS doesn't need to program AUX_DIST */
> -	if (HAS_AUX_CCS(display))
> +	if (HAS_AUX_DIST(display))
>  		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
>  				   skl_plane_aux_dist(plane_state, color_plane));
>=20=20
> @@ -2972,12 +2973,6 @@ skl_universal_plane_create(struct intel_display *d=
isplay,
>  	else
>  		caps =3D skl_plane_caps(display, pipe, plane_id);
>=20=20
> -	/* FIXME: xe has problems with AUX */
> -	if (!IS_ENABLED(I915) && HAS_AUX_CCS(display))
> -		caps &=3D ~(INTEL_PLANE_CAP_CCS_RC |
> -			  INTEL_PLANE_CAP_CCS_RC_CC |
> -			  INTEL_PLANE_CAP_CCS_MC);
> -
>  	modifiers =3D intel_fb_plane_get_modifiers(display, caps);
>=20=20
>  	ret =3D drm_universal_plane_init(display->drm, &plane->base,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index d98839427ef9..59e396a74ca4 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -757,6 +757,15 @@ static void fence_priority_display(struct dma_fence =
*fence)
>  		i915_gem_fence_wait_priority_display(fence);
>  }
>=20=20
> +static bool has_auxccs(struct drm_device *drm)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(drm);
> +
> +	return IS_GRAPHICS_VER(i915, 9, 12) ||
> +	       IS_ALDERLAKE_P(i915) ||
> +	       IS_METEORLAKE(i915);
> +}
> +
>  static const struct intel_display_parent_interface parent =3D {
>  	.hdcp =3D &i915_display_hdcp_interface,
>  	.rpm =3D &i915_display_rpm_interface,
> @@ -765,6 +774,7 @@ static const struct intel_display_parent_interface pa=
rent =3D {
>  	.vgpu_active =3D vgpu_active,
>  	.has_fenced_regions =3D has_fenced_regions,
>  	.fence_priority_display =3D fence_priority_display,
> +	.has_auxccs =3D has_auxccs,
>  };
>=20=20
>  const struct intel_display_parent_interface *i915_driver_parent_interfac=
e(void)
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 61d1b22adc83..0d79f3c189c3 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -80,6 +80,9 @@ struct intel_display_parent_interface {
>=20=20
>  	/** @fence_priority_display: Set display priority. Optional. */
>  	void (*fence_priority_display)(struct dma_fence *fence);
> +
> +	/** @has_auxcss: Are AuxCCS formats supported by the parent. Optional. =
*/
> +	bool (*has_auxccs)(struct drm_device *drm);
>  };
>=20=20
>  #endif

--=20
Jani Nikula, Intel
