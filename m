Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C7CB9333B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 22:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4B010E064;
	Mon, 22 Sep 2025 20:17:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3azu7ha";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E865C10E064;
 Mon, 22 Sep 2025 20:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758572273; x=1790108273;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sOcOCCbJvZCE3xP/AQc+oRPX5l9d93VG7jEZGyyoB2w=;
 b=H3azu7ha7LgkdI3qXVS5c0mLpit09OtvEzvlNG5hjzXA/Pw7xWBB/8Xy
 aj5UuL3HUtdgjLH63tfoFKdwVNF+ErvYWhzAHVkvtrlbZO5gmuENDvcTI
 acnwZdo/oFOvYaZrgCZU7MSMmJxMT697o7IqcyKVIOmiaxfgQkpujeR1T
 jiLZnZnqqpXfDjE6ipSJTlYOlDP84t4av29HsFIrsDLfJ/OOdbHZ0Y+eH
 y1qCfKxC75J3MQ0OKxsRKUufvbN7xszkAO1zUfNtJ2feRwa3KByFiabod
 L8WEGXwbP5w57oPBvAIhhaF7O9WuREIBgJZq+Q+SFkBrXr3ajZ2AB7mIv Q==;
X-CSE-ConnectionGUID: /wZlIFOyTgmkhEdX1vvXkg==
X-CSE-MsgGUID: Qre4Ivt5RSmGzwslf3xotw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60900888"
X-IronPort-AV: E=Sophos;i="6.18,286,1751266800"; d="scan'208";a="60900888"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 13:17:52 -0700
X-CSE-ConnectionGUID: lRgbQC6MQEiGiaNretL44A==
X-CSE-MsgGUID: zcOpoNzxRSiPXOzY0CxE0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,286,1751266800"; d="scan'208";a="176140862"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 13:17:50 -0700
Date: Mon, 22 Sep 2025 23:17:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Vidya Srinivas <vidya.srinivas@intel.com>,
 Swati Sharma <swati2.sharma@intel.com>
Subject: Re: [PATCH v2 5/5] drm/i915/dp: Handle Synaptics DSC throughput
 link-bpp quirk
Message-ID: <aNGu6_6JkOKkAWpH@intel.com>
References: <20250918211223.209674-6-imre.deak@intel.com>
 <20250922134637.271999-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250922134637.271999-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Sep 22, 2025 at 04:46:37PM +0300, Imre Deak wrote:
> Handle the DSC pixel throughput quirk, limiting the compressed link-bpp
> value for Synaptics Panamera branch devices, working around a
> blank/unstable output issue observed on docking stations containing
> these branch devices, when using a mode with a high pixel clock and a
> high compressed link-bpp value.
> 
> For now use the same mode clock limit for RGB/YUV444 and YUV422/420
> output modes. This may result in limiting the link-bpp value for a
> YUV422/420 output mode already at a lower than required mode clock.
> 
> v2: Apply the quirk only when DSC is enabled.
> 
> Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Reported-by: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 58 +++++++++++++++++++
>  2 files changed, 59 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 73bdafae604f..aff63bf0f229 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -551,6 +551,7 @@ struct intel_connector {
>  		u8 fec_capability;
>  
>  		u8 dsc_hblank_expansion_quirk:1;
> +		u8 dsc_throughput_quirk:1;
>  		u8 dsc_decompression_enabled:1;
>  
>  		struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index dd082d2fcc96..5e7aea560910 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2509,6 +2509,56 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> +static void
> +adjust_limits_for_dsc_throughput_quirk(const struct intel_connector *connector,
> +				       const struct intel_crtc_state *crtc_state,
> +				       struct link_config_limits *limits)
> +{
> +	struct intel_display *display = to_intel_display(connector);
> +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	int max_bpp_x16;
> +
> +	if (!connector->dp.dsc_throughput_quirk)
> +		return;
> +
> +	/*
> +	 * Synaptics Panamera branch devices have a problem decompressing a
> +	 * stream with a compressed link-bpp higher than 12, if the pixel
> +	 * clock is higher than ~50 % of the maximum overall throughput
> +	 * reported by the branch device. Work around this by limiting the
> +	 * maximum link bpp for such pixel clocks.
> +	 *
> +	 * TODO: Use the throughput value specific to the actual RGB/YUV
> +	 * format of the output, after determining the pixel clock limit for
> +	 * YUV modes. For now use the smaller of the throughput values, which
> +	 * may result in limiting the link-bpp value already at a lower than
> +	 * required mode clock in case of native YUV422/420 output formats.
> +	 * The RGB/YUV444 throughput value should be always either equal or
> +	 * smaller than the YUV422/420 value, but let's not depend on this
> +	 * assumption.
> +	 */
> +	if (adjusted_mode->crtc_clock <
> +	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
> +		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
> +		return;
> +
> +	max_bpp_x16 = clamp(fxp_q4_from_int(12),
> +			    limits->link.min_bpp_x16, limits->link.max_bpp_x16);
> +
> +	if (max_bpp_x16 >= limits->link.max_bpp_x16)
> +		return;
> +
> +	drm_dbg_kms(display->drm,
> +		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
> +		    crtc->base.base.id, crtc->base.name,
> +		    connector->base.base.id, connector->base.name,
> +		    FXP_Q4_ARGS(max_bpp_x16));
> +
> +	limits->link.max_bpp_x16 = max_bpp_x16;
> +}
> +
>  /*
>   * Calculate the output link min, max bpp values in limits based on the pipe bpp
>   * range, crtc_state and dsc mode. Return true on success.
> @@ -2558,6 +2608,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>  
>  	limits->link.max_bpp_x16 = max_link_bpp_x16;
>  
> +	if (dsc)
> +		adjust_limits_for_dsc_throughput_quirk(connector, crtc_state, limits);

Would feel cleaner if we did this in the actual dsc==true branch above.
Maybe the actual thing that determines that max bpp should be some kind
of pure function that returns the max acceptable bpp, and then the
caller can deal with it.

Or at least move the 'limits->link.max_bpp_x16 = max_link_bpp_x16' into both
!dsc and dsc branches. That way we don't have this strange looking drop out
from the if statement just to do the single assignment, and then going back in.

> +
>  	drm_dbg_kms(display->drm,
>  		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
>  		    encoder->base.base.id, encoder->base.name,
> @@ -4272,6 +4325,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>  	connector->dp.fec_capability = 0;
>  
>  	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
> +	connector->dp.dsc_throughput_quirk = false;
>  
>  	if (dpcd_rev < DP_DPCD_REV_14)
>  		return;
> @@ -4292,6 +4346,10 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>  		return;
>  
>  	init_dsc_overall_throughput_limits(connector, is_branch);
> +
> +	if (drm_dp_has_quirk(desc, DP_DPCD_QUIRK_DSC_THROUGHPUT_BPP_LIMIT) &&
> +	    desc->ident.hw_rev == 0x10)

Rather annoying to have part of the detection here and part in the
quirk list. Can we extend the quirk framework to support hw revisions
as well?

Could be a followup.

> +		connector->dp.dsc_throughput_quirk = true;
>  }
>  
>  static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
