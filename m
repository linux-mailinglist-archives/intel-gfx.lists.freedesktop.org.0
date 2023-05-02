Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B38BA6F44E1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 15:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4489310E1A4;
	Tue,  2 May 2023 13:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AEF510E1A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683033545; x=1714569545;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LBCUmWwO40adfKQbaTNjB8avXIqrF3t5mAaT2RVhLFE=;
 b=LH8rrVhX6aHJ3lBm7eyWvjMtOhOTjLn45R/RH6kX/Eu7CsRX23jvYizJ
 BKa2dYjVw3Tx6MjoeU9/aZXzW3py27DDv6N3un+2ts6ngI3OsRn4/U/8d
 4fXLb+D3xprZulnmamLY/ntnuC4qpFPqjh7W4lyeAVm2AFDOj1DSWXe8q
 ouh0FpRuavHSGDgKqOscJDzPdgEE+FFnUsw+XzbER8SGoJX7CPpzWojlE
 x8dyp42znuWJf9V69sdxHcBL6XoAwKiGx37LV5vecPC9FfgA4ITgENp7Z
 Xbkost72q/EY2sNg1ewmEW8bNvTrWixeNg30Xs5g1+tfDEgp4O7J+xUB8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="411536069"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="411536069"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 06:19:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="698967500"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="698967500"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 06:19:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230425025944.151744-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230417100021.3205172-1-arun.r.murthy@intel.com>
 <20230425025944.151744-1-arun.r.murthy@intel.com>
Date: Tue, 02 May 2023 16:18:59 +0300
Message-ID: <87lei627ng.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display/dp: 128/132b LT
 requirement
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

On Tue, 25 Apr 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> For 128b/132b LT prior to LT DPTX should set power state, DP channel
> coding and then link rate.
>
> v2: added separate function to avoid code duplication(Jani N)
> v3: DP2.1 section 3.5.2.16 is ordered, 3.5.1.2 is unordered and hence
>     discarding <Ville>
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.


> ---
>  .../drm/i915/display/intel_dp_link_training.c | 56 +++++++++++++------
>  1 file changed, 38 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 6aa4ae5e7ebe..27eb41499d7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -637,6 +637,37 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> +static void
> +intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
> +				const struct intel_crtc_state *crtc_state)
> +{
> +	u8 link_config[2];
> +
> +	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> +	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
> +			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> +	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
> +}
> +
> +static void
> +intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
> +			    const struct intel_crtc_state *crtc_state,
> +			    u8 link_bw, u8 rate_select)
> +{
> +	u8 link_config[2];
> +
> +	/* Write the link configuration data */
> +	link_config[0] = link_bw;
> +	link_config[1] = crtc_state->lane_count;
> +	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> +		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> +	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
> +	/* eDP 1.4 rate select method. */
> +	if (!link_bw)
> +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> +				  &rate_select, 1);
> +}
> +
>  /*
>   * Prepare link training by configuring the link parameters. On DDI platforms
>   * also enable the port here.
> @@ -647,7 +678,6 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	u8 link_config[2];
>  	u8 link_bw, rate_select;
>  
>  	if (intel_dp->prepare_link_retrain)
> @@ -686,23 +716,13 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
>  		drm_dbg_kms(&i915->drm,
>  			    "[ENCODER:%d:%s] Using LINK_RATE_SET value %02x\n",
>  			    encoder->base.base.id, encoder->base.name, rate_select);
> -
> -	/* Write the link configuration data */
> -	link_config[0] = link_bw;
> -	link_config[1] = crtc_state->lane_count;
> -	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> -		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> -	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
> -
> -	/* eDP 1.4 rate select method. */
> -	if (!link_bw)
> -		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> -				  &rate_select, 1);
> -
> -	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> -	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
> -		DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> -	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
> +	/*
> +	 * Spec DP2.1 Section 3.5.2.16
> +	 * Prior to LT DPTX should set 128b/132b DP Channel coding and then set link rate
> +	 */
> +	intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
> +	intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
> +				    rate_select);
>  
>  	return true;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
