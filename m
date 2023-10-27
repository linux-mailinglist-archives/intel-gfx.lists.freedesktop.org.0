Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 757D97D9BEE
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 16:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A5010E9D3;
	Fri, 27 Oct 2023 14:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3466F10E9C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 14:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698417939; x=1729953939;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+6MeAPm2tcjQs3jUr2xhFYoL5fNOSiGATMNp5btTTkE=;
 b=C//mVdYIT6w5YfPQVTao69NyWiGL0fPstE8h6o/20RPQqDpv2HoXUWY8
 Kxp9mDO7JxiMWBqD1t6PIkdNeqW+ZBWhPugWaaYa8DcIIxQpqTllqAtSm
 guXkrmVFwzddNxyrJu2n5BjZbZR0GnGebUQTxQ4TMpq0hh5eCml5x0U29
 5UGvyMmktkwzc9adcRg+snngIlxmmIu9Gl3lKGDcHbnfAk2EdS12l4LGR
 3tK7DocSx7+AYYeAVJXPQvCIDuE5e13sIy3JIsDov1obfTiCs4KeXN+3Y
 uSfpt5x+jqXh/3HuKp4Q9QW3jGjRPcgPY1EOtKvOAam54Iov2o8K7mpwR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="390643527"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="390643527"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:45:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; 
   d="scan'208";a="7239982"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:44:15 -0700
Date: Fri, 27 Oct 2023 17:45:30 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTvNCgO9NF/rl1t+@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-25-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-25-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 24/29] drm/i915/dp_mst: Enable MST DSC
 decompression for all streams
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

On Tue, Oct 24, 2023 at 04:09:20AM +0300, Imre Deak wrote:
> Enable DSC decompression for all streams. In particular atm if a sink is
> connected to a last branch device that is downstream of the first branch
> device connected to the source, decompression is not enabled for it.
> Similarly it's not enabled if the sink supports this with the last
> branch device passing through the compressed stream to it.
> 
> Enable DSC in the above cases as well. Since last branch devices may
> handle the decompression for multiple ports, toggling DSC needs to be
> refcounted, add this using the DSC AUX device as a reference.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 57 ++++++++++++-------
>  3 files changed, 42 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 409dbf8a2a1cd..b2744a9b4678c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -626,6 +626,7 @@ struct intel_connector {
>  		u8 fec_capability;
>  
>  		u8 dsc_hblank_expansion_quirk:1;
> +		u8 dsc_decompression_enabled:1;
>  	} dp;
>  
>  	/* Work struct to schedule a uevent on link train failure */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index bb8951f89f61f..c89e1a4393d0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1403,6 +1403,7 @@ static bool intel_dp_supports_dsc(const struct intel_connector *connector,
>  		return false;
>  
>  	return intel_dsc_source_support(crtc_state) &&
> +		connector->dp.dsc_decompression_aux &&
>  		drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd);
>  }
>  
> @@ -2948,6 +2949,8 @@ intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
>  		drm_dbg_kms(&i915->drm,
>  			    "Failed to %s sink decompression state\n",
>  			    str_enable_disable(enable));
> +
> +	connector->dp.dsc_decompression_enabled = enable;
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8ef3a2611207c..9f4894c2e7860 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -660,6 +660,39 @@ intel_dp_mst_atomic_topology_check(struct intel_connector *connector,
>  	return ret;
>  }
>  
> +static int intel_dp_mst_dsc_aux_use_count(struct intel_atomic_state *state,
> +					  const struct intel_connector *connector)
> +{
> +	struct intel_connector *connector_iter;
> +	struct intel_digital_connector_state *conn_state;
> +	int use_count = 0;
> +	int i;
> +
> +	for_each_new_intel_connector_in_state(state, connector_iter, conn_state, i) {
> +		if (connector_iter->mst_port != connector->mst_port ||
> +		    !conn_state->base.crtc)
> +			continue;
> +
> +		if (!connector_iter->dp.dsc_decompression_enabled)
> +			continue;
> +
> +		if (connector_iter->dp.dsc_decompression_aux ==
> +		    connector->dp.dsc_decompression_aux)
> +			use_count++;
> +	}
> +
> +	return use_count;
> +}
> +
> +static void intel_dp_mst_sink_set_decompression_state(struct intel_atomic_state *state,
> +						      struct intel_connector *connector,
> +						      const struct intel_crtc_state *crtc_state,
> +						      bool enable)
> +{
> +	if (!intel_dp_mst_dsc_aux_use_count(state, connector))
> +		intel_dp_sink_set_decompression_state(connector, crtc_state, enable);

But where the use count is decremented?
As I understand we will be able to set this with enable==false also when use_count is 0.

For that we need to have intel_connector->dp.dsc_decompression_aux NULLed somewhere?

Stan
> +}
> +
>  static int
>  intel_dp_mst_atomic_check(struct drm_connector *connector,
>  			  struct drm_atomic_state *_state)
> @@ -730,12 +763,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  
> -	if (intel_dp->active_mst_links == 1) /* last stream ? */
> -		/*
> -		 * TODO: disable decompression for all streams/in any MST ports, not
> -		 * only in the first downstream branch device.
> -		 */
> -		intel_dp_sink_set_decompression_state(connector, old_crtc_state, false);
> +	intel_dp_mst_sink_set_decompression_state(state, connector, old_crtc_state, false);
>  }
>  
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> @@ -890,15 +918,11 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
>  
> -	if (first_mst_stream) {
> -		/*
> -		 * TODO: enable decompression for all streams/in any MST ports, not
> -		 * only in the first downstream branch device.
> -		 */
> -		intel_dp_sink_set_decompression_state(connector, pipe_config, true);
> +	intel_dp_mst_sink_set_decompression_state(state, connector, pipe_config, true);
> +
> +	if (first_mst_stream)
>  		dig_port->base.pre_enable(state, &dig_port->base,
>  						pipe_config, NULL);
> -	}
>  
>  	intel_dp->active_mst_links++;
>  
> @@ -1350,12 +1374,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  
>  	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
>  
> -	/*
> -	 * TODO: set the AUX for the actual MST port decompressing the stream.
> -	 * At the moment the driver only supports enabling this globally in the
> -	 * first downstream MST branch, via intel_dp's (root port) AUX.
> -	 */
> -	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> +	intel_connector->dp.dsc_decompression_aux = drm_dp_mst_dsc_aux_for_port(port);
>  	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
>  	intel_connector->dp.dsc_hblank_expansion_quirk =
>  		detect_dsc_hblank_expansion_quirk(intel_connector);
> -- 
> 2.39.2
> 
