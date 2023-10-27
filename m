Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 032927D9078
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 09:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7971D10E94E;
	Fri, 27 Oct 2023 07:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6465710E94E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 07:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698393564; x=1729929564;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JJ/KqL0ct5+1Qqt7Wod4pH2Xw5QwNh3LcHapSFJQ0z8=;
 b=JNcAJJrF6fIvgvjtexL7IPqcOfikFaOCIXBYGpYbV0Wlum37+nnMRO61
 FicKkq4dc+8rLoxW+IdWeJdD6nz5orNzk1LF0MXzlArrGKGb/iHu6BFFr
 a+A46vbx6Yx8abPv4Y6A6byR6nB0CwKWu4Jtyc4Frzh/q81UJy6ryYket
 WSvCtSnkpZ3hf/+D99LyfuYmnG8a+yfPVUJ/0kECwSuJt+M12fTBeSBNh
 uqYjPdLZksAdgWnk5mYAY77p+H1U1hiNv0HfDDjhNpWE2QwEmVQypM6av
 RcjlxSCI/w+9FqB8nV2UeG79yqRrpoATLYm0q84qje52wOFje/7Bxd7NJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="454192280"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="454192280"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 00:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="850165134"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="850165134"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 00:59:22 -0700
Date: Fri, 27 Oct 2023 10:59:14 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTtt0ijtvmRNjsA0@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-21-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-21-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 20/29] drm/i915/dp_mst: Handle the Synaptics
 HBlank expansion quirk
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

On Tue, Oct 24, 2023 at 04:09:16AM +0300, Imre Deak wrote:
> The Synaptics MST hubs expose some sink EDID modes with a reduced HBLANK
> period, presumedly to save BW, which the hub expands before forwarding
> the stream to the sink. In particular a 4k mode with a standard CVT
> HBLANK period is exposed with either a CVT reduced blank RBv1 (80 pixel)
> or a non-CVT 56 pixel HBLANK period. The DP standard describes the above
> HBLANK expansion functionality, but it requires enabling this explicitly,
> whereas these hubs apply the expansion transparently.
> 
> Such modes will work okay until DSC decompression is enabled in the hub
> for the given sink, but after this the same mode will not work reliably
> in decompressed mode. As a workaround force enable DSC for such modes.
> OTOH DSC for these modes will only work above a certain compressed bpp
> threshold which depends on the link rate, so apply this limit as well
> in the workaround.
> 
> Apply the workaround only for Synaptics hubs which support the HBLANK
> expansion.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 109 +++++++++++++++++-
>  2 files changed, 107 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 65ea37fe8cff3..409dbf8a2a1cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -624,6 +624,8 @@ struct intel_connector {
>  		struct drm_dp_aux *dsc_decompression_aux;
>  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
>  		u8 fec_capability;
> +
> +		u8 dsc_hblank_expansion_quirk:1;
>  	} dp;
>  
>  	/* Work struct to schedule a uevent on link train failure */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index a1ea75cd5ea84..9124e9cdf4c79 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -345,8 +345,69 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
>  	return 0;
>  }
>  
> +static bool
> +hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +
> +	if (!connector->dp.dsc_hblank_expansion_quirk)
> +		return false;
> +
> +	if (adjusted_mode->htotal - adjusted_mode->hdisplay > 80)
> +		return false;
> +
> +	return true;
> +}
> +
> +static bool
> +adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *connector,
> +					     const struct intel_crtc_state *crtc_state,
> +					     struct link_config_limits *limits,
> +					     bool dsc)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	int min_bpp_x16 = limits->link.min_bpp_x16;
> +
> +	if (!hblank_expansion_quirk_needs_dsc(connector, crtc_state))
> +		return true;
> +
> +	if (!dsc) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC required by hblank expansion quirk\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    connector->base.base.id, connector->base.name);
> +		return false;
> +	}
> +
> +	drm_WARN_ON(&i915->drm, limits->min_rate != limits->max_rate);
> +
> +	if (limits->max_rate < 540000)
> +		min_bpp_x16 = to_bpp_x16(13);
> +	else if (limits->max_rate < 810000)
> +		min_bpp_x16 = to_bpp_x16(10);
> +
> +	if (limits->link.min_bpp_x16 < min_bpp_x16) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to " BPP_X16_FMT " due to hblank expansion quirk\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    connector->base.base.id, connector->base.name,
> +			    BPP_X16_ARGS(min_bpp_x16));
> +
> +		if (limits->link.max_bpp_x16 < min_bpp_x16)
> +			return false;
> +
> +		limits->link.min_bpp_x16 = min_bpp_x16;
> +	}
> +
> +	return true;
> +}
> +
>  static bool
>  intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
> +				   const struct intel_connector *connector,
>  				   struct intel_crtc_state *crtc_state,
>  				   bool dsc,
>  				   struct link_config_limits *limits)
> @@ -374,10 +435,16 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
>  
>  	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
>  
> -	return intel_dp_compute_config_link_bpp_limits(intel_dp,
> -						       crtc_state,
> -						       dsc,
> -						       limits);
> +	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
> +						     crtc_state,
> +						     dsc,
> +						     limits))
> +		return false;
> +
> +	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
> +							    crtc_state,
> +							    limits,
> +							    dsc);
>  }
>  
>  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> @@ -404,6 +471,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  
>  	dsc_needed = intel_dp->force_dsc_en ||
>  		     !intel_dp_mst_compute_config_limits(intel_dp,
> +							 connector,
>  							 pipe_config,
>  							 false,
>  							 &limits);
> @@ -426,6 +494,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
>  		if (!intel_dp_mst_compute_config_limits(intel_dp,
> +							connector,
>  							pipe_config,
>  							true,
>  							&limits))
> @@ -1205,6 +1274,36 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
>  	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], connector);
>  }
>  
> +static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct drm_dp_desc desc;
> +	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> +
> +	if (!connector->dp.dsc_decompression_aux)
> +		return false;
> +
> +	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux,
> +			     &desc, true) < 0)
> +		return false;
> +
> +	if (!drm_dp_has_quirk(&desc,
> +			      DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC))
> +		return false;
> +
> +	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd) < 0)
> +		return false;
> +
> +	if (!(dpcd[DP_RECEIVE_PORT_0_CAP_0] & DP_HBLANK_EXPANSION_CAPABLE))
> +		return false;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] DSC HBLANK expansion quirk detected\n",
> +		    connector->base.base.id, connector->base.name);
> +
> +	return true;
> +}
> +
>  static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
>  							struct drm_dp_mst_port *port,
>  							const char *pathprop)
> @@ -1245,6 +1344,8 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  	 */
>  	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
>  	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
> +	intel_connector->dp.dsc_hblank_expansion_quirk =
> +		detect_dsc_hblank_expansion_quirk(intel_connector);
>  
>  	for_each_pipe(dev_priv, pipe) {
>  		struct drm_encoder *enc =
> -- 
> 2.39.2
> 
