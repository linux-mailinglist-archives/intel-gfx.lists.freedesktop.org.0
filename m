Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D27347BD960
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 13:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4873D88784;
	Mon,  9 Oct 2023 11:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0DE410E0F8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 11:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696850233; x=1728386233;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sOeRHydVM2RmKMqBlL4tHjOoUzFiRWG3THINLrryYUI=;
 b=bgj18X6I8FUXIpZVJm8pznm1CEJqzs9BB7w8+claZvcGSlA0nJowX1YK
 r2lCOHgfmhpVRb0qQMsZYamSRfA2pQsCpyZtJtKlCwG6doJh4XmiGJsc7
 H4sjjzSwaE9glxtIgSzyPg7kZBNy6GRE+k0gKaYzzgL2fEJ5AT86cKHze
 VK7u8aQhQn4UnmvQu1hXyOz8gAAvRSH0vvuaZNLt6O0xLCxmMoMaYpVqS
 8EpHNu3Keoicgifah6+3teS9MDiiug09N0BSfuc/Cc1e2KivNkHKDdW2H
 T68Buxqd0vcCg+W+XgeYFv+RZsAMKwMgbk3XFxKIsflZptOz1JVTsDjwK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="415108582"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="415108582"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 04:17:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="782458141"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="782458141"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 04:17:11 -0700
Date: Mon, 9 Oct 2023 14:17:02 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSPhLt/7kw/+8L5h@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-3-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/19] drm/i915/dp: Store DSC DPCD
 capabilities in the connector
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

On Fri, Oct 06, 2023 at 04:37:10PM +0300, Imre Deak wrote:
> In an MST topology the DSC capabilities are specific to each connector,
> retrieved either from the sink if it decompresses the stream, or from a
> branch device between the source and the sink in case this branch device
> does the decompression. Accordingly each connector needs to cache its
> own DSC DPCD and FEC capabilities, along with the AUX device through
> which the decompression can be enabled. This patch prepares for that by
> storing the capabilities and the DSC AUX device in the connector, for
> now these just matching the version stored in intel_dp. The follow-up
> patches will convert all users to look up these in the connector instead
> of intel_dp, after which the intel_dp copies are removed.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    |  6 +++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 53 +++++++++++++------
>  2 files changed, 43 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8d8b2f8d37a99..d6600079bcf74 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -620,6 +620,12 @@ struct intel_connector {
>  
>  	struct intel_dp *mst_port;
>  
> +	struct {
> +		struct drm_dp_aux *dsc_decompression_aux;
> +		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> +		u8 fec_capability;
> +	} dp;
> +
>  	/* Work struct to schedule a uevent on link train failure */
>  	struct work_struct modeset_retry_work;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1bd11f9e308c1..c7dd65a27a1b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3467,7 +3467,8 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>  	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
>  }
>  
> -static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
> +static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
> +				      struct intel_connector *connector)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
> @@ -3475,35 +3476,46 @@ static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
>  	 * Clear the cached register set to avoid using stale values
>  	 * for the sinks that do not support DSC.
>  	 */
> -	memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> +	memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
>  
>  	/* Clear fec_capable to avoid using stale values */
> -	intel_dp->fec_capable = 0;
> +	connector->dp.fec_capability = 0;
>  
>  	/* Cache the DSC DPCD if eDP or DP rev >= 1.4 */
>  	if ((intel_dp_is_edp(intel_dp) && dpcd_rev >= DP_EDP_14) ||
>  	    (!intel_dp_is_edp(intel_dp) && dpcd_rev >= 0x14)) {
> -		if (drm_dp_dpcd_read(&intel_dp->aux, DP_DSC_SUPPORT,
> -				     intel_dp->dsc_dpcd,
> -				     sizeof(intel_dp->dsc_dpcd)) < 0)
> +		if (drm_dp_dpcd_read(connector->dp.dsc_decompression_aux,
> +				     DP_DSC_SUPPORT,
> +				     connector->dp.dsc_dpcd,
> +				     sizeof(connector->dp.dsc_dpcd)) < 0)
>  			drm_err(&i915->drm,
>  				"Failed to read DPCD register 0x%x\n",
>  				DP_DSC_SUPPORT);
>  
>  		drm_dbg_kms(&i915->drm, "DSC DPCD: %*ph\n",
> -			    (int)sizeof(intel_dp->dsc_dpcd),
> -			    intel_dp->dsc_dpcd);
> +			    (int)sizeof(connector->dp.dsc_dpcd),
> +			    connector->dp.dsc_dpcd);
>  
>  		/* FEC is supported only on DP 1.4 */
>  		if (!intel_dp_is_edp(intel_dp) &&
> -		    drm_dp_dpcd_readb(&intel_dp->aux, DP_FEC_CAPABILITY,
> -				      &intel_dp->fec_capable) < 0)
> +		    drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux,
> +				      DP_FEC_CAPABILITY,
> +				      &connector->dp.fec_capability) < 0)
>  			drm_err(&i915->drm,
>  				"Failed to read FEC DPCD register\n");
>  
>  		drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
> -			    intel_dp->fec_capable);
> +			    connector->dp.fec_capability);
>  	}
> +
> +	/*
> +	 * TODO: remove the following intel_dp copies once all users
> +	 * are converted to look up DSC DPCD/FEC capability via the
> +	 * connector.
> +	 */
> +	memcpy(intel_dp->dsc_dpcd, connector->dp.dsc_dpcd,
> +	       sizeof(intel_dp->dsc_dpcd));
> +	intel_dp->fec_capable = connector->dp.fec_capability;
>  }
>  
>  static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
> @@ -3595,7 +3607,7 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  }
>  
>  static bool
> -intel_edp_init_dpcd(struct intel_dp *intel_dp)
> +intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =
>  		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
> @@ -3675,7 +3687,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  	/* Read the eDP DSC DPCD registers */
>  	if (HAS_DSC(dev_priv))
>  		intel_dp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
> -					  intel_dp);
> +					  intel_dp,
> +					  connector);
>  
>  	/*
>  	 * If needed, program our source OUI so we can make various Intel-specific AUX services
> @@ -5345,7 +5358,9 @@ intel_dp_detect(struct drm_connector *connector,
>  		bool force)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> -	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
> +	struct intel_connector *intel_connector =
> +		to_intel_connector(connector);
> +	struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder = &dig_port->base;
>  	enum drm_connector_status status;
> @@ -5368,7 +5383,12 @@ intel_dp_detect(struct drm_connector *connector,
>  
>  	if (status == connector_status_disconnected) {
>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> +		/*
> +		 * TODO: Remove clearing the DPCD in intel_dp, once all
> +		 * user are converted to using the DPCD in connector.
> +		 */
>  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> +		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
>  
>  		if (intel_dp->is_mst) {
>  			drm_dbg_kms(&dev_priv->drm,
> @@ -5386,7 +5406,7 @@ intel_dp_detect(struct drm_connector *connector,
>  	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
>  	if (HAS_DSC(dev_priv))
>  		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
> -					  intel_dp);
> +					  intel_dp, intel_connector);
>  
>  	intel_dp_configure_mst(intel_dp);
>  
> @@ -5971,7 +5991,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	intel_hpd_enable_detection(encoder);
>  
>  	/* Cache DPCD and EDID for edp. */
> -	has_dpcd = intel_edp_init_dpcd(intel_dp);
> +	has_dpcd = intel_edp_init_dpcd(intel_dp, intel_connector);
>  
>  	if (!has_dpcd) {
>  		/* if this fails, presume the device is a ghost */
> @@ -6145,6 +6165,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
>  
>  	intel_dp_aux_init(intel_dp);
> +	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
>  
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "Adding %s connector on [ENCODER:%d:%s]\n",
> -- 
> 2.39.2
> 
