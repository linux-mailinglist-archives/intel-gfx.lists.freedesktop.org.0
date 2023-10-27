Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E327D9C02
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 16:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E202110E9C5;
	Fri, 27 Oct 2023 14:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8C910E9C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 14:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698418041; x=1729954041;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IIarP4g56zlWNJOXfLdo2u0iNf0BlHVGPO6IiR+NKZ4=;
 b=a0E8V0rmr7PmKwn0u1KFtg7infDUh1YMVWok/eNVJhOv+Ia1dOWLMOcz
 xFzoRtLS9+WHln1ZDgqvkpZvQonOE15i0f8hi5feFPurnrIQpERGZdwJc
 2hDn7UYCkaHugmZe1ARK2jSIZMI3ABddjPAFAHjk8TLPk0OvAE73oeE7B
 TQ+TXFusd3NrwrrydXGu7pkiXt4JScEZfSCqxRdapTMpVCw+FmI/BvylH
 HtO04VH9PLJKMHusMG/WzByBvSmrY++Xkl4bpICyfD122JxKvR4CCDtOL
 K/RkSPPdwnkyN/NNuQWh6OUd6045awHCepu2Yulw2CwiaO0akcB24oqX1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="474025729"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="474025729"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="850254812"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="850254812"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:47:20 -0700
Date: Fri, 27 Oct 2023 17:47:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTvNdRcd/ZMnlMp0@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-13-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-13-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 12/29] drm/i915/dp_mst: Account for FEC and
 DSC overhead during BW allocation
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

On Tue, Oct 24, 2023 at 04:09:08AM +0300, Imre Deak wrote:
> Atm, the BW allocated for an MST stream doesn't take into account the
> DSC control symbol (EOC) and data alignment overhead on the local (first
> downstream) MST link (reflected by the data M/N/TU values) and - besides
> the above overheads - the FEC symbol overhead on 8b/10b remote
> (after a downstream branch device) MST links.
> 
> In addition the FEC overhead used on the local link is a fixed amount,
> which only applies to certain modes, but not enough for all modes; add a
> code comment clarifying this.
> 
> Fix the above by calculating the data M/N values with the total BW
> overhead (not including the SSC overhead, since this isn't enabled by
> the source device) and using this the PBN and TU values for the local
> link and PBN for remote links (including SSC, since this is mandatory
> for links after downstream branch devices).
> 
> For now keep the current fixed FEC overhead as a minimum, since this is
> what bspec requires for audio functionality.
> 
> Calculate the effective link BW in a clearer way, applying the channel
> coding efficiency based on the coding type. The calculation was correct
> for 8b/10b, but not for 128b/132b links; this patch leaves the behavior
> for this unchanged, leaving the fix for a follow-up.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 99 +++++++++++++++------
>  1 file changed, 74 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index da496f383f163..2fbb6022e0c25 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -66,6 +66,63 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>  	return 0;
>  }
>  
> +static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
> +				    const struct intel_connector *connector,
> +				    bool ssc, bool dsc, int bpp)
> +{
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
> +	int dsc_slice_count = 0;
> +	int overhead;
> +
> +	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
> +	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC : 0;
> +	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
> +
> +	if (dsc) {
> +		flags |= DRM_DP_BW_OVERHEAD_DSC;
> +		/* TODO: add support for bigjoiner */
> +		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
> +							       adjusted_mode->clock,
> +							       adjusted_mode->hdisplay,
> +							       false);
> +	}
> +
> +	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
> +				      adjusted_mode->hdisplay,
> +				      dsc_slice_count,
> +				      to_bpp_x16(bpp),
> +				      flags);
> +
> +	/*
> +	 * TODO: clarify whether a minimum required by the fixed FEC overhead
> +	 * in the bspec audio programming sequence is required here.
> +	 */
> +	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
> +}
> +
> +static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
> +				     const struct intel_connector *connector,
> +				     bool ssc, bool dsc,
> +				     int bpp,
> +				     struct intel_link_m_n *m_n)
> +{
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	int overhead = intel_dp_mst_bw_overhead(crtc_state,
> +						connector,
> +						ssc, dsc, bpp);
> +
> +	intel_link_compute_m_n(bpp, crtc_state->lane_count,
> +			       adjusted_mode->crtc_clock,
> +			       crtc_state->port_clock,
> +			       overhead,
> +			       m_n);
> +
> +	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
> +}
> +
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  						struct intel_crtc_state *crtc_state,
>  						int max_bpp,
> @@ -99,14 +156,26 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  						      crtc_state->lane_count);
>  
>  	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
> +		struct intel_link_m_n remote_m_n;
> +		int link_bpp;
> +
>  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
>  
>  		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
>  		if (ret)
>  			continue;
>  
> -		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
> -						       bpp << 4);
> +		link_bpp = dsc ? bpp :
> +			intel_dp_output_bpp(crtc_state->output_format, bpp);
> +
> +		intel_dp_mst_compute_m_n(crtc_state, connector, false, dsc, link_bpp,
> +					 &crtc_state->dp_m_n);
> +		intel_dp_mst_compute_m_n(crtc_state, connector, true, dsc, link_bpp,
> +					 &remote_m_n);
> +
> +		crtc_state->pbn = DIV_ROUND_UP_ULL(mul_u32_u32(mst_state->pbn_div * 64,
> +							       remote_m_n.data_m),
> +						   remote_m_n.data_n);
>  
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
> @@ -115,6 +184,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  			return slots;
>  
>  		if (slots >= 0) {
> +			drm_WARN_ON(&i915->drm, slots != remote_m_n.tu);
> +
>  			ret = drm_dp_mst_atomic_check(state);
>  			/*
>  			 * If we got slots >= 0 and we can fit those based on check
> @@ -148,10 +219,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  					    struct drm_connector_state *conn_state,
>  					    struct link_config_limits *limits)
>  {
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
>  	int slots = -EINVAL;
> -	int link_bpp;
>  
>  	/*
>  	 * FIXME: allocate the BW according to link_bpp, which in the case of
> @@ -166,16 +234,6 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  	if (slots < 0)
>  		return slots;
>  
> -	link_bpp = intel_dp_output_bpp(crtc_state->output_format, crtc_state->pipe_bpp);
> -
> -	intel_link_compute_m_n(link_bpp,
> -			       crtc_state->lane_count,
> -			       adjusted_mode->crtc_clock,
> -			       crtc_state->port_clock,
> -			       intel_dp_bw_fec_overhead(crtc_state),
> -			       &crtc_state->dp_m_n);
> -	crtc_state->dp_m_n.tu = slots;
> -
>  	return 0;
>  }
>  
> @@ -187,8 +245,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
>  	int slots = -EINVAL;
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {};
> @@ -263,14 +319,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  			return slots;
>  	}
>  
> -	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
> -			       crtc_state->lane_count,
> -			       adjusted_mode->crtc_clock,
> -			       crtc_state->port_clock,
> -			       intel_dp_bw_fec_overhead(crtc_state),
> -			       &crtc_state->dp_m_n);
> -	crtc_state->dp_m_n.tu = slots;
> -
>  	return 0;
>  }
>  static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
> @@ -980,6 +1028,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	if (ret)
>  		return ret;
>  
> +	/* TODO: also check if compression would allow for the mode */
>  	if (mode_rate > max_rate || mode->clock > max_dotclk ||
>  	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
>  		*status = MODE_CLOCK_HIGH;
> -- 
> 2.39.2
> 
