Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 790958472D8
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 16:14:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2485310E0BF;
	Fri,  2 Feb 2024 15:14:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4dtsZow";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B8BD10E0BF
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 15:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706886884; x=1738422884;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Y17D/NyLpYKc7Zd4mv7NXHcDOaCeRQcDVmPIsJKoFZc=;
 b=j4dtsZow10d8mVNqg6OL9ufSaOzjwLwfcMvtoxqLmvD2aVRfglX1t6WA
 uLuFGaSZjMYz/6/kzoAjK0Q8ZfjZm3Jwz8p08wEJmUskUiWel+mfEdfRI
 hKEaz6qHGTpRZz6cy+3ZkNceHlhk0MnRx7Gn1OqbAhRnJ34BDjMw1T4jt
 TqSIC7KcP4Mk2MvlJJnnqhmUbU8kDGVzrXeWQTSFBsMCjhE7ndM9RKQaR
 wmD8lCEyLkiytgdsapciWzL16+oOWj2chZ7hdss13yGPymGi+hSCaTz1i
 +WUlpwl8oUzc0lTjE8ENcZrn2B1CFaihseNJ+IvQGBCV655apkjbEz8zA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="82615"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="82615"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 07:14:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="4686785"
Received: from mmermeza-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.59.198])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 07:14:41 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v3 12/16] drm/i915: Simplify
 intel_initial_plane_config() calling convention
In-Reply-To: <20240116075636.6121-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-13-ville.syrjala@linux.intel.com>
Date: Fri, 02 Feb 2024 17:14:37 +0200
Message-ID: <87ttmqew4i.fsf@intel.com>
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

On Tue, 16 Jan 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There's no reason the caller of intel_initial_plane_config() should
> have to loop over the CRTCs. Pull the loop into the function to
> make life simpler for the caller.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   |  7 +---
>  .../drm/i915/display/intel_plane_initial.c    | 40 +++++++++++--------
>  .../drm/i915/display/intel_plane_initial.h    |  4 +-
>  3 files changed, 26 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index ecf9cb74734b..f3fe1743243b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -415,7 +415,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_=
private *i915)
>  {
>  	struct drm_device *dev =3D &i915->drm;
>  	enum pipe pipe;
> -	struct intel_crtc *crtc;
>  	int ret;
>=20=20
>  	if (!HAS_DISPLAY(i915))
> @@ -467,11 +466,7 @@ int intel_display_driver_probe_nogem(struct drm_i915=
_private *i915)
>  	intel_acpi_assign_connector_fwnodes(i915);
>  	drm_modeset_unlock_all(dev);
>=20=20
> -	for_each_intel_crtc(dev, crtc) {
> -		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> -			continue;
> -		intel_crtc_initial_plane_config(crtc);
> -	}
> +	intel_initial_plane_config(i915);
>=20=20
>  	/*
>  	 * Make sure hardware watermarks really match the state we read out.
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers=
/gpu/drm/i915/display/intel_plane_initial.c
> index 78bff6181ceb..b7e12b60d68b 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -357,25 +357,31 @@ static void plane_config_fini(struct intel_initial_=
plane_config *plane_config)
>  		i915_vma_put(plane_config->vma);
>  }
>=20=20
> -void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
> +void intel_initial_plane_config(struct drm_i915_private *i915)

So this fails to build on CONFIG_DRM_XE=3Dm, because it has its own
version of intel_plane_initial.c which has
intel_crtc_initial_plane_config(), but not intel_initial_plane_config().

You'll get this as the first indication:

  CC [M]  drivers/gpu/drm/xe/display/xe_plane_initial.o
../drivers/gpu/drm/xe/display/xe_plane_initial.c:270:6: error: no previous =
prototype for =E2=80=98intel_crtc_initial_plane_config=E2=80=99 [-Werror=3D=
missing-prototypes]
  270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
      |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

but if you bypass that, eventually:

  MODPOST Module.symvers
ERROR: modpost: "intel_initial_plane_config" [drivers/gpu/drm/xe/xe.ko] und=
efined!

Needs to be fixed before merging.

BR,
Jani.

>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_initial_plane_config plane_config =3D {};
> +	struct intel_crtc *crtc;
>=20=20
> -	/*
> -	 * Note that reserving the BIOS fb up front prevents us
> -	 * from stuffing other stolen allocations like the ring
> -	 * on top.  This prevents some ugliness at boot time, and
> -	 * can even allow for smooth boot transitions if the BIOS
> -	 * fb is large enough for the active pipe configuration.
> -	 */
> -	dev_priv->display.funcs.display->get_initial_plane_config(crtc, &plane_=
config);
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_initial_plane_config plane_config =3D {};
>=20=20
> -	/*
> -	 * If the fb is shared between multiple heads, we'll
> -	 * just get the first one.
> -	 */
> -	intel_find_initial_plane_obj(crtc, &plane_config);
> +		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> +			continue;
>=20=20
> -	plane_config_fini(&plane_config);
> +		/*
> +		 * Note that reserving the BIOS fb up front prevents us
> +		 * from stuffing other stolen allocations like the ring
> +		 * on top.  This prevents some ugliness at boot time, and
> +		 * can even allow for smooth boot transitions if the BIOS
> +		 * fb is large enough for the active pipe configuration.
> +		 */
> +		i915->display.funcs.display->get_initial_plane_config(crtc, &plane_con=
fig);
> +
> +		/*
> +		 * If the fb is shared between multiple heads, we'll
> +		 * just get the first one.
> +		 */
> +		intel_find_initial_plane_obj(crtc, &plane_config);
> +
> +		plane_config_fini(&plane_config);
> +	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers=
/gpu/drm/i915/display/intel_plane_initial.h
> index c7e35ab3182b..64ab95239cd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> @@ -6,8 +6,8 @@
>  #ifndef __INTEL_PLANE_INITIAL_H__
>  #define __INTEL_PLANE_INITIAL_H__
>=20=20
> -struct intel_crtc;
> +struct drm_i915_private;
>=20=20
> -void intel_crtc_initial_plane_config(struct intel_crtc *crtc);
> +void intel_initial_plane_config(struct drm_i915_private *i915);
>=20=20
>  #endif

--=20
Jani Nikula, Intel
