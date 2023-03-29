Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D436D6CD8B2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 13:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D367410E521;
	Wed, 29 Mar 2023 11:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B429710E521
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 11:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680090282; x=1711626282;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RaKwWJhcxAlBsrVMoaNw5RXsqymUOTChVZYPMlx2ZYk=;
 b=Tr8nbcb4kMarvkOJsbAi5BBLB63n7RWT9X22l3HDOW49BgJsHiHkIjN+
 /ojkLx8vmPF9TI2zfUg9BYrYMqNXruJD454y86R4X1vugybxNyYWmfpBQ
 bEmOJvKkjc0/mNflR8g6L116PIALZvPuIHe6i7itPLxMeBnsfZARngOAx
 A/7tMML4W0tUTRiWWcFl4Z/mZJ0lRTtm20GBtQbOT5IPov3B+XLMiupB7
 +Ds6tsYraxg6u6bQLmzjCYfQpyGayX3UzgM2v3mc8l58S1o6EuLH52oKq
 jufOkPIGgx6gIE+RZcayz5Ia2saLyl8xLXZmVdPUIwvslqnErDIWs05aq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="427127075"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="427127075"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 04:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="827860401"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="827860401"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 29 Mar 2023 04:44:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 14:44:36 +0300
Date: Wed, 29 Mar 2023 14:44:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZCQkpHc0gRzWRm5r@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
 <20230329094532.221450-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230329094532.221450-4-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 3/6] drm/i915/psr: Implement
 Wa_14015648006
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

On Wed, Mar 29, 2023 at 12:45:29PM +0300, Jouni Högander wrote:
> PSR WM optimization should be disabled based on any wm level being
> disabled. Also same WA should be applied for ICL as well.
> 
> Bspec: 71580
> 
> v4:
>  - Handle mode change in psr enable/disable
>  - Handle wm_level_disable changes separately in pre plane hook
> v3:
>  - Split patch
> v2:
>  - set/clear chicken bit in post_plane_update
>  - apply for ICL as well
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c           | 14 +++++++++++++-
>  drivers/gpu/drm/i915/display/skl_watermark.c       |  7 +++++--
>  3 files changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ab146b5b68bd..4236ad751c2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1157,6 +1157,7 @@ struct intel_crtc_state {
>  	bool has_psr2;
>  	bool enable_psr2_sel_fetch;
>  	bool req_psr2_sdp_prior_scanline;
> +	bool wm_level_disabled;
>  	u32 dc3co_exitline;
>  	u16 su_y_granularity;
>  	struct drm_dp_vsc_sdp psr_vsc;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 26ad4365960f..9c416b301555 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1136,6 +1136,7 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
>  
>  /*
>   * Wa_16013835468
> + * Wa_14015648006
>   */
>  static void wm_optimization_wa(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
> @@ -1143,6 +1144,11 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	bool set_wa_bit = false;
>  
> +	/* Wa_14015648006 */
> +	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	    IS_DISPLAY_VER(dev_priv, 11, 13))
> +		set_wa_bit |= crtc_state->wm_level_disabled;
> +
>  	/* Wa_16013835468 */
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
> @@ -1197,6 +1203,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  
>  	/*
>  	 * Wa_16013835468
> +	 * Wa_14015648006
>  	 */
>  	wm_optimization_wa(intel_dp, crtc_state);
>  
> @@ -1374,8 +1381,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  
>  	/*
>  	 * Wa_16013835468
> +	 * Wa_14015648006
>  	 */
> -	if (DISPLAY_VER(dev_priv) >= 12)
> +	if (DISPLAY_VER(dev_priv) >= 11)
>  		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			     wa_16013835468_bit_get(intel_dp), 0);
>  
> @@ -1949,6 +1957,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  
>  		if (psr->enabled && needs_to_disable)
>  			intel_psr_disable_locked(intel_dp);
> +		else if (psr->enabled && old_crtc_state->wm_level_disabled !=
> +			 new_crtc_state->wm_level_disabled)
> +			/* Wa_14015648006 */
> +			wm_optimization_wa(intel_dp, new_crtc_state);

This can now also clear the bit, which is the wrong thing
to do in pre_plane_update().

>  
>  		mutex_unlock(&psr->lock);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index ff70225c0263..7e2e76afbf2a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2276,9 +2276,12 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
>  		return level;
>  
>  	/*
> -	 * FIXME PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
> +	 * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
>  	 * based on whether we're limited by the vblank duration.
> -	 *
> +	 */
> +	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
> +
> +	/*
>  	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
>  	 * now) perhaps?
>  	 */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
