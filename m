Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C8A6E7DF7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B024810E9E7;
	Wed, 19 Apr 2023 15:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AD7210E9E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681917377; x=1713453377;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=L3Lq01PBusB9WPJxYLIwCRiERFiEEyLk6Wstwp3zRm8=;
 b=UbH/IDMPgMQarXmfQDTLnw5oPiHcbQkzcbUgO0LSnNrrxonFsZp3LJqP
 X8oH9Vqd6wJk6+D9bmxdKKmaPVxqiuyOkhu5Pns5EaEcRE+5GoYKMA1Yo
 h6VVanc5KPGINs0Zw0MbABVz45rUH2ZIE2hoadFQ800aW8I/Qv3q/ZHxL
 XITWcFNwUYAMETXkptgP9oVrzLcyF15VNkbbCLUgzs//nztyEBFdecDIG
 P8PAJBih3mbAbaqMrBpB3X0LtD3x2H1CjHBN18LdwQm89OeOiLj+uh8uC
 uTV1rKQB1YVit0PdrFRfN8/pj5A2pVwyEbZKvZMLMe9+wgyaCHF0JSZjE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="344223676"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="344223676"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="802942335"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="802942335"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:16:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-4-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:16:05 +0300
Message-ID: <87cz3zzyve.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915: Relocate
 intel_atomic_setup_scalers()
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move intel_atomic_setup_scalers() next to the other scaler
> code in skl_scaler.c.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c | 256 -------------------
>  drivers/gpu/drm/i915/display/intel_atomic.h |   4 -
>  drivers/gpu/drm/i915/display/skl_scaler.c   | 257 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h   |  10 +-
>  4 files changed, 265 insertions(+), 262 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 61011641f6ab..7cf51dd8c056 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -310,262 +310,6 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>  	kfree(crtc_state);
>  }
>=20=20
> -static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *sca=
ler_state,
> -				     int num_scalers_need, struct intel_crtc *intel_crtc,
> -				     const char *name, int idx,
> -				     struct intel_plane_state *plane_state,
> -				     int *scaler_id)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> -	int j;
> -	u32 mode;
> -
> -	if (*scaler_id < 0) {
> -		/* find a free scaler */
> -		for (j =3D 0; j < intel_crtc->num_scalers; j++) {
> -			if (scaler_state->scalers[j].in_use)
> -				continue;
> -
> -			*scaler_id =3D j;
> -			scaler_state->scalers[*scaler_id].in_use =3D 1;
> -			break;
> -		}
> -	}
> -
> -	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
> -		     "Cannot find scaler for %s:%d\n", name, idx))
> -		return -EINVAL;
> -
> -	/* set scaler mode */
> -	if (plane_state && plane_state->hw.fb &&
> -	    plane_state->hw.fb->format->is_yuv &&
> -	    plane_state->hw.fb->format->num_planes > 1) {
> -		struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -		if (DISPLAY_VER(dev_priv) =3D=3D 9) {
> -			mode =3D SKL_PS_SCALER_MODE_NV12;
> -		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
> -			/*
> -			 * On gen11+'s HDR planes we only use the scaler for
> -			 * scaling. They have a dedicated chroma upsampler, so
> -			 * we don't need the scaler to upsample the UV plane.
> -			 */
> -			mode =3D PS_SCALER_MODE_NORMAL;
> -		} else {
> -			struct intel_plane *linked =3D
> -				plane_state->planar_linked_plane;
> -
> -			mode =3D PS_SCALER_MODE_PLANAR;
> -
> -			if (linked)
> -				mode |=3D PS_PLANE_Y_SEL(linked->id);
> -		}
> -	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
> -		mode =3D PS_SCALER_MODE_NORMAL;
> -	} else if (num_scalers_need =3D=3D 1 && intel_crtc->num_scalers > 1) {
> -		/*
> -		 * when only 1 scaler is in use on a pipe with 2 scalers
> -		 * scaler 0 operates in high quality (HQ) mode.
> -		 * In this case use scaler 0 to take advantage of HQ mode
> -		 */
> -		scaler_state->scalers[*scaler_id].in_use =3D 0;
> -		*scaler_id =3D 0;
> -		scaler_state->scalers[0].in_use =3D 1;
> -		mode =3D SKL_PS_SCALER_MODE_HQ;
> -	} else {
> -		mode =3D SKL_PS_SCALER_MODE_DYN;
> -	}
> -
> -	/*
> -	 * FIXME: we should also check the scaler factors for pfit, so
> -	 * this shouldn't be tied directly to planes.
> -	 */
> -	if (plane_state && plane_state->hw.fb) {
> -		const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -		const struct drm_rect *src =3D &plane_state->uapi.src;
> -		const struct drm_rect *dst =3D &plane_state->uapi.dst;
> -		int hscale, vscale, max_vscale, max_hscale;
> -
> -		/*
> -		 * FIXME: When two scalers are needed, but only one of
> -		 * them needs to downscale, we should make sure that
> -		 * the one that needs downscaling support is assigned
> -		 * as the first scaler, so we don't reject downscaling
> -		 * unnecessarily.
> -		 */
> -
> -		if (DISPLAY_VER(dev_priv) >=3D 14) {
> -			/*
> -			 * On versions 14 and up, only the first
> -			 * scaler supports a vertical scaling factor
> -			 * of more than 1.0, while a horizontal
> -			 * scaling factor of 3.0 is supported.
> -			 */
> -			max_hscale =3D 0x30000 - 1;
> -			if (*scaler_id =3D=3D 0)
> -				max_vscale =3D 0x30000 - 1;
> -			else
> -				max_vscale =3D 0x10000;
> -
> -		} else if (DISPLAY_VER(dev_priv) >=3D 10 ||
> -			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
> -			max_hscale =3D 0x30000 - 1;
> -			max_vscale =3D 0x30000 - 1;
> -		} else {
> -			max_hscale =3D 0x20000 - 1;
> -			max_vscale =3D 0x20000 - 1;
> -		}
> -
> -		/*
> -		 * FIXME: We should change the if-else block above to
> -		 * support HQ vs dynamic scaler properly.
> -		 */
> -
> -		/* Check if required scaling is within limits */
> -		hscale =3D drm_rect_calc_hscale(src, dst, 1, max_hscale);
> -		vscale =3D drm_rect_calc_vscale(src, dst, 1, max_vscale);
> -
> -		if (hscale < 0 || vscale < 0) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Scaler %d doesn't support required plane scaling\n",
> -				    *scaler_id);
> -			drm_rect_debug_print("src: ", src, true);
> -			drm_rect_debug_print("dst: ", dst, false);
> -
> -			return -EINVAL;
> -		}
> -	}
> -
> -	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
> -		    intel_crtc->pipe, *scaler_id, name, idx);
> -	scaler_state->scalers[*scaler_id].mode =3D mode;
> -
> -	return 0;
> -}
> -
> -/**
> - * intel_atomic_setup_scalers() - setup scalers for crtc per staged requ=
ests
> - * @dev_priv: i915 device
> - * @intel_crtc: intel crtc
> - * @crtc_state: incoming crtc_state to validate and setup scalers
> - *
> - * This function sets up scalers based on staged scaling requests for
> - * a @crtc and its planes. It is called from crtc level check path. If r=
equest
> - * is a supportable request, it attaches scalers to requested planes and=
 crtc.
> - *
> - * This function takes into account the current scaler(s) in use by any =
planes
> - * not being part of this atomic state
> - *
> - *  Returns:
> - *         0 - scalers were setup succesfully
> - *         error code - otherwise
> - */
> -int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> -			       struct intel_crtc *intel_crtc,
> -			       struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_plane *plane =3D NULL;
> -	struct intel_plane *intel_plane;
> -	struct intel_plane_state *plane_state =3D NULL;
> -	struct intel_crtc_scaler_state *scaler_state =3D
> -		&crtc_state->scaler_state;
> -	struct drm_atomic_state *drm_state =3D crtc_state->uapi.state;
> -	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(drm_st=
ate);
> -	int num_scalers_need;
> -	int i;
> -
> -	num_scalers_need =3D hweight32(scaler_state->scaler_users);
> -
> -	/*
> -	 * High level flow:
> -	 * - staged scaler requests are already in scaler_state->scaler_users
> -	 * - check whether staged scaling requests can be supported
> -	 * - add planes using scalers that aren't in current transaction
> -	 * - assign scalers to requested users
> -	 * - as part of plane commit, scalers will be committed
> -	 *   (i.e., either attached or detached) to respective planes in hw
> -	 * - as part of crtc_commit, scaler will be either attached or detached
> -	 *   to crtc in hw
> -	 */
> -
> -	/* fail if required scalers > available scalers */
> -	if (num_scalers_need > intel_crtc->num_scalers){
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Too many scaling requests %d > %d\n",
> -			    num_scalers_need, intel_crtc->num_scalers);
> -		return -EINVAL;
> -	}
> -
> -	/* walkthrough scaler_users bits and start assigning scalers */
> -	for (i =3D 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
> -		int *scaler_id;
> -		const char *name;
> -		int idx, ret;
> -
> -		/* skip if scaler not required */
> -		if (!(scaler_state->scaler_users & (1 << i)))
> -			continue;
> -
> -		if (i =3D=3D SKL_CRTC_INDEX) {
> -			name =3D "CRTC";
> -			idx =3D intel_crtc->base.base.id;
> -
> -			/* panel fitter case: assign as a crtc scaler */
> -			scaler_id =3D &scaler_state->scaler_id;
> -		} else {
> -			name =3D "PLANE";
> -
> -			/* plane scaler case: assign as a plane scaler */
> -			/* find the plane that set the bit as scaler_user */
> -			plane =3D drm_state->planes[i].ptr;
> -
> -			/*
> -			 * to enable/disable hq mode, add planes that are using scaler
> -			 * into this transaction
> -			 */
> -			if (!plane) {
> -				struct drm_plane_state *state;
> -
> -				/*
> -				 * GLK+ scalers don't have a HQ mode so it
> -				 * isn't necessary to change between HQ and dyn mode
> -				 * on those platforms.
> -				 */
> -				if (DISPLAY_VER(dev_priv) >=3D 10)
> -					continue;
> -
> -				plane =3D drm_plane_from_index(&dev_priv->drm, i);
> -				state =3D drm_atomic_get_plane_state(drm_state, plane);
> -				if (IS_ERR(state)) {
> -					drm_dbg_kms(&dev_priv->drm,
> -						    "Failed to add [PLANE:%d] to drm_state\n",
> -						    plane->base.id);
> -					return PTR_ERR(state);
> -				}
> -			}
> -
> -			intel_plane =3D to_intel_plane(plane);
> -			idx =3D plane->base.id;
> -
> -			/* plane on different crtc cannot be a scaler user of this crtc */
> -			if (drm_WARN_ON(&dev_priv->drm,
> -					intel_plane->pipe !=3D intel_crtc->pipe))
> -				continue;
> -
> -			plane_state =3D intel_atomic_get_new_plane_state(intel_state,
> -								       intel_plane);
> -			scaler_id =3D &plane_state->scaler_id;
> -		}
> -
> -		ret =3D intel_atomic_setup_scaler(scaler_state, num_scalers_need,
> -						intel_crtc, name, idx,
> -						plane_state, scaler_id);
> -		if (ret < 0)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
>  struct drm_atomic_state *
>  intel_atomic_state_alloc(struct drm_device *dev)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 1dc439983dd9..e506f6a87344 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -52,8 +52,4 @@ struct intel_crtc_state *
>  intel_atomic_get_crtc_state(struct drm_atomic_state *state,
>  			    struct intel_crtc *crtc);
>=20=20
> -int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> -			       struct intel_crtc *intel_crtc,
> -			       struct intel_crtc_state *crtc_state);
> -
>  #endif /* __INTEL_ATOMIC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 0e7e014fcc71..62443834f64e 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -348,6 +348,263 @@ int skl_update_scaler_plane(struct intel_crtc_state=
 *crtc_state,
>  	return 0;
>  }
>=20=20
> +static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *sca=
ler_state,
> +				     int num_scalers_need, struct intel_crtc *intel_crtc,
> +				     const char *name, int idx,
> +				     struct intel_plane_state *plane_state,
> +				     int *scaler_id)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> +	int j;
> +	u32 mode;
> +
> +	if (*scaler_id < 0) {
> +		/* find a free scaler */
> +		for (j =3D 0; j < intel_crtc->num_scalers; j++) {
> +			if (scaler_state->scalers[j].in_use)
> +				continue;
> +
> +			*scaler_id =3D j;
> +			scaler_state->scalers[*scaler_id].in_use =3D 1;
> +			break;
> +		}
> +	}
> +
> +	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
> +		     "Cannot find scaler for %s:%d\n", name, idx))
> +		return -EINVAL;
> +
> +	/* set scaler mode */
> +	if (plane_state && plane_state->hw.fb &&
> +	    plane_state->hw.fb->format->is_yuv &&
> +	    plane_state->hw.fb->format->num_planes > 1) {
> +		struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +
> +		if (DISPLAY_VER(dev_priv) =3D=3D 9) {
> +			mode =3D SKL_PS_SCALER_MODE_NV12;
> +		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
> +			/*
> +			 * On gen11+'s HDR planes we only use the scaler for
> +			 * scaling. They have a dedicated chroma upsampler, so
> +			 * we don't need the scaler to upsample the UV plane.
> +			 */
> +			mode =3D PS_SCALER_MODE_NORMAL;
> +		} else {
> +			struct intel_plane *linked =3D
> +				plane_state->planar_linked_plane;
> +
> +			mode =3D PS_SCALER_MODE_PLANAR;
> +
> +			if (linked)
> +				mode |=3D PS_PLANE_Y_SEL(linked->id);
> +		}
> +	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
> +		mode =3D PS_SCALER_MODE_NORMAL;
> +	} else if (num_scalers_need =3D=3D 1 && intel_crtc->num_scalers > 1) {
> +		/*
> +		 * when only 1 scaler is in use on a pipe with 2 scalers
> +		 * scaler 0 operates in high quality (HQ) mode.
> +		 * In this case use scaler 0 to take advantage of HQ mode
> +		 */
> +		scaler_state->scalers[*scaler_id].in_use =3D 0;
> +		*scaler_id =3D 0;
> +		scaler_state->scalers[0].in_use =3D 1;
> +		mode =3D SKL_PS_SCALER_MODE_HQ;
> +	} else {
> +		mode =3D SKL_PS_SCALER_MODE_DYN;
> +	}
> +
> +	/*
> +	 * FIXME: we should also check the scaler factors for pfit, so
> +	 * this shouldn't be tied directly to planes.
> +	 */
> +	if (plane_state && plane_state->hw.fb) {
> +		const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +		const struct drm_rect *src =3D &plane_state->uapi.src;
> +		const struct drm_rect *dst =3D &plane_state->uapi.dst;
> +		int hscale, vscale, max_vscale, max_hscale;
> +
> +		/*
> +		 * FIXME: When two scalers are needed, but only one of
> +		 * them needs to downscale, we should make sure that
> +		 * the one that needs downscaling support is assigned
> +		 * as the first scaler, so we don't reject downscaling
> +		 * unnecessarily.
> +		 */
> +
> +		if (DISPLAY_VER(dev_priv) >=3D 14) {
> +			/*
> +			 * On versions 14 and up, only the first
> +			 * scaler supports a vertical scaling factor
> +			 * of more than 1.0, while a horizontal
> +			 * scaling factor of 3.0 is supported.
> +			 */
> +			max_hscale =3D 0x30000 - 1;
> +			if (*scaler_id =3D=3D 0)
> +				max_vscale =3D 0x30000 - 1;
> +			else
> +				max_vscale =3D 0x10000;
> +
> +		} else if (DISPLAY_VER(dev_priv) >=3D 10 ||
> +			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
> +			max_hscale =3D 0x30000 - 1;
> +			max_vscale =3D 0x30000 - 1;
> +		} else {
> +			max_hscale =3D 0x20000 - 1;
> +			max_vscale =3D 0x20000 - 1;
> +		}
> +
> +		/*
> +		 * FIXME: We should change the if-else block above to
> +		 * support HQ vs dynamic scaler properly.
> +		 */
> +
> +		/* Check if required scaling is within limits */
> +		hscale =3D drm_rect_calc_hscale(src, dst, 1, max_hscale);
> +		vscale =3D drm_rect_calc_vscale(src, dst, 1, max_vscale);
> +
> +		if (hscale < 0 || vscale < 0) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Scaler %d doesn't support required plane scaling\n",
> +				    *scaler_id);
> +			drm_rect_debug_print("src: ", src, true);
> +			drm_rect_debug_print("dst: ", dst, false);
> +
> +			return -EINVAL;
> +		}
> +	}
> +
> +	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
> +		    intel_crtc->pipe, *scaler_id, name, idx);
> +	scaler_state->scalers[*scaler_id].mode =3D mode;
> +
> +	return 0;
> +}
> +
> +/**
> + * intel_atomic_setup_scalers() - setup scalers for crtc per staged requ=
ests
> + * @dev_priv: i915 device
> + * @intel_crtc: intel crtc
> + * @crtc_state: incoming crtc_state to validate and setup scalers
> + *
> + * This function sets up scalers based on staged scaling requests for
> + * a @crtc and its planes. It is called from crtc level check path. If r=
equest
> + * is a supportable request, it attaches scalers to requested planes and=
 crtc.
> + *
> + * This function takes into account the current scaler(s) in use by any =
planes
> + * not being part of this atomic state
> + *
> + *  Returns:
> + *         0 - scalers were setup successfully
> + *         error code - otherwise
> + */
> +int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> +			       struct intel_crtc *intel_crtc,
> +			       struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_plane *plane =3D NULL;
> +	struct intel_plane *intel_plane;
> +	struct intel_plane_state *plane_state =3D NULL;
> +	struct intel_crtc_scaler_state *scaler_state =3D
> +		&crtc_state->scaler_state;
> +	struct drm_atomic_state *drm_state =3D crtc_state->uapi.state;
> +	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(drm_st=
ate);
> +	int num_scalers_need;
> +	int i;
> +
> +	num_scalers_need =3D hweight32(scaler_state->scaler_users);
> +
> +	/*
> +	 * High level flow:
> +	 * - staged scaler requests are already in scaler_state->scaler_users
> +	 * - check whether staged scaling requests can be supported
> +	 * - add planes using scalers that aren't in current transaction
> +	 * - assign scalers to requested users
> +	 * - as part of plane commit, scalers will be committed
> +	 *   (i.e., either attached or detached) to respective planes in hw
> +	 * - as part of crtc_commit, scaler will be either attached or detached
> +	 *   to crtc in hw
> +	 */
> +
> +	/* fail if required scalers > available scalers */
> +	if (num_scalers_need > intel_crtc->num_scalers) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Too many scaling requests %d > %d\n",
> +			    num_scalers_need, intel_crtc->num_scalers);
> +		return -EINVAL;
> +	}
> +
> +	/* walkthrough scaler_users bits and start assigning scalers */
> +	for (i =3D 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
> +		int *scaler_id;
> +		const char *name;
> +		int idx, ret;
> +
> +		/* skip if scaler not required */
> +		if (!(scaler_state->scaler_users & (1 << i)))
> +			continue;
> +
> +		if (i =3D=3D SKL_CRTC_INDEX) {
> +			name =3D "CRTC";
> +			idx =3D intel_crtc->base.base.id;
> +
> +			/* panel fitter case: assign as a crtc scaler */
> +			scaler_id =3D &scaler_state->scaler_id;
> +		} else {
> +			name =3D "PLANE";
> +
> +			/* plane scaler case: assign as a plane scaler */
> +			/* find the plane that set the bit as scaler_user */
> +			plane =3D drm_state->planes[i].ptr;
> +
> +			/*
> +			 * to enable/disable hq mode, add planes that are using scaler
> +			 * into this transaction
> +			 */
> +			if (!plane) {
> +				struct drm_plane_state *state;
> +
> +				/*
> +				 * GLK+ scalers don't have a HQ mode so it
> +				 * isn't necessary to change between HQ and dyn mode
> +				 * on those platforms.
> +				 */
> +				if (DISPLAY_VER(dev_priv) >=3D 10)
> +					continue;
> +
> +				plane =3D drm_plane_from_index(&dev_priv->drm, i);
> +				state =3D drm_atomic_get_plane_state(drm_state, plane);
> +				if (IS_ERR(state)) {
> +					drm_dbg_kms(&dev_priv->drm,
> +						    "Failed to add [PLANE:%d] to drm_state\n",
> +						    plane->base.id);
> +					return PTR_ERR(state);
> +				}
> +			}
> +
> +			intel_plane =3D to_intel_plane(plane);
> +			idx =3D plane->base.id;
> +
> +			/* plane on different crtc cannot be a scaler user of this crtc */
> +			if (drm_WARN_ON(&dev_priv->drm,
> +					intel_plane->pipe !=3D intel_crtc->pipe))
> +				continue;
> +
> +			plane_state =3D intel_atomic_get_new_plane_state(intel_state,
> +								       intel_plane);
> +			scaler_id =3D &plane_state->scaler_id;
> +		}
> +
> +		ret =3D intel_atomic_setup_scaler(scaler_state, num_scalers_need,
> +						intel_crtc, name, idx,
> +						plane_state, scaler_id);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int glk_coef_tap(int i)
>  {
>  	return i % 7;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/=
i915/display/skl_scaler.h
> index 0097d5d08e10..f040f6ac061f 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -8,17 +8,22 @@
>  #include <linux/types.h>
>=20=20
>  enum drm_scaling_filter;
> +enum pipe;
>  struct drm_i915_private;
> +struct intel_crtc;
>  struct intel_crtc_state;
> -struct intel_plane_state;
>  struct intel_plane;
> -enum pipe;
> +struct intel_plane_state;
>=20=20
>  int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
>=20=20
>  int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
>  			    struct intel_plane_state *plane_state);
>=20=20
> +int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> +			       struct intel_crtc *intel_crtc,
> +			       struct intel_crtc_state *crtc_state);
> +
>  void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
>=20=20
>  void skl_program_plane_scaler(struct intel_plane *plane,
> @@ -26,4 +31,5 @@ void skl_program_plane_scaler(struct intel_plane *plane,
>  			      const struct intel_plane_state *plane_state);
>  void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
>  void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
> +
>  #endif

--=20
Jani Nikula, Intel Open Source Graphics Center
