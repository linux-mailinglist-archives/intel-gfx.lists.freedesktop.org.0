Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 052257BEB69
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 22:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6510A10E2D2;
	Mon,  9 Oct 2023 20:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E14610E2D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 20:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696882597; x=1728418597;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jDbTsT22LcZOK/tMPONHBLttgagrImkJrzv4dA8Bc4s=;
 b=SPsWlzpAHq4imhaJHmGjdPDvLfjIOjkfxSTc4oKusdg2YfC9nabLLEai
 EhokfE1y8zGiGxaV2bc5haiKInJkbG1Y166ucytsoRWZQbmg3SoIAEuQv
 5ecv5iOxB260Oyd3PpJcw487s4V987bMTQ9S5X7sgtziWSyeHtP88fgHB
 C95J4e4wBglxWm+Dlsv6vwSSnv8f0HqKiKLHAiaHEpsBj4KYRnQx2C4Ti
 KDtSrnLo+c832s01ucpQbqPp9HG1IXkm88iEzhgZQwUcE9gEDwC5k0zE0
 eT6FUvHHA82LcriZ7pro7DkzlFs1GvL2R1D2uXMFUOuzpKG7eJc4wme8M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="2823996"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; 
   d="scan'208";a="2823996"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:16:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788287529"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788287529"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:16:34 -0700
Date: Mon, 9 Oct 2023 23:16:26 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSRfmuAwzmpxyww0@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-7-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-7-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/19] drm/i915/dp: Use connector DSC DPCD
 in intel_dp_dsc_compute_max_bpp()
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

On Fri, Oct 06, 2023 at 04:37:14PM +0300, Imre Deak wrote:
> Use the connector's DSC DPCD capabilities in intel_dp_dsc_compute_max_bpp()
> instead of the version stored in the encoder.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 13 ++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  3 files changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6e6b3fe593453..00f5fecdbf386 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1215,7 +1215,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
>  		 */
> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp, U8_MAX);
> +		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>  
>  		/*
>  		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> @@ -1577,9 +1577,10 @@ u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> -int intel_dp_dsc_compute_max_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
> +int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> +				 u8 max_req_bpc)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {0};
>  	u8 dsc_max_bpc;
> @@ -1591,7 +1592,7 @@ int intel_dp_dsc_compute_max_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
>  
>  	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
>  
> -	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
> +	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>  						       dsc_bpc);
>  	for (i = 0; i < num_bpc; i++) {
>  		if (dsc_max_bpc >= dsc_bpc[i])
> @@ -2056,6 +2057,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  					  struct link_config_limits *limits)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  	int pipe_bpp, forced_bpp;
>  	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>  	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> @@ -2068,7 +2071,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  		int max_bpc = min(limits->pipe.max_bpp / 3, (int)conn_state->max_requested_bpc);
>  
>  		/* For eDP use max bpp that can be supported with DSC. */
> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp, max_bpc);
> +		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
>  		if (!is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, pipe_bpp)) {
>  			drm_dbg_kms(&i915->drm,
>  				    "Computed BPC is not in DSC BPC limits\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index bd9cb9680b4cd..af87aa2a5ed67 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -116,7 +116,8 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>  		       struct intel_crtc_state *crtc_state,
>  		       unsigned int type);
>  bool intel_digital_port_connected(struct intel_encoder *encoder);
> -int intel_dp_dsc_compute_max_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
> +int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> +				 u8 dsc_max_bpc);
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  					u32 link_clock, u32 lane_count,
>  					u32 mode_clock, u32 mode_hdisplay,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e01f669d2c8a1..3ff429c30f300 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1003,7 +1003,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
>  		 */
> -		int pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp, U8_MAX);
> +		int pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_connector, U8_MAX);
>  
>  		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
>  			dsc_max_compressed_bpp =
> -- 
> 2.39.2
> 
