Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 775AC7D6492
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 10:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D97A110E588;
	Wed, 25 Oct 2023 08:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 25 Oct 2023 08:08:17 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0300410E588
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698221297; x=1729757297;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HGcGDryAiuPnl/MtgNmS9QMY7mnoX+lvRps+mqWToxs=;
 b=mLfxbXC0QWc0d3IHOgxIIff/ZzmbFGI1vilCQ75MVhfZ/UpLjrBHoOPw
 ImuZ+Qypxy66qftV7JkKTVZ9ZZzJguEnfIL25dya5Ve8zx4mxlUPzPFQX
 zunuIDcnOoWDi8fS219tTJtnzWe7V7JFtE+7FksnQoIbTyB78hr964vyg
 x2YgHYVBYu6vo3lqk8ltl6tPzwAbygI/uMaY4kjvp0c0QpsZw27GeZHSw
 FmXHdKEU95bECHzK+0ArRipGftZjgzfeFMibDuGDVyE5VP9mNxfVWy8lv
 HPjX7WokjHlG+x+Ah5tJj/Eto2hIYOkRY/+LIZ/V3oK5HNYSCvH6m6dUh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="15965"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="15965"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 01:01:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882372265"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882372265"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 01:01:07 -0700
Date: Wed, 25 Oct 2023 11:01:04 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTjLQKb4cJtSnVbZ@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-20-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-20-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 19/29] drm/i915/dp: Disable FEC ready flag
 in the sink
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

On Tue, Oct 24, 2023 at 04:09:15AM +0300, Imre Deak wrote:
> Disable the FEC ready flag in the sink during a disabling modeset.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 21 +++++++++++++--------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 6f9d0f2ff3d9a..99d96762fa29c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2211,18 +2211,21 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
>  }
>  
>  static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
> -					const struct intel_crtc_state *crtc_state)
> +					const struct intel_crtc_state *crtc_state,
> +					bool enable)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
> -	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION, DP_FEC_READY) <= 0)
> -		drm_dbg_kms(&i915->drm,
> -			    "Failed to set FEC_READY in the sink\n");
> +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION,
> +			       enable ? DP_FEC_READY : 0) <= 0)
> +		drm_dbg_kms(&i915->drm, "Failed to set FEC_READY to %s in the sink\n",
> +			    enable ? "enabled" : "disabled");
>  
> -	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_STATUS,
> +	if (enable &&
> +	    drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_STATUS,
>  			       DP_FEC_DECODE_EN_DETECTED | DP_FEC_DECODE_DIS_DETECTED) <= 0)
>  		drm_dbg_kms(&i915->drm, "Failed to clear FEC detected flags\n");
>  }
> @@ -2541,7 +2544,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 * in the FEC_CONFIGURATION register to 1 before initiating link
>  	 * training
>  	 */
> -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
> +	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
>  
>  	intel_dp_check_frl_training(intel_dp);
>  	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
> @@ -2692,7 +2695,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 * in the FEC_CONFIGURATION register to 1 before initiating link
>  	 * training
>  	 */
> -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
> +	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
>  
>  	intel_dp_check_frl_training(intel_dp);
>  	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
> @@ -2768,7 +2771,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>  	intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
>  					      true);
> -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
> +	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
>  	intel_dp_start_link_train(intel_dp, crtc_state);
>  	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
>  	    !is_trans_port_sync_mode(crtc_state))
> @@ -2997,6 +3000,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_disable_ddi_buf(encoder, old_crtc_state);
>  
> +	intel_dp_sink_set_fec_ready(intel_dp, old_crtc_state, false);
> +
>  	/*
>  	 * From TGL spec: "If single stream or multi-stream master transcoder:
>  	 * Configure Transcoder Clock select to direct no clock to the
> -- 
> 2.39.2
> 
