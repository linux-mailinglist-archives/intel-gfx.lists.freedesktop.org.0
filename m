Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7227446F26B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893AD10E1F0;
	Thu,  9 Dec 2021 17:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E51010E1F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:45:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="236902577"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="236902577"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:45:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="503584439"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 09 Dec 2021 09:45:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 19:45:51 +0200
Date: Thu, 9 Dec 2021 19:45:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbJAzzZF2wYF7b5i@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
 <43ad4d437121f43d76c790ac5d4d131743d58988.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <43ad4d437121f43d76c790ac5d4d131743d58988.1639068649.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/cdclk: move
 intel_atomic_check_cdclk() to intel_cdclk.c
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

On Thu, Dec 09, 2021 at 06:51:22PM +0200, Jani Nikula wrote:
> Rename to intel_cdclk_atomic_check() and make
> intel_cdclk_bw_calc_min_cdclk() static.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 55 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cdclk.h   |  3 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 55 +-------------------
>  3 files changed, 57 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 639a64733f61..a216a350006d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -24,6 +24,7 @@
>  #include <linux/time.h>
>  
>  #include "intel_atomic.h"
> +#include "intel_atomic_plane.h"
>  #include "intel_audio.h"
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
> @@ -68,7 +69,7 @@ void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
>  	dev_priv->cdclk_funcs->get_cdclk(dev_priv, cdclk_config);
>  }
>  
> -int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
> +static int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	return dev_priv->cdclk_funcs->bw_calc_min_cdclk(state);
> @@ -2629,6 +2630,58 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
>  	return to_intel_cdclk_state(cdclk_state);
>  }
>  
> +int intel_cdclk_atomic_check(struct intel_atomic_state *state,
> +			     bool *need_cdclk_calc)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_cdclk_state *old_cdclk_state;
> +	const struct intel_cdclk_state *new_cdclk_state;
> +	struct intel_plane_state *plane_state;
> +	struct intel_bw_state *new_bw_state;
> +	struct intel_plane *plane;
> +	int min_cdclk = 0;
> +	enum pipe pipe;
> +	int ret;
> +	int i;
> +
> +	/*
> +	 * active_planes bitmask has been updated, and potentially affected
> +	 * planes are part of the state. We can now compute the minimum cdclk
> +	 * for each plane.
> +	 */
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		ret = intel_plane_calc_min_cdclk(state, plane, need_cdclk_calc);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
> +	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
> +
> +	if (new_cdclk_state &&
> +	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
> +		*need_cdclk_calc = true;
> +
> +	ret = intel_cdclk_bw_calc_min_cdclk(state);
> +	if (ret)
> +		return ret;
> +
> +	new_bw_state = intel_atomic_get_new_bw_state(state);
> +
> +	if (!new_cdclk_state || !new_bw_state)
> +		return 0;
> +
> +	for_each_pipe(i915, pipe) {
> +		min_cdclk = max(new_cdclk_state->min_cdclk[pipe], min_cdclk);
> +
> +		/* Currently do this change only if we need to increase */
> +		if (new_bw_state->min_cdclk > min_cdclk)
> +			*need_cdclk_calc = true;
> +	}
> +
> +	return 0;
> +}
> +
>  int intel_cdclk_init(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_cdclk_state *cdclk_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 89ca59c46102..bb3a778c506b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -71,7 +71,8 @@ void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_config,
>  int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
>  void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
>  			   struct intel_cdclk_config *cdclk_config);
> -int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state);
> +int intel_cdclk_atomic_check(struct intel_atomic_state *state,
> +			     bool *need_cdclk_calc);
>  struct intel_cdclk_state *
>  intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 576196ff7da1..578f50bd6ab7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7554,59 +7554,6 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  	return 0;
>  }
>  
> -static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
> -				    bool *need_cdclk_calc)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> -	const struct intel_cdclk_state *old_cdclk_state;
> -	const struct intel_cdclk_state *new_cdclk_state;
> -	struct intel_plane_state *plane_state;
> -	struct intel_bw_state *new_bw_state;
> -	struct intel_plane *plane;
> -	int min_cdclk = 0;
> -	enum pipe pipe;
> -	int ret;
> -	int i;
> -	/*
> -	 * active_planes bitmask has been updated, and potentially
> -	 * affected planes are part of the state. We can now
> -	 * compute the minimum cdclk for each plane.
> -	 */
> -	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> -		ret = intel_plane_calc_min_cdclk(state, plane, need_cdclk_calc);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
> -	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
> -
> -	if (new_cdclk_state &&
> -	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
> -		*need_cdclk_calc = true;
> -
> -	ret = intel_cdclk_bw_calc_min_cdclk(state);
> -	if (ret)
> -		return ret;
> -
> -	new_bw_state = intel_atomic_get_new_bw_state(state);
> -
> -	if (!new_cdclk_state || !new_bw_state)
> -		return 0;
> -
> -	for_each_pipe(dev_priv, pipe) {
> -		min_cdclk = max(new_cdclk_state->min_cdclk[pipe], min_cdclk);
> -
> -		/*
> -		 * Currently do this change only if we need to increase
> -		 */
> -		if (new_bw_state->min_cdclk > min_cdclk)
> -			*need_cdclk_calc = true;
> -	}
> -
> -	return 0;
> -}
> -
>  static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
>  {
>  	struct intel_crtc_state *crtc_state;
> @@ -8055,7 +8002,7 @@ static int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>  
> -	ret = intel_atomic_check_cdclk(state, &any_ms);
> +	ret = intel_cdclk_atomic_check(state, &any_ms);
>  	if (ret)
>  		goto fail;
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
