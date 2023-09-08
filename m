Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D132E798F56
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 21:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF3110E1DB;
	Fri,  8 Sep 2023 19:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F9E10E1CD
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 19:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694201495; x=1725737495;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HVN/Cx5VPie0cNwkFKaj3wq8sPYvvRNMws2HzmSzza0=;
 b=J6Zarop4iCC/yWsIQV1I8hY+lNZQZuxPup/+lmmsZB/zN0WNE2DmzHkZ
 lanYGdMY2Rc0TdDO5gUWgh5OQmflKr29O5oUGaNVYkWqipxDXcZcTt7hQ
 nWlPaEbwvHGPRBT1huY58V1z7wYEVKptGOChEqNzSpdoc6E4ev41zuuC9
 weHqwT1FbSoWLrq10i24UX3uGAoOPNRtGIKsUvZ98lJdD6vZpu+3wnVN3
 jHOhdigh1CvPgHaqeSQQGLJZC5IN60rQzVRkwaUA6KccVyricK0KxXMVU
 Tq+3KkMPCehAfKdsfJruhFLClZcACMQ/vhMFibHj8R1v+9CdZ+EbIf6oD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="367993721"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="367993721"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 12:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832760905"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="832760905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by FMSMGA003.fm.intel.com with SMTP; 08 Sep 2023 12:31:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Sep 2023 22:31:31 +0300
Date: Fri, 8 Sep 2023 22:31:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZPt2k3xx_kVsf5vH@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230824080517.693621-8-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 07/22] drm/i915: Factor out a helper to
 check/compute all the CRTC states
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

On Thu, Aug 24, 2023 at 11:05:02AM +0300, Imre Deak wrote:
> Factor out intel_atomic_check_config() to check and compute all the CRTC
> states. This will be used by a follow up patch to recompute/check the
> state until required by BW limitations between CRTCs.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++++--------
>  1 file changed, 46 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a1956b89fd75d..dbf109a2e738f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6206,6 +6206,51 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
>  	return 0;
>  }
>  
> +static int intel_atomic_check_config(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int ret;
> +	int i;
> +
> +	ret = intel_bigjoiner_add_affected_crtcs(state);
> +	if (ret)
> +		return ret;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (!intel_crtc_needs_modeset(new_crtc_state)) {
> +			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> +				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
> +			else
> +				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
> +			continue;
> +		}
> +
> +		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
> +			drm_WARN_ON(&i915->drm, new_crtc_state->uapi.enable);
> +			continue;
> +		}
> +
> +		ret = intel_crtc_prepare_cleared_state(state, crtc);
> +		if (ret)
> +			break;
> +
> +		if (!new_crtc_state->hw.enable)
> +			continue;
> +
> +		ret = intel_modeset_pipe_config(state, crtc);
> +		if (ret)
> +			break;
> +
> +		ret = intel_atomic_check_bigjoiner(state, crtc);
> +		if (ret)
> +			break;
> +	}
> +
> +	return ret;
> +}
> +
>  /**
>   * intel_atomic_check - validate state object
>   * @dev: drm device
> @@ -6250,41 +6295,10 @@ int intel_atomic_check(struct drm_device *dev,
>  			return ret;
>  	}
>  
> -	ret = intel_bigjoiner_add_affected_crtcs(state);
> +	ret = intel_atomic_check_config(state);
>  	if (ret)
>  		goto fail;
>  
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> -		if (!intel_crtc_needs_modeset(new_crtc_state)) {
> -			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> -				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
> -			else
> -				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
> -			continue;
> -		}
> -
> -		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
> -			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
> -			continue;
> -		}
> -
> -		ret = intel_crtc_prepare_cleared_state(state, crtc);
> -		if (ret)
> -			goto fail;
> -
> -		if (!new_crtc_state->hw.enable)
> -			continue;
> -
> -		ret = intel_modeset_pipe_config(state, crtc);
> -		if (ret)
> -			goto fail;
> -
> -		ret = intel_atomic_check_bigjoiner(state, crtc);
> -		if (ret)
> -			goto fail;
> -	}
> -
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!intel_crtc_needs_modeset(new_crtc_state))
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
