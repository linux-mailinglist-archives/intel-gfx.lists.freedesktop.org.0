Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A414B9143
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 20:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FA7010E268;
	Wed, 16 Feb 2022 19:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1A610E268
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 19:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645040119; x=1676576119;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=957ChqxpsAhy4042BfpbZawgbYKO9CBmsxABWuVMGrc=;
 b=T5Eu+jrwh6xYp6zKISYSXLEnyiSngdhW/ieZq8Xx2U5Pcp9aqtsG0kWP
 JDXqFjPv1ahGcOhMzTET4lhSMcJBcawRJpXWLoGmTBNpPzgL8qWlD/iKV
 VILaeUF7ZsDpZ0U0a0zsxVp+LDQ+14xx8xV1B4yWbCML7Ef9iP91sRxDX
 Ixf80y4WivL7/pUlJssIBBfw7BPzPW7O6e4kel6TRz76YRW3rxqL/WG9d
 O71gm3CX9jxi5xYmhYeZeCKz0+fRAw0Az2+2USRw0YVcn6ugbrnA/6XlT
 DfmSLs4BmJQv8i0N/rNulvokPRgb6AXvKisYwJgFlF1Gw5lUaEb3ellzF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275290292"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="275290292"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:35:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="774204945"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:35:19 -0800
Date: Wed, 16 Feb 2022 11:35:39 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220216193538.GD27285@labuser-Z97X-UD5H>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Extract
 intel_crtc_compute_pipe_src()
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

On Tue, Feb 15, 2022 at 08:32:02PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_crtc_compute_config() doesn't really tell a unified story.
> Let's chunk it up into pieces. We'll start with
> intel_crtc_compute_pipe_src().
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

with just one clarification below

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 62 ++++++++++++--------
>  1 file changed, 39 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 19417ff975c6..3d3fddd3f452 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2798,18 +2798,55 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
>  	intel_crtc_readout_derived_state(crtc_state);
>  }
>  
> +static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +
> +	if (crtc_state->bigjoiner)
> +		crtc_state->pipe_src_w /= 2;
> +
> +	/*
> +	 * Pipe horizontal size must be even in:
> +	 * - DVO ganged mode
> +	 * - LVDS dual channel mode
> +	 * - Double wide pipe
> +	 */
> +	if (crtc_state->pipe_src_w & 1) {
> +		if (crtc_state->double_wide) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[CRTC:%d:%s] Odd pipe source width not supported with double wide pipe\n",
> +				    crtc->base.base.id, crtc->base.name);
> +			return -EINVAL;
> +		}
> +
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
> +		    intel_is_dual_link_lvds(i915)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[CRTC:%d:%s] Odd pipe source width not supported with dual link LVDS\n",
> +				    crtc->base.base.id, crtc->base.name);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_crtc_compute_config(struct intel_crtc *crtc,
>  				     struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
>  	int clock_limit = i915->max_dotclk_freq;
> +	int ret;
> +
> +	ret = intel_crtc_compute_pipe_src(crtc_state);

Here crtc_state->pipe_src_w would already have been populated right?
Just wanted to double check since we are moving this earlier in the function

Manasi

> +	if (ret)
> +		return ret;
>  
>  	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
>  
>  	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
> -	if (crtc_state->bigjoiner)
> -		crtc_state->pipe_src_w /= 2;
>  
>  	intel_splitter_adjust_timings(crtc_state, pipe_mode);
>  
> @@ -2837,27 +2874,6 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
>  		return -EINVAL;
>  	}
>  
> -	/*
> -	 * Pipe horizontal size must be even in:
> -	 * - DVO ganged mode
> -	 * - LVDS dual channel mode
> -	 * - Double wide pipe
> -	 */
> -	if (crtc_state->pipe_src_w & 1) {
> -		if (crtc_state->double_wide) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Odd pipe source width not supported with double wide pipe\n");
> -			return -EINVAL;
> -		}
> -
> -		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
> -		    intel_is_dual_link_lvds(i915)) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Odd pipe source width not supported with dual link LVDS\n");
> -			return -EINVAL;
> -		}
> -	}
> -
>  	intel_crtc_compute_pixel_rate(crtc_state);
>  
>  	if (crtc_state->has_pch_encoder)
> -- 
> 2.34.1
> 
