Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DBE7DC89C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 09:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD9D10E11B;
	Tue, 31 Oct 2023 08:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DBC310E11B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 08:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698742062; x=1730278062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sUwpQhdrymlNnyW4gjRAXzfem1GF1qTHMx6barWlpIA=;
 b=HBDF92OSXsygNwCPJWXZHgjrMKfXhGdk3I4AHnxTpluH4WKpPOM3WZ5S
 xOZkmg88bnoruuVFn9FhpgfRJz/OcaPdgEDXvU3/VvqlEKjH4EdShqFJQ
 fZiKGAKnqg/AJGUJPNLrdk3NyJ808JYvHr0pT12GwlZ3w5bQglNdHBndZ
 oi1wuNmUNZYUNB36UD2lL7VCk0R8oWN94Kz8mpRlFZMLymye3gnBstwuc
 m2dTCf/XHzTjfvxIT12vIsu2/LGgV1OnxtDF0yQHeBxsRwywruheQohc/
 Lh0pW9RDgOtSgRJupVhbdvf8/B/yvmo9M0DufriTE44FsXj0ye+cFcyd7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="367586772"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="367586772"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 01:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="904271898"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="904271898"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 01:47:40 -0700
Date: Tue, 31 Oct 2023 10:47:32 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZUC/JH79FSWVX4VC@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-26-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231030155843.2251023-26-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 25/30] drm/i915/dp_mst: Enable MST DSC
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

On Mon, Oct 30, 2023 at 05:58:38PM +0200, Imre Deak wrote:
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
> v2:
> 
> - Fix refcounting, setting/clearing
>   connector->dp.dsc_decompression_enabled always as needed. (Stan)
> - Make the refcounting more uniform for the SST vs. MST case.
> - Add state checks for connector->dp.dsc_decompression_enabled and
>   connector crtc.
> - Sanitize connector DSC decompression state during HW setup.
> - s/use_count/ref_count/

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 72 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 19 ++---
>  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
>  4 files changed, 82 insertions(+), 16 deletions(-)
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
> index 8bc4faa142a62..6d2fd068b8359 100644
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
> @@ -2986,6 +2987,65 @@ intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
>  			    str_enable_disable(enable));
>  }
>  
> +static int intel_dp_dsc_aux_ref_count(struct intel_atomic_state *state,
> +				      const struct intel_connector *connector,
> +				      bool for_get_ref)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct drm_connector *_connector_iter;
> +	struct drm_connector_state *old_conn_state;
> +	struct drm_connector_state *new_conn_state;
> +	int ref_count = 0;
> +	int i;
> +
> +	/*
> +	 * On SST the decompression AUX device won't be shared, each connector
> +	 * uses for this its own AUX targeting the sink device.
> +	 */
> +	if (!connector->mst_port)
> +		return connector->dp.dsc_decompression_enabled ? 1 : 0;
> +
> +	for_each_oldnew_connector_in_state(&state->base, _connector_iter,
> +					   old_conn_state, new_conn_state, i) {
> +		const struct intel_connector *
> +			connector_iter = to_intel_connector(_connector_iter);
> +
> +		if (connector_iter->mst_port != connector->mst_port)
> +			continue;
> +
> +		if (!connector_iter->dp.dsc_decompression_enabled)
> +			continue;
> +
> +		drm_WARN_ON(&i915->drm,
> +			    (for_get_ref && !new_conn_state->crtc) ||
> +			    (!for_get_ref && !old_conn_state->crtc));
> +
> +		if (connector_iter->dp.dsc_decompression_aux ==
> +		    connector->dp.dsc_decompression_aux)
> +			ref_count++;
> +	}
> +
> +	return ref_count;
> +}
> +
> +static bool intel_dp_dsc_aux_get_ref(struct intel_atomic_state *state,
> +				     struct intel_connector *connector)
> +{
> +	bool ret = intel_dp_dsc_aux_ref_count(state, connector, true) == 0;
> +
> +	connector->dp.dsc_decompression_enabled = true;
> +
> +	return ret;
> +}
> +
> +static bool intel_dp_dsc_aux_put_ref(struct intel_atomic_state *state,
> +				     struct intel_connector *connector)
> +{
> +	connector->dp.dsc_decompression_enabled = false;
> +
> +	return intel_dp_dsc_aux_ref_count(state, connector, false) == 0;
> +}
> +
>  /**
>   * intel_dp_sink_enable_decompression - Enable DSC decompression in sink/last branch device
>   * @state: atomic state
> @@ -3009,7 +3069,11 @@ void intel_dp_sink_enable_decompression(struct intel_atomic_state *state,
>  		return;
>  
>  	if (drm_WARN_ON(&i915->drm,
> -			!connector->dp.dsc_decompression_aux))
> +			!connector->dp.dsc_decompression_aux ||
> +			connector->dp.dsc_decompression_enabled))
> +		return;
> +
> +	if (!intel_dp_dsc_aux_get_ref(state, connector))
>  		return;
>  
>  	intel_dp_sink_set_dsc_passthrough(connector, true);
> @@ -3036,7 +3100,11 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
>  		return;
>  
>  	if (drm_WARN_ON(&i915->drm,
> -			!connector->dp.dsc_decompression_aux))
> +			!connector->dp.dsc_decompression_aux ||
> +			!connector->dp.dsc_decompression_enabled))
> +		return;
> +
> +	if (!intel_dp_dsc_aux_put_ref(state, connector))
>  		return;
>  
>  	intel_dp_sink_set_dsc_decompression(connector, false);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 355a573c97930..9037e11ec6e0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -748,12 +748,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  
> -	if (intel_dp->active_mst_links == 1) /* last stream ? */
> -		/*
> -		 * TODO: disable decompression for all streams/in any MST ports, not
> -		 * only in the first downstream branch device.
> -		 */
> -		intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
> +	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
>  }
>  
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> @@ -908,15 +903,11 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
>  
> -	if (first_mst_stream) {
> -		/*
> -		 * TODO: enable decompression for all streams/in any MST ports, not
> -		 * only in the first downstream branch device.
> -		 */
> -		intel_dp_sink_enable_decompression(state, connector, pipe_config);
> +	intel_dp_sink_enable_decompression(state, connector, pipe_config);
> +
> +	if (first_mst_stream)
>  		dig_port->base.pre_enable(state, &dig_port->base,
>  						pipe_config, NULL);
> -	}
>  
>  	intel_dp->active_mst_links++;
>  
> @@ -1362,7 +1353,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  	 * At the moment the driver only supports enabling this globally in the
>  	 * first downstream MST branch, via intel_dp's (root port) AUX.
>  	 */
> -	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> +	intel_connector->dp.dsc_decompression_aux = drm_dp_mst_dsc_aux_for_port(port);
>  	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
>  	intel_connector->dp.dsc_hblank_expansion_quirk =
>  		detect_dsc_hblank_expansion_quirk(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index b8f43efb0ab5a..94eece7f63be3 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -318,6 +318,12 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
>  			const struct intel_crtc_state *crtc_state =
>  				to_intel_crtc_state(crtc->base.state);
>  
> +			if (crtc_state->dsc.compression_enable) {
> +				drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
> +				connector->dp.dsc_decompression_enabled = true;
> +			} else {
> +				connector->dp.dsc_decompression_enabled = false;
> +			}
>  			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
>  		}
>  	}
> -- 
> 2.39.2
> 
