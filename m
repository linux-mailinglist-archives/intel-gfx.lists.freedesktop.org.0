Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056F36A87C6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 18:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727D010E102;
	Thu,  2 Mar 2023 17:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6582510E549
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 17:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677777737; x=1709313737;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8jcVG93KEsK1vqXL+6X31Y4pis5eLPmgDL0z7xh6fTU=;
 b=KAjkwXlCQ3TK22BdFOxyqcJ0ufbb6rZnU2z/HNzP40Cfg8q8iopqWX7q
 PiWMusgt4KRmEvPWiQwMS9MHVwVktlj0Wj26MtdCRLKpgVLY0nB25KIYb
 XbIwpwhjznRgxFpJ8He+lRD0s+4Eban/tDxgVVI3PI+BcVYLBJsr5pkR6
 +Rkzn8jig6BZXEdza1ywW4D3ilyeZR9TcV96nhU7wrq/RysLE0ULS7QyM
 eT81Hh9OZNoqlb7MW0GF3Oq/o7ps+bZVl02gIctdgr9M0WaEOCuyVxvNz
 dnUBpTKLGB/42S+vczzBnsmNEsplB4bNhk0235eL2W3cjOh9Mfe/1EJNt Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="421056973"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="421056973"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 09:22:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="675035717"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="675035717"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 02 Mar 2023 09:22:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 19:22:03 +0200
Date: Thu, 2 Mar 2023 19:22:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADbOzsUe3+iGepN@intel.com>
References: <20230302164936.3034161-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230302164936.3034161-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: split out display rps parts
 to a separate file
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

On Thu, Mar 02, 2023 at 06:49:36PM +0200, Jani Nikula wrote:
> Split out the RPS parts so they can be conditionally compiled out later.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 79 ++----------------
>  .../gpu/drm/i915/display/intel_display_rps.c  | 81 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_rps.h  | 22 +++++
>  4 files changed, 111 insertions(+), 72 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_rps.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_rps.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index b2f91a1f8268..8e46f57e4569 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -239,6 +239,7 @@ i915-y += \
>  	display/intel_display_power.o \
>  	display/intel_display_power_map.o \
>  	display/intel_display_power_well.o \
> +	display/intel_display_rps.o \
>  	display/intel_dmc.o \
>  	display/intel_dpio_phy.o \
>  	display/intel_dpll.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 3bd8f7eb75a6..719a60e278f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -34,11 +34,10 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_fourcc.h>
>  
> -#include "gt/intel_rps.h"
> -
>  #include "i915_config.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_cdclk.h"
> +#include "intel_display_rps.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
> @@ -941,64 +940,6 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
>  	return 0;
>  }
>  
> -struct wait_rps_boost {
> -	struct wait_queue_entry wait;
> -
> -	struct drm_crtc *crtc;
> -	struct i915_request *request;
> -};
> -
> -static int do_rps_boost(struct wait_queue_entry *_wait,
> -			unsigned mode, int sync, void *key)
> -{
> -	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
> -	struct i915_request *rq = wait->request;
> -
> -	/*
> -	 * If we missed the vblank, but the request is already running it
> -	 * is reasonable to assume that it will complete before the next
> -	 * vblank without our intervention, so leave RPS alone.
> -	 */
> -	if (!i915_request_started(rq))
> -		intel_rps_boost(rq);
> -	i915_request_put(rq);
> -
> -	drm_crtc_vblank_put(wait->crtc);
> -
> -	list_del(&wait->wait.entry);
> -	kfree(wait);
> -	return 1;
> -}
> -
> -static void add_rps_boost_after_vblank(struct drm_crtc *crtc,
> -				       struct dma_fence *fence)
> -{
> -	struct wait_rps_boost *wait;
> -
> -	if (!dma_fence_is_i915(fence))
> -		return;
> -
> -	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
> -		return;
> -
> -	if (drm_crtc_vblank_get(crtc))
> -		return;
> -
> -	wait = kmalloc(sizeof(*wait), GFP_KERNEL);
> -	if (!wait) {
> -		drm_crtc_vblank_put(crtc);
> -		return;
> -	}
> -
> -	wait->request = to_request(dma_fence_get(fence));
> -	wait->crtc = crtc;
> -
> -	wait->wait.func = do_rps_boost;
> -	wait->wait.flags = 0;
> -
> -	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
> -}
> -
>  /**
>   * intel_prepare_plane_fb - Prepare fb for usage on plane
>   * @_plane: drm plane to prepare for
> @@ -1089,13 +1030,13 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  		dma_resv_iter_begin(&cursor, obj->base.resv,
>  				    DMA_RESV_USAGE_WRITE);
>  		dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -			add_rps_boost_after_vblank(new_plane_state->hw.crtc,
> -						   fence);
> +			intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
> +							     fence);
>  		}
>  		dma_resv_iter_end(&cursor);
>  	} else {
> -		add_rps_boost_after_vblank(new_plane_state->hw.crtc,
> -					   new_plane_state->uapi.fence);
> +		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
> +						     new_plane_state->uapi.fence);
>  	}
>  
>  	/*
> @@ -1106,10 +1047,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  	 * that are not quite steady state without resorting to forcing
>  	 * maximum clocks following a vblank miss (see do_rps_boost()).
>  	 */
> -	if (!state->rps_interactive) {
> -		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, true);
> -		state->rps_interactive = true;
> -	}
> +	intel_display_rps_mark_interactive(dev_priv, state, true);
>  
>  	return 0;
>  
> @@ -1140,10 +1078,7 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
>  	if (!obj)
>  		return;
>  
> -	if (state->rps_interactive) {
> -		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, false);
> -		state->rps_interactive = false;
> -	}
> +	intel_display_rps_mark_interactive(dev_priv, state, false);
>  
>  	/* Should only be called after a successful intel_prepare_plane_fb()! */
>  	intel_plane_unpin_fb(old_plane_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
> new file mode 100644
> index 000000000000..918d0327169a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_vblank.h>
> +
> +#include "gt/intel_rps.h"
> +#include "i915_drv.h"
> +#include "intel_display_rps.h"
> +#include "intel_display_types.h"
> +
> +struct wait_rps_boost {
> +	struct wait_queue_entry wait;
> +
> +	struct drm_crtc *crtc;
> +	struct i915_request *request;
> +};
> +
> +static int do_rps_boost(struct wait_queue_entry *_wait,
> +			unsigned mode, int sync, void *key)
> +{
> +	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
> +	struct i915_request *rq = wait->request;
> +
> +	/*
> +	 * If we missed the vblank, but the request is already running it
> +	 * is reasonable to assume that it will complete before the next
> +	 * vblank without our intervention, so leave RPS alone.
> +	 */
> +	if (!i915_request_started(rq))
> +		intel_rps_boost(rq);
> +	i915_request_put(rq);
> +
> +	drm_crtc_vblank_put(wait->crtc);
> +
> +	list_del(&wait->wait.entry);
> +	kfree(wait);
> +	return 1;
> +}
> +
> +void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
> +					  struct dma_fence *fence)
> +{
> +	struct wait_rps_boost *wait;
> +
> +	if (!dma_fence_is_i915(fence))
> +		return;
> +
> +	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
> +		return;
> +
> +	if (drm_crtc_vblank_get(crtc))
> +		return;
> +
> +	wait = kmalloc(sizeof(*wait), GFP_KERNEL);
> +	if (!wait) {
> +		drm_crtc_vblank_put(crtc);
> +		return;
> +	}
> +
> +	wait->request = to_request(dma_fence_get(fence));
> +	wait->crtc = crtc;
> +
> +	wait->wait.func = do_rps_boost;
> +	wait->wait.flags = 0;
> +
> +	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
> +}
> +
> +void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
> +					struct intel_atomic_state *state,
> +					bool interactive)
> +{
> +	if (state->rps_interactive == interactive)
> +		return;
> +
> +	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
> +	state->rps_interactive = interactive;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/gpu/drm/i915/display/intel_display_rps.h
> new file mode 100644
> index 000000000000..e19009c2371a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_RPS_H__
> +#define __INTEL_DISPLAY_RPS_H__
> +
> +#include <linux/types.h>
> +
> +struct dma_fence;
> +struct drm_crtc;
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +
> +void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
> +					  struct dma_fence *fence);
> +void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
> +					struct intel_atomic_state *state,
> +					bool interactive);
> +
> +#endif /* __INTEL_DISPLAY_RPS_H__ */
> -- 
> 2.39.1

-- 
Ville Syrjälä
Intel
