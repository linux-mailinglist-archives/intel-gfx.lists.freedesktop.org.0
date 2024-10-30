Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D139B6230
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:47:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B7310E790;
	Wed, 30 Oct 2024 11:47:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DOVm4vE1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16B010E790
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288842; x=1761824842;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Lurd2q18JVOgaMf8gA6T53QoDKR2aDl04Lydt0VdkSU=;
 b=DOVm4vE1jC8+MCFeGFqxS0SOKy2+AI08cL55SQsa0mJgz+m0RWebE/5u
 17+jI2kC88FDrbVGptsvk3m3Tr8bWMuieN1AkPn61IDpo9U/TCuTBBmRw
 efoCBkxyf24xFTF4dgv5W+pun+HTGeD+IImo4XITzNGstuDXTdO3FHcd0
 HMqHXmhS8y42npiX7dtTNrxuAVEcGc5soAkjv1MoKwFsOjD23O3yel5G8
 Om4lHmny4PxfgS9i3FYIrDK0vD+oNdx5Fn1V4BN+H0OUPGEJYDRvcqRvq
 OSR1vtdxuODOh1KML7CYxcG005XNpJIw3apNdxaegVCZoeD4p3Fol+wpO A==;
X-CSE-ConnectionGUID: KAe4H/QZRVWcTvEr6Xzplw==
X-CSE-MsgGUID: 1TvI8UNySI6K1HWoqEBzrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="29403244"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="29403244"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:47:22 -0700
X-CSE-ConnectionGUID: xHm4UlScQGew1aLOz+pAmw==
X-CSE-MsgGUID: 5C1eueNTQrKMC44RbrXuTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="86845607"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:47:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/9] drm/i915/scaler: Pass the whole atomic state into
 intel_atomic_setup_scalers()
In-Reply-To: <20241029211030.13255-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
 <20241029211030.13255-4-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:47:18 +0200
Message-ID: <87sesdlsmx.fsf@intel.com>
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_atomic_setup_scalers() currently digs out the full atomic
> state from the crtc state. Flip that on its head so that we instead
> pass in the full atomic state and dig out the crtc state (and whatever
> else we need). This is generallte the better approach as it works
> in all phases of the atomic commit, whereas the other apporoach only
> really works during .atomic_check().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/skl_scaler.c    | 19 +++++++++----------
>  drivers/gpu/drm/i915/display/skl_scaler.h    |  7 +++----
>  3 files changed, 13 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0e6d6c8354ef..dce3a20fa69f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4581,7 +4581,7 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
>  				return ret;
>  		}
>=20=20
> -		ret =3D intel_atomic_setup_scalers(dev_priv, crtc, crtc_state);
> +		ret =3D intel_atomic_setup_scalers(state, crtc);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index b6a4effee5de..29fa4a14400b 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -426,9 +426,8 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>=20=20
>  /**
>   * intel_atomic_setup_scalers() - setup scalers for crtc per staged requ=
ests
> - * @dev_priv: i915 device
> - * @crtc: intel crtc
> - * @crtc_state: incoming crtc_state to validate and setup scalers
> + * @intel_state: atomic state
> + * @crtc: crtc
>   *
>   * This function sets up scalers based on staged scaling requests for
>   * a @crtc and its planes. It is called from crtc level check path. If r=
equest
> @@ -441,16 +440,16 @@ static int intel_atomic_setup_scaler(struct intel_c=
rtc_scaler_state *scaler_stat
>   *         0 - scalers were setup successfully
>   *         error code - otherwise
>   */
> -int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> -			       struct intel_crtc *crtc,
> -			       struct intel_crtc_state *crtc_state)
> +int intel_atomic_setup_scalers(struct intel_atomic_state *intel_state,
> +			       struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(intel_state, crtc);
>  	struct drm_plane *plane =3D NULL;
>  	struct intel_plane *intel_plane;
>  	struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
> -	struct drm_atomic_state *drm_state =3D crtc_state->uapi.state;
> -	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(drm_st=
ate);
>  	int num_scalers_need;
>  	int i;
>=20=20
> @@ -498,7 +497,7 @@ int intel_atomic_setup_scalers(struct drm_i915_privat=
e *dev_priv,
>=20=20
>  			/* plane scaler case: assign as a plane scaler */
>  			/* find the plane that set the bit as scaler_user */
> -			plane =3D drm_state->planes[i].ptr;
> +			plane =3D intel_state->base.planes[i].ptr;
>=20=20
>  			/*
>  			 * to enable/disable hq mode, add planes that are using scaler
> @@ -516,7 +515,7 @@ int intel_atomic_setup_scalers(struct drm_i915_privat=
e *dev_priv,
>  					continue;
>=20=20
>  				plane =3D drm_plane_from_index(&dev_priv->drm, i);
> -				state =3D drm_atomic_get_plane_state(drm_state, plane);
> +				state =3D drm_atomic_get_plane_state(&intel_state->base, plane);
>  				if (IS_ERR(state)) {
>  					drm_dbg_kms(&dev_priv->drm,
>  						    "Failed to add [PLANE:%d] to drm_state\n",
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/=
i915/display/skl_scaler.h
> index 73fa59da09f9..4d2e2dbb1666 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -5,7 +5,7 @@
>  #ifndef INTEL_SCALER_H
>  #define INTEL_SCALER_H
>=20=20
> -struct drm_i915_private;
> +struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_plane;
> @@ -16,9 +16,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crt=
c_state);
>  int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
>  			    struct intel_plane_state *plane_state);
>=20=20
> -int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> -			       struct intel_crtc *crtc,
> -			       struct intel_crtc_state *crtc_state);
> +int intel_atomic_setup_scalers(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc);
>=20=20
>  void skl_pfit_enable(const struct intel_crtc_state *crtc_state);

--=20
Jani Nikula, Intel
