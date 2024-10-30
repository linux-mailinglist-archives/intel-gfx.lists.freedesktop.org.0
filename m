Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F9A9B622A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376E310E067;
	Wed, 30 Oct 2024 11:46:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DO3lflZk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B3C10E067
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288806; x=1761824806;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1zsmq+kjsKDwMwJlMUWZtinPRyFFXO8K9R1ddhKThIQ=;
 b=DO3lflZk+ySyieHPZiCy5AI2fPAkfYNwtl0bDBs6Dv2j7daGG0u2Y6NN
 9IbQ5cDO6vCCJxfSIK2fQ/1W+8ndWJPKuNoTTF+vVHYemGPNjMnkiydv6
 F1g1YSmz6vYFrtM+pPxKDWKIAMPkcM2Z71B2DTrS3I9vVjs+omqTroxl2
 t7dAFcLvXFh8UIHT4iGP1nUP8Np/AwmIxbXDrsq1CKC0c/MoFMH3L69O4
 BIRHAClRdTpSnuV4M5qOtBPFuSoZvmCK9/l6BRgugEpmRtbo9UVDnMgcR
 P31GykSPk1kJ+cfA1lygPjJJ+RZ4kj/HJe8m7NwEkAFqPeGOg9QDuIKPf Q==;
X-CSE-ConnectionGUID: pF/Mk7KHSpW4m/ZZxqiYzg==
X-CSE-MsgGUID: LHhWHx99TBe9ZB5tHtWpqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40516211"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40516211"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:46:45 -0700
X-CSE-ConnectionGUID: KP0VWVznTTuCSrA34+6qow==
X-CSE-MsgGUID: dR6eJC6GTuiaWaLseDQyaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="87066557"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:46:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/9] drm/i915/scaler: s/intel_crtc/crtc/ etc.
In-Reply-To: <20241029211030.13255-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
 <20241029211030.13255-2-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:46:41 +0200
Message-ID: <87y125lsny.fsf@intel.com>
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
> Rename some variables from the intel_foo to just foo, to match
> the more modern style used throughout the driver.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 33 +++++++++++------------
>  drivers/gpu/drm/i915/display/skl_scaler.h |  2 +-
>  2 files changed, 17 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 7dbc99b02eaa..b6a4effee5de 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -268,20 +268,19 @@ int skl_update_scaler_crtc(struct intel_crtc_state =
*crtc_state)
>  int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
>  			    struct intel_plane_state *plane_state)
>  {
> -	struct intel_plane *intel_plane =3D
> -		to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>  	struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	bool force_detach =3D !fb || !plane_state->uapi.visible;
>  	bool need_scaler =3D false;
>=20=20
>  	/* Pre-gen11 and SDR planes always need a scaler for planar formats. */
> -	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
> +	if (!icl_is_hdr_plane(dev_priv, plane->id) &&
>  	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
>  		need_scaler =3D true;
>=20=20
>  	return skl_update_scaler(crtc_state, force_detach,
> -				 drm_plane_index(&intel_plane->base),
> +				 drm_plane_index(&plane->base),
>  				 &plane_state->scaler_id,
>  				 drm_rect_width(&plane_state->uapi.src) >> 16,
>  				 drm_rect_height(&plane_state->uapi.src) >> 16,
> @@ -293,18 +292,18 @@ int skl_update_scaler_plane(struct intel_crtc_state=
 *crtc_state,
>  }
>=20=20
>  static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *sca=
ler_state,
> -				     int num_scalers_need, struct intel_crtc *intel_crtc,
> +				     int num_scalers_need, struct intel_crtc *crtc,
>  				     const char *name, int idx,
>  				     struct intel_plane_state *plane_state,
>  				     int *scaler_id)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	int j;
>  	u32 mode;
>=20=20
>  	if (*scaler_id < 0) {
>  		/* find a free scaler */
> -		for (j =3D 0; j < intel_crtc->num_scalers; j++) {
> +		for (j =3D 0; j < crtc->num_scalers; j++) {
>  			if (scaler_state->scalers[j].in_use)
>  				continue;
>=20=20
> @@ -344,7 +343,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  		}
>  	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		mode =3D PS_SCALER_MODE_NORMAL;
> -	} else if (num_scalers_need =3D=3D 1 && intel_crtc->num_scalers > 1) {
> +	} else if (num_scalers_need =3D=3D 1 && crtc->num_scalers > 1) {
>  		/*
>  		 * when only 1 scaler is in use on a pipe with 2 scalers
>  		 * scaler 0 operates in high quality (HQ) mode.
> @@ -419,7 +418,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  	}
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
> -		    intel_crtc->pipe, *scaler_id, name, idx);
> +		    crtc->pipe, *scaler_id, name, idx);
>  	scaler_state->scalers[*scaler_id].mode =3D mode;
>=20=20
>  	return 0;
> @@ -428,7 +427,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  /**
>   * intel_atomic_setup_scalers() - setup scalers for crtc per staged requ=
ests
>   * @dev_priv: i915 device
> - * @intel_crtc: intel crtc
> + * @crtc: intel crtc
>   * @crtc_state: incoming crtc_state to validate and setup scalers
>   *
>   * This function sets up scalers based on staged scaling requests for
> @@ -443,7 +442,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>   *         error code - otherwise
>   */
>  int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> -			       struct intel_crtc *intel_crtc,
> +			       struct intel_crtc *crtc,
>  			       struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_plane *plane =3D NULL;
> @@ -470,10 +469,10 @@ int intel_atomic_setup_scalers(struct drm_i915_priv=
ate *dev_priv,
>  	 */
>=20=20
>  	/* fail if required scalers > available scalers */
> -	if (num_scalers_need > intel_crtc->num_scalers) {
> +	if (num_scalers_need > crtc->num_scalers) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Too many scaling requests %d > %d\n",
> -			    num_scalers_need, intel_crtc->num_scalers);
> +			    num_scalers_need, crtc->num_scalers);
>  		return -EINVAL;
>  	}
>=20=20
> @@ -490,7 +489,7 @@ int intel_atomic_setup_scalers(struct drm_i915_privat=
e *dev_priv,
>=20=20
>  		if (i =3D=3D SKL_CRTC_INDEX) {
>  			name =3D "CRTC";
> -			idx =3D intel_crtc->base.base.id;
> +			idx =3D crtc->base.base.id;
>=20=20
>  			/* panel fitter case: assign as a crtc scaler */
>  			scaler_id =3D &scaler_state->scaler_id;
> @@ -531,7 +530,7 @@ int intel_atomic_setup_scalers(struct drm_i915_privat=
e *dev_priv,
>=20=20
>  			/* plane on different crtc cannot be a scaler user of this crtc */
>  			if (drm_WARN_ON(&dev_priv->drm,
> -					intel_plane->pipe !=3D intel_crtc->pipe))
> +					intel_plane->pipe !=3D crtc->pipe))
>  				continue;
>=20=20
>  			plane_state =3D intel_atomic_get_new_plane_state(intel_state,
> @@ -540,7 +539,7 @@ int intel_atomic_setup_scalers(struct drm_i915_privat=
e *dev_priv,
>  		}
>=20=20
>  		ret =3D intel_atomic_setup_scaler(scaler_state, num_scalers_need,
> -						intel_crtc, name, idx,
> +						crtc, name, idx,
>  						plane_state, scaler_id);
>  		if (ret < 0)
>  			return ret;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/=
i915/display/skl_scaler.h
> index 63f93ca03c89..7a9ccdfd1cbb 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -21,7 +21,7 @@ int skl_update_scaler_plane(struct intel_crtc_state *cr=
tc_state,
>  			    struct intel_plane_state *plane_state);
>=20=20
>  int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> -			       struct intel_crtc *intel_crtc,
> +			       struct intel_crtc *crtc,
>  			       struct intel_crtc_state *crtc_state);
>=20=20
>  void skl_pfit_enable(const struct intel_crtc_state *crtc_state);

--=20
Jani Nikula, Intel
