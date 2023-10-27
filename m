Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 509B57D97EB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 14:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC1C710E994;
	Fri, 27 Oct 2023 12:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C923110E994
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 12:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698409520; x=1729945520;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=A6/EwM6i8ZXi2bGDrAtS64LUGPBJNEj1XxTNNhUK7+0=;
 b=QITu6qdQlyX3t+19zBRk6ipXwICMasyzK1HoWpZYGqYqVbl77XwxVtQ4
 C0atlAJxOhsct1yFx+Q7/GRntHE/rfhiy52VpuDd9v3kQSuy0HKmNnU2J
 bJu+Gi+pbwPy2UAMWC37hzadizhLG1OYvT5PwsC2sHZ7+fZA5uij7kgLn
 45a9EOlrKUIl97AH/cojML9vY7A5XpAlj8nHphUQB2UacrHuA/XzQiJTT
 KN+M1uMZEtrqTDnsY8HEXZ9XRUBJnCqHWNyPRh1mcqX6Au8wa2EVpZSJU
 cE1sGwNFkQcn7TzkaFqmJpIxZSESD1qhtEqV430jDE4XvDZVmcmFFhCeO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="384973532"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="384973532"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 05:25:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="736069653"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="736069653"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 05:25:19 -0700
Date: Fri, 27 Oct 2023 15:25:15 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTusK566aRV4P8ai@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-23-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-23-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 22/29] drm/i915/dp: Enable DSC via the
 connector decompression AUX
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

On Tue, Oct 24, 2023 at 04:09:18AM +0300, Imre Deak wrote:
> Enable DSC using the DSC AUX device stored for this purpose in the
> connector. This prepares for a follow-up patch which toggles DSC for
> each stream as needed, but for now keeps the current behavior, as DSC is
> still only enabled for the first MST stream.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 14 +++++++----
>  drivers/gpu/drm/i915/display/intel_dp.c     | 28 ++++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +--
>  4 files changed, 31 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bc438272d6d1a..79e36939d92d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2539,7 +2539,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>  	if (!is_mst)
> -		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
> +		intel_dp_sink_set_decompression_state(to_intel_connector(conn_state->connector),
> +						      crtc_state, true);
>  
>  	/*
>  	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
> @@ -2692,7 +2693,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>  	if (!is_mst)
> -		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
> +		intel_dp_sink_set_decompression_state(to_intel_connector(conn_state->connector),
> +						      crtc_state, true);
>  	/*
>  	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
>  	 * in the FEC_CONFIGURATION register to 1 before initiating link
> @@ -2773,8 +2775,8 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>  	if (!is_mst)
> -		intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
> -						      true);
> +		intel_dp_sink_set_decompression_state(to_intel_connector(conn_state->connector),
> +						      crtc_state, true);
>  	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
>  	intel_dp_start_link_train(intel_dp, crtc_state);
>  	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
> @@ -3354,6 +3356,8 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
>  				 const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	struct intel_connector *connector =
> +		to_intel_connector(old_conn_state->connector);
>  
>  	intel_dp->link_trained = false;
>  
> @@ -3362,7 +3366,7 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
>  	intel_psr_disable(intel_dp, old_crtc_state);
>  	intel_edp_backlight_off(old_conn_state);
>  	/* Disable the decompression in DP Sink */
> -	intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state,
> +	intel_dp_sink_set_decompression_state(connector, old_crtc_state,
>  					      false);
>  	/* Disable Ignore_MSA bit in DP Sink */
>  	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, old_crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7d185d6b2fe9d..a7eb31b489947 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2937,22 +2937,32 @@ static bool downstream_hpd_needs_d0(struct intel_dp *intel_dp)
>  		intel_dp->downstream_ports[0] & DP_DS_PORT_HPD;
>  }
>  
> -void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
> +static void
> +intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
> +				    bool enable)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +
> +	if (drm_dp_dpcd_writeb(connector->dp.dsc_decompression_aux, DP_DSC_ENABLE,
> +			       enable ? DP_DECOMPRESSION_EN : 0) < 0)
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to %s sink decompression state\n",
> +			    str_enable_disable(enable));
> +}
> +
> +void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
>  					   const struct intel_crtc_state *crtc_state,
>  					   bool enable)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	int ret;
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  
>  	if (!crtc_state->dsc.compression_enable)
>  		return;
>  
> -	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_DSC_ENABLE,
> -				 enable ? DP_DECOMPRESSION_EN : 0);
> -	if (ret < 0)
> -		drm_dbg_kms(&i915->drm,
> -			    "Failed to %s sink decompression state\n",
> -			    str_enable_disable(enable));
> +	if (drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux))
> +		return;
> +
> +	intel_dp_sink_set_dsc_decompression(connector, enable);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 2080575fef69a..a231d234f6e9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -57,7 +57,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
>  void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  					   const struct intel_crtc_state *crtc_state);
> -void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
> +void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
>  					   const struct intel_crtc_state *crtc_state,
>  					   bool enable);
>  void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b0310f464c1cd..8ef3a2611207c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -735,7 +735,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  		 * TODO: disable decompression for all streams/in any MST ports, not
>  		 * only in the first downstream branch device.
>  		 */
> -		intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state, false);
> +		intel_dp_sink_set_decompression_state(connector, old_crtc_state, false);
>  }
>  
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> @@ -895,7 +895,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  		 * TODO: enable decompression for all streams/in any MST ports, not
>  		 * only in the first downstream branch device.
>  		 */
> -		intel_dp_sink_set_decompression_state(intel_dp, pipe_config, true);
> +		intel_dp_sink_set_decompression_state(connector, pipe_config, true);
>  		dig_port->base.pre_enable(state, &dig_port->base,
>  						pipe_config, NULL);
>  	}
> -- 
> 2.39.2
> 
