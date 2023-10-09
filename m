Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ABE7BE19C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D12010E117;
	Mon,  9 Oct 2023 13:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6AA10E117
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 13:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696859521; x=1728395521;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HTKx5/Bn17QXMaZdMAk2/eSJ+s6WapzMcYNb3WgOGA4=;
 b=FLQuUIcD4iaNeIFNwUNPNVN5E3ehIzRECrF2Xx1pZbjaX+AX6yW2Ihpg
 XFq15Fpz7hBaUkcTkbXGlRUMRIffzg/GOByX1M5kBro/MmJMyxjUwsTAG
 hH1dRX2Gf/WCXWNb84MwkVl03VHuv8iT/qMilaFII7aHeyTfaMqtsecFC
 WF1G7w/r8rJcyqxf4V5DReDPXYO0XEVNuacodYUAWDjXHIQaP29ozZ+M1
 Bg1pJKZZRZ/7VsKFF6QIFX/rX8XTz1zyVoMK8/Qzxu5JEJzMXsFjsjtr3
 +59jGpEzB2P6qQ0yS+ktfD8TpMWUlUJW3OmpNpxdYax+hWB/4qMI9xgk3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="369213874"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="369213874"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="876803318"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="876803318"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:51:59 -0700
Date: Mon, 9 Oct 2023 16:51:50 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSQFdo/sQRSUQa1r@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-4-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/19] drm/i915/dp_mst: Set connector DSC
 capabilities and decompression AUX
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

On Fri, Oct 06, 2023 at 04:37:11PM +0300, Imre Deak wrote:
> Similarly to eDP and SST-DP connectors read out the DSC capabilities for
> MST connectors as well. Atm these will match the root port's DSC caps
> and only used after a follow-up change enables the decompression for
> each stream separately (vs. the current way of enabling it only globally
> in the first branch device downstream of the root port).
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 +++++++++++++++++++++
>  3 files changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c7dd65a27a1b0..6e6b3fe593453 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3467,8 +3467,8 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>  	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
>  }
>  
> -static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
> -				      struct intel_connector *connector)
> +void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
> +			       struct intel_connector *connector)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 2cf3681bac64a..bd9cb9680b4cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -162,4 +162,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>  					bool dsc,
>  					struct link_config_limits *limits);
>  
> +void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
> +			       struct intel_connector *connector);
> +
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 73e3977364632..e01f669d2c8a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1126,6 +1126,21 @@ static int intel_dp_mst_add_properties(struct intel_dp *intel_dp,
>  	return drm_connector_set_path_property(connector, pathprop);
>  }
>  
> +static void
> +intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
> +					      struct intel_connector *connector)
> +{
> +	u8 dpcd_caps[DP_RECEIVER_CAP_SIZE];
> +
> +	if (!connector->dp.dsc_decompression_aux)
> +		return;
> +
> +	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd_caps) < 0)
> +		return;
> +
> +	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], intel_dp, connector);
> +}
> +
>  static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
>  							struct drm_dp_mst_port *port,
>  							const char *pathprop)
> @@ -1159,6 +1174,14 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  
>  	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
>  
> +	/*
> +	 * TODO: set the AUX for the actual MST port decompressing the stream.
> +	 * At the moment the driver only supports enabling this globally in the
> +	 * first downstream MST branch, via intel_dp's (root port) AUX.
> +	 */
> +	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> +	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
> +
>  	for_each_pipe(dev_priv, pipe) {
>  		struct drm_encoder *enc =
>  			&intel_dp->mst_encoders[pipe]->base.base;
> -- 
> 2.39.2
> 
