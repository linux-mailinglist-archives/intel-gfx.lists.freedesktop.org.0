Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB73661EFD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 08:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D91310E057;
	Mon,  9 Jan 2023 07:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8460010E057
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 07:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673247975; x=1704783975;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hN6u3ruXGbFvymQz0ikVhzMdQ2Erl/B6dyJvYNoQrnY=;
 b=daSQGHe3lCJ4LZMf5MDglwbmeqZjBkGZOLdRLg5o2dDM/iPPQEl9T4sr
 V5gzskCFXG2NKjba+EovKL3Yj1dBjFLYeiD7AmJlP4OtVdKLY0wv1jX6h
 hsofuYxKTTIGViTIa4OmUp/d8CnVsbtOlAQKBbMqc9JXnfqcqv9N49JxY
 aLkIiyopMOnhfIHi0N7MnM6f/G4GPVqgHaTl2RRe42+Sj1OADnw/aqdnD
 vObM/nbPjnhP+stDlcHmxP5N65g6UHplH0yF0LQm7vh7131ChRDJP+Yef
 JRZZQTYrl7PIqlfyEB9js/Ka2POmUGNKpuMrHqjD/4e4z7BSb5kJckjqG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="350020904"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="350020904"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2023 23:06:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="901909889"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="901909889"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2023 23:06:14 -0800
Date: Mon, 9 Jan 2023 09:06:05 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <Y7u83SCf5CGbNZ6v@intel.com>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
 <20221223130509.43245-2-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221223130509.43245-2-luciano.coelho@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 23, 2022 at 03:05:08PM +0200, Luca Coelho wrote:
> In newer hardware versions (i.e. display version >= 14), the second
> scaler doesn't support vertical scaling.
> 
> The current implementation of the scaling limits is simplified and
> only occurs when the planes are created, so we don't know which scaler
> is being used.
> 
> In order to handle separate scaling limits for horizontal and vertical
> scaling, and different limits per scaler, split the checks in two
> phases.  We first do a simple check during plane creation and use the
> best-case scenario (because we don't know the scaler that may be used
> at a later point) and then do a more specific check when the scalers
> are actually being set up.
> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
> 
> In v2:
>    * fix DRM_PLANE_NO_SCALING renamed macros;
> 
> In v3:
>    * No changes.
> 
> In v4:
>    * Got rid of the changes in the general planes max scale code;
>    * Added a couple of FIXMEs;
>    * Made intel_atomic_setup_scaler() return an int with errors;
> 
> In v5:
>    * Just resent with a cover letter.
> 
> In v6:
>    * Now the correct version again (same as v4).
> 
> In v7:
>    * Constify a couple of local variables;
>    * Return -EINVAL, instead of -EOPNOTSUPP and -EBUSY;
>    * Add another FIXME;
>    * Remove unnecessary undoing of change in error cases.
> 
> 
>  drivers/gpu/drm/i915/display/intel_atomic.c | 85 ++++++++++++++++++---
>  1 file changed, 75 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 6621aa245caf..a9a3f3715279 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -41,6 +41,7 @@
>  #include "intel_global_state.h"
>  #include "intel_hdcp.h"
>  #include "intel_psr.h"
> +#include "intel_fb.h"
>  #include "skl_universal_plane.h"
>  
>  /**
> @@ -310,11 +311,11 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>  	kfree(crtc_state);
>  }
>  
> -static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
> -				      int num_scalers_need, struct intel_crtc *intel_crtc,
> -				      const char *name, int idx,
> -				      struct intel_plane_state *plane_state,
> -				      int *scaler_id)
> +static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
> +				     int num_scalers_need, struct intel_crtc *intel_crtc,
> +				     const char *name, int idx,
> +				     struct intel_plane_state *plane_state,
> +				     int *scaler_id)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
>  	int j;
> @@ -334,7 +335,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
>  
>  	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
>  		     "Cannot find scaler for %s:%d\n", name, idx))
> -		return;
> +		return -EINVAL;

As I understand that change is a bit irrelevant to the patch topic,
ideally it should be reflected in the commit message, that we are doing
this and most importantly why.
However I'm not going to be picky here, as it is a small thing, just
as a side note.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  
>  	/* set scaler mode */
>  	if (plane_state && plane_state->hw.fb &&
> @@ -375,9 +376,71 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
>  		mode = SKL_PS_SCALER_MODE_DYN;
>  	}
>  
> +	/*
> +	 * FIXME: we should also check the scaler factors for pfit, so
> +	 * this shouldn't be tied directly to planes.
> +	 */
> +	if (plane_state && plane_state->hw.fb) {
> +		const struct drm_framebuffer *fb = plane_state->hw.fb;
> +		const struct drm_rect *src = &plane_state->uapi.src;
> +		const struct drm_rect *dst = &plane_state->uapi.dst;
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
> +		if (DISPLAY_VER(dev_priv) >= 14) {
> +			/*
> +			 * On versions 14 and up, only the first
> +			 * scaler supports a vertical scaling factor
> +			 * of more than 1.0, while a horizontal
> +			 * scaling factor of 3.0 is supported.
> +			 */
> +			max_hscale = 0x30000 - 1;
> +			if (*scaler_id == 0)
> +				max_vscale = 0x30000 - 1;
> +			else
> +				max_vscale = 0x10000;
> +
> +		} else if (DISPLAY_VER(dev_priv) >= 10 ||
> +			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
> +			max_hscale = 0x30000 - 1;
> +			max_vscale = 0x30000 - 1;
> +		} else {
> +			max_hscale = 0x20000 - 1;
> +			max_vscale = 0x20000 - 1;
> +		}
> +
> +		/*
> +		 * FIXME: We should change the if-else block above to
> +		 * support HQ vs dynamic scaler properly.
> +		 */
> +
> +		/* Check if required scaling is within limits */
> +		hscale = drm_rect_calc_hscale(src, dst, 1, max_hscale);
> +		vscale = drm_rect_calc_vscale(src, dst, 1, max_vscale);
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
>  	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
>  		    intel_crtc->pipe, *scaler_id, name, idx);
>  	scaler_state->scalers[*scaler_id].mode = mode;
> +
> +	return 0;
>  }
>  
>  /**
> @@ -437,7 +500,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
>  	for (i = 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
>  		int *scaler_id;
>  		const char *name;
> -		int idx;
> +		int idx, ret;
>  
>  		/* skip if scaler not required */
>  		if (!(scaler_state->scaler_users & (1 << i)))
> @@ -494,9 +557,11 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
>  			scaler_id = &plane_state->scaler_id;
>  		}
>  
> -		intel_atomic_setup_scaler(scaler_state, num_scalers_need,
> -					  intel_crtc, name, idx,
> -					  plane_state, scaler_id);
> +		ret = intel_atomic_setup_scaler(scaler_state, num_scalers_need,
> +						intel_crtc, name, idx,
> +						plane_state, scaler_id);
> +		if (ret < 0)
> +			return ret;
>  	}
>  
>  	return 0;
> -- 
> 2.39.0
> 
