Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 947E6A49E0B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 16:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA62D10ECDD;
	Fri, 28 Feb 2025 15:51:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YTKjJdxi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A6B10ECDD;
 Fri, 28 Feb 2025 15:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740757864; x=1772293864;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=PcPbedzeFtmPT2n454YgZdMRAkrI7DDRpmYHLzK4HJs=;
 b=YTKjJdxizVo/j+8Wp33wUa4iazhYxwQXrrASbzgb9MTbNqf5ZZvSdX8I
 /MJNz5y4rFfcW1TWSBywNukMDLk4B2G5fnOAfSZgwDAdXVenk+pMCEo6I
 x09nYWAziHp2KnHjTULYBXEFyf0BZ6T3ZL/1iIpm0s6GadAt2CGfxrvrK
 uiGIfpqvHgveCEkCkhCo/SpJ6kXO3qf03Ys/ePZIf91WEzST8TJibaeEo
 LEO+XT23Q3PcK5lxBbrPsURtWXVFaPtbl8/IV64jM9X8TTYW+9pv95qlE
 8/eotNr2cLijasaDS9Bty4q6iCdZHvSnV0/RRAAOFM177fBLCDn1GoOfZ Q==;
X-CSE-ConnectionGUID: LhhtLDEkSmGh5S/8GMIlIA==
X-CSE-MsgGUID: a/hq6tfVTkq392+iN71Xig==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="45342671"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="45342671"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:51:04 -0800
X-CSE-ConnectionGUID: Eb6B9cQSQpacanGNWb5yVw==
X-CSE-MsgGUID: PVAaTv9hSCi6e/Vr9AN96A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117895887"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:51:02 -0800
Date: Fri, 28 Feb 2025 17:52:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/mst: add mst sub-struct to struct intel_dp
Message-ID: <Z8Hbok2wwd42b9YO@ideak-desk.fi.intel.com>
References: <cover.1740746939.git.jani.nikula@intel.com>
 <6f282f90bfe2dd9162e2dee8f681c84313971992.1740746939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f282f90bfe2dd9162e2dee8f681c84313971992.1740746939.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2025 at 02:49:29PM +0200, Jani Nikula wrote:
> Move active_mst_links, mst_encoders[], and mst_mgr members of struct
> intel_dp under an mst sub-struct to group mst related things together.
> 
> Rename them active_links, stream_encoders[] and mgr for clarity.
> 
> Note that is_mst and mst_detect are not included, as they're also
> relevant for non-mst. The sub-struct is for active mst.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>  .../drm/i915/display/intel_display_types.h    |  9 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 26 +++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 94 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
>  5 files changed, 66 insertions(+), 67 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 7ee90cd8ed2d..408f80194334 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -749,7 +749,7 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
>  		seq_printf(m, "MST Source Port [ENCODER:%d:%s]\n",
>  			   dig_port->base.base.base.id,
>  			   dig_port->base.base.name);
> -		drm_dp_mst_dump_topology(m, &dig_port->dp.mst_mgr);
> +		drm_dp_mst_dump_topology(m, &dig_port->dp.mst.mgr);
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4440521e3e9e..2aa8f6264708 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1724,7 +1724,6 @@ struct intel_dp {
>  	struct intel_pps pps;
>  
>  	bool is_mst;
> -	int active_mst_links;
>  	enum drm_dp_mst_mode mst_detect;
>  
>  	/* connector directly attached - won't be use for modeset in mst world */
> @@ -1734,9 +1733,11 @@ struct intel_dp {
>  	struct drm_dp_tunnel *tunnel;
>  	bool tunnel_suspended:1;
>  
> -	/* mst connector list */
> -	struct intel_dp_mst_encoder *mst_encoders[I915_MAX_PIPES];
> -	struct drm_dp_mst_topology_mgr mst_mgr;
> +	struct {
> +		struct intel_dp_mst_encoder *stream_encoders[I915_MAX_PIPES];
> +		struct drm_dp_mst_topology_mgr mgr;
> +		int active_links;
> +	} mst;
>  
>  	u32 (*get_aux_clock_divider)(struct intel_dp *dp, int index);
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4d0166f17357..5e84103c8d54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4396,7 +4396,7 @@ intel_dp_mst_configure(struct intel_dp *intel_dp)
>  	if (intel_dp->is_mst)
>  		intel_dp_mst_prepare_probe(intel_dp);
>  
> -	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr, intel_dp->is_mst);
> +	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_mst);
>  
>  	/* Avoid stale info on the next detect cycle. */
>  	intel_dp->mst_detect = DRM_DP_SST;
> @@ -4412,9 +4412,9 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
>  
>  	drm_dbg_kms(display->drm,
>  		    "MST device may have disappeared %d vs %d\n",
> -		    intel_dp->is_mst, intel_dp->mst_mgr.mst_state);
> +		    intel_dp->is_mst, intel_dp->mst.mgr.mst_state);
>  	intel_dp->is_mst = false;
> -	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr, intel_dp->is_mst);
> +	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_mst);
>  }
>  
>  static bool
> @@ -4920,7 +4920,7 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
>  {
>  	bool handled = false;
>  
> -	drm_dp_mst_hpd_irq_handle_event(&intel_dp->mst_mgr, esi, ack, &handled);
> +	drm_dp_mst_hpd_irq_handle_event(&intel_dp->mst.mgr, esi, ack, &handled);
>  
>  	if (esi[1] & DP_CP_IRQ) {
>  		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
> @@ -4969,7 +4969,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  	bool link_ok = true;
>  	bool reprobe_needed = false;
>  
> -	drm_WARN_ON_ONCE(display->drm, intel_dp->active_mst_links < 0);
> +	drm_WARN_ON_ONCE(display->drm, intel_dp->mst.active_links < 0);
>  
>  	for (;;) {
>  		u8 esi[4] = {};
> @@ -4985,7 +4985,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  
>  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
>  
> -		if (intel_dp->active_mst_links > 0 && link_ok &&
> +		if (intel_dp->mst.active_links > 0 && link_ok &&
>  		    esi[3] & LINK_STATUS_CHANGED) {
>  			if (!intel_dp_mst_link_status(intel_dp))
>  				link_ok = false;
> @@ -5008,7 +5008,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
>  
>  		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
> -			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
> +			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
>  	}
>  
>  	if (!link_ok || intel_dp->link.force_retrain)
> @@ -5107,7 +5107,7 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
>  
>  	/* MST */
>  	for_each_pipe(display, pipe) {
> -		encoder = &intel_dp->mst_encoders[pipe]->base;
> +		encoder = &intel_dp->mst.stream_encoders[pipe]->base;
>  		if (conn_state->best_encoder == &encoder->base)
>  			return true;
>  	}
> @@ -6066,7 +6066,7 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
>  		return ret;
>  
>  	if (intel_dp_mst_source_support(intel_dp)) {
> -		ret = drm_dp_mst_root_conn_atomic_check(conn_state, &intel_dp->mst_mgr);
> +		ret = drm_dp_mst_root_conn_atomic_check(conn_state, &intel_dp->mst.mgr);
>  		if (ret)
>  			return ret;
>  	}
> @@ -6604,7 +6604,7 @@ void intel_dp_mst_suspend(struct intel_display *display)
>  			continue;
>  
>  		if (intel_dp->is_mst)
> -			drm_dp_mst_topology_mgr_suspend(&intel_dp->mst_mgr);
> +			drm_dp_mst_topology_mgr_suspend(&intel_dp->mst.mgr);
>  	}
>  }
>  
> @@ -6627,12 +6627,10 @@ void intel_dp_mst_resume(struct intel_display *display)
>  		if (!intel_dp_mst_source_support(intel_dp))
>  			continue;
>  
> -		ret = drm_dp_mst_topology_mgr_resume(&intel_dp->mst_mgr,
> -						     true);
> +		ret = drm_dp_mst_topology_mgr_resume(&intel_dp->mst.mgr, true);
>  		if (ret) {
>  			intel_dp->is_mst = false;
> -			drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> -							false);
> +			drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, false);
>  		}
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 90cc07b72817..e96236fbe407 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -253,7 +253,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  					   fxp_q4_to_frac(bpp_step_x16)));
>  
>  	if (is_mst) {
> -		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
> +		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst.mgr);
>  		if (IS_ERR(mst_state))
>  			return PTR_ERR(mst_state);
>  
> @@ -355,7 +355,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  			drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
>  			crtc_state->dp_m_n.tu = remote_tu;
>  
> -			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
> +			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst.mgr,
>  							      connector->port,
>  							      dfixed_trunc(pbn));
>  		} else {
> @@ -479,7 +479,7 @@ static int mst_stream_update_slots(struct intel_dp *intel_dp,
>  				   struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
>  	struct drm_dp_mst_topology_state *topology_state;
>  	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
>  		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
> @@ -769,7 +769,7 @@ static u8 get_pipes_downstream_of_mst_port(struct intel_atomic_state *state,
>  		if (!conn_state->base.crtc)
>  			continue;
>  
> -		if (&connector->mst_port->mst_mgr != mst_mgr)
> +		if (&connector->mst_port->mst.mgr != mst_mgr)
>  			continue;
>  
>  		if (connector->port != parent_port &&
> @@ -981,7 +981,7 @@ mst_connector_atomic_check(struct drm_connector *_connector,
>  	}
>  
>  	return drm_dp_atomic_release_time_slots(&state->base,
> -						&connector->mst_port->mst_mgr,
> +						&connector->mst_port->mst.mgr,
>  						connector->port);
>  }
>  
> @@ -998,9 +998,9 @@ static void mst_stream_disable(struct intel_atomic_state *state,
>  	enum transcoder trans = old_crtc_state->cpu_transcoder;
>  
>  	drm_dbg_kms(display->drm, "active links %d\n",
> -		    intel_dp->active_mst_links);
> +		    intel_dp->mst.active_links);
>  
> -	if (intel_dp->active_mst_links == 1)
> +	if (intel_dp->mst.active_links == 1)
>  		intel_dp->link_trained = false;
>  
>  	intel_hdcp_disable(intel_mst->connector);
> @@ -1023,9 +1023,9 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  	struct intel_connector *connector =
>  		to_intel_connector(old_conn_state->connector);
>  	struct drm_dp_mst_topology_state *old_mst_state =
> -		drm_atomic_get_old_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> +		drm_atomic_get_old_mst_topology_state(&state->base, &intel_dp->mst.mgr);
>  	struct drm_dp_mst_topology_state *new_mst_state =
> -		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> +		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst.mgr);
>  	const struct drm_dp_mst_atomic_payload *old_payload =
>  		drm_atomic_get_mst_payload_state(old_mst_state, connector->port);
>  	struct drm_dp_mst_atomic_payload *new_payload =
> @@ -1034,8 +1034,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  	bool last_mst_stream;
>  	int i;
>  
> -	intel_dp->active_mst_links--;
> -	last_mst_stream = intel_dp->active_mst_links == 0;
> +	intel_dp->mst.active_links--;
> +	last_mst_stream = intel_dp->mst.active_links == 0;
>  	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && last_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(old_crtc_state));
>  
> @@ -1048,7 +1048,7 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  
>  	intel_disable_transcoder(old_crtc_state);
>  
> -	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
> +	drm_dp_remove_payload_part1(&intel_dp->mst.mgr, new_mst_state, new_payload);
>  
>  	intel_ddi_clear_act_sent(encoder, old_crtc_state);
>  
> @@ -1057,9 +1057,9 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
>  
>  	intel_ddi_wait_for_act_sent(encoder, old_crtc_state);
> -	drm_dp_check_act_status(&intel_dp->mst_mgr);
> +	drm_dp_check_act_status(&intel_dp->mst.mgr);
>  
> -	drm_dp_remove_payload_part2(&intel_dp->mst_mgr, new_mst_state,
> +	drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
>  				    old_payload, new_payload);
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
> @@ -1080,7 +1080,7 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  	 * Power down mst path before disabling the port, otherwise we end
>  	 * up getting interrupts from the sink upon detecting link loss.
>  	 */
> -	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port,
> +	drm_dp_send_power_updown_phy(&intel_dp->mst.mgr, connector->port,
>  				     false);
>  
>  	/*
> @@ -1105,7 +1105,7 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  					      old_crtc_state, NULL);
>  
>  	drm_dbg_kms(display->drm, "active links %d\n",
> -		    intel_dp->active_mst_links);
> +		    intel_dp->mst.active_links);
>  }
>  
>  static void mst_stream_post_pll_disable(struct intel_atomic_state *state,
> @@ -1116,7 +1116,7 @@ static void mst_stream_post_pll_disable(struct intel_atomic_state *state,
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  
> -	if (intel_dp->active_mst_links == 0 &&
> +	if (intel_dp->mst.active_links == 0 &&
>  	    primary_encoder->post_pll_disable)
>  		primary_encoder->post_pll_disable(state, primary_encoder, old_crtc_state, old_conn_state);
>  }
> @@ -1129,7 +1129,7 @@ static void mst_stream_pre_pll_enable(struct intel_atomic_state *state,
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  
> -	if (intel_dp->active_mst_links == 0)
> +	if (intel_dp->mst.active_links == 0)
>  		primary_encoder->pre_pll_enable(state, primary_encoder,
>  						pipe_config, NULL);
>  	else
> @@ -1162,7 +1162,7 @@ static void intel_mst_reprobe_topology(struct intel_dp *intel_dp,
>  					       crtc_state->port_clock, crtc_state->lane_count))
>  		return;
>  
> -	drm_dp_mst_topology_queue_probe(&intel_dp->mst_mgr);
> +	drm_dp_mst_topology_queue_probe(&intel_dp->mst.mgr);
>  
>  	intel_mst_set_probed_link_params(intel_dp,
>  					 crtc_state->port_clock, crtc_state->lane_count);
> @@ -1180,7 +1180,7 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	struct drm_dp_mst_topology_state *mst_state =
> -		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> +		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst.mgr);
>  	int ret;
>  	bool first_mst_stream;
>  
> @@ -1189,17 +1189,17 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
>  	 */
>  	connector->encoder = encoder;
>  	intel_mst->connector = connector;
> -	first_mst_stream = intel_dp->active_mst_links == 0;
> +	first_mst_stream = intel_dp->mst.active_links == 0;
>  	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && first_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(pipe_config));
>  
>  	drm_dbg_kms(display->drm, "active links %d\n",
> -		    intel_dp->active_mst_links);
> +		    intel_dp->mst.active_links);
>  
>  	if (first_mst_stream)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  
> -	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
> +	drm_dp_send_power_updown_phy(&intel_dp->mst.mgr, connector->port, true);
>  
>  	intel_dp_sink_enable_decompression(state, connector, pipe_config);
>  
> @@ -1210,9 +1210,9 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
>  		intel_mst_reprobe_topology(intel_dp, pipe_config);
>  	}
>  
> -	intel_dp->active_mst_links++;
> +	intel_dp->mst.active_links++;
>  
> -	ret = drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
> +	ret = drm_dp_add_payload_part1(&intel_dp->mst.mgr, mst_state,
>  				       drm_atomic_get_mst_payload_state(mst_state, connector->port));
>  	if (ret < 0)
>  		intel_dp_queue_modeset_retry_for_link(state, primary_encoder, pipe_config);
> @@ -1277,9 +1277,9 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct drm_dp_mst_topology_state *mst_state =
> -		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> +		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst.mgr);
>  	enum transcoder trans = pipe_config->cpu_transcoder;
> -	bool first_mst_stream = intel_dp->active_mst_links == 1;
> +	bool first_mst_stream = intel_dp->mst.active_links == 1;
>  	struct intel_crtc *pipe_crtc;
>  	int ret, i, min_hblank;
>  
> @@ -1329,15 +1329,15 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
>  
>  	drm_dbg_kms(display->drm, "active links %d\n",
> -		    intel_dp->active_mst_links);
> +		    intel_dp->mst.active_links);
>  
>  	intel_ddi_wait_for_act_sent(encoder, pipe_config);
> -	drm_dp_check_act_status(&intel_dp->mst_mgr);
> +	drm_dp_check_act_status(&intel_dp->mst.mgr);
>  
>  	if (first_mst_stream)
>  		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
>  
> -	ret = drm_dp_add_payload_part2(&intel_dp->mst_mgr,
> +	ret = drm_dp_add_payload_part2(&intel_dp->mst.mgr,
>  				       drm_atomic_get_mst_payload_state(mst_state,
>  									connector->port));
>  	if (ret < 0)
> @@ -1402,7 +1402,7 @@ static int mst_connector_get_ddc_modes(struct drm_connector *_connector)
>  	if (!intel_display_driver_check_access(display))
>  		return drm_edid_connector_add_modes(&connector->base);
>  
> -	drm_edid = drm_dp_mst_edid_read(&connector->base, &intel_dp->mst_mgr, connector->port);
> +	drm_edid = drm_dp_mst_edid_read(&connector->base, &intel_dp->mst.mgr, connector->port);
>  
>  	ret = intel_connector_update_modes(&connector->base, drm_edid);
>  
> @@ -1464,7 +1464,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	struct intel_connector *connector = to_intel_connector(_connector);
>  	struct intel_display *display = to_intel_display(connector);
>  	struct intel_dp *intel_dp = connector->mst_port;
> -	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
>  	struct drm_dp_mst_port *port = connector->port;
>  	const int min_bpp = 18;
>  	int max_dotclk = display->cdclk.max_dotclk_freq;
> @@ -1579,7 +1579,7 @@ mst_connector_atomic_best_encoder(struct drm_connector *_connector,
>  	struct intel_dp *intel_dp = connector->mst_port;
>  	struct intel_crtc *crtc = to_intel_crtc(connector_state->crtc);
>  
> -	return &intel_dp->mst_encoders[crtc->pipe]->base.base;
> +	return &intel_dp->mst.stream_encoders[crtc->pipe]->base.base;
>  }
>  
>  static int
> @@ -1601,7 +1601,7 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
>  
>  	intel_dp_flush_connector_commits(connector);
>  
> -	return drm_dp_mst_detect_port(&connector->base, ctx, &intel_dp->mst_mgr,
> +	return drm_dp_mst_detect_port(&connector->base, ctx, &intel_dp->mst.mgr,
>  				      connector->port);
>  }
>  
> @@ -1731,7 +1731,7 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
>  			   struct drm_dp_mst_port *port,
>  			   const char *pathprop)
>  {
> -	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
> +	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst.mgr);
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct intel_connector *connector;
> @@ -1762,7 +1762,7 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
>  
>  	for_each_pipe(display, pipe) {
>  		struct drm_encoder *enc =
> -			&intel_dp->mst_encoders[pipe]->base.base;
> +			&intel_dp->mst.stream_encoders[pipe]->base.base;
>  
>  		ret = drm_connector_attach_encoder(&connector->base, enc);
>  		if (ret)
> @@ -1792,7 +1792,7 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
>  static void
>  mst_topology_poll_hpd_irq(struct drm_dp_mst_topology_mgr *mgr)
>  {
> -	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
> +	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst.mgr);
>  
>  	intel_hpd_trigger_irq(dp_to_dig_port(intel_dp));
>  }
> @@ -1865,14 +1865,14 @@ mst_stream_encoders_create(struct intel_digital_port *dig_port)
>  	enum pipe pipe;
>  
>  	for_each_pipe(display, pipe)
> -		intel_dp->mst_encoders[pipe] = mst_stream_encoder_create(dig_port, pipe);
> +		intel_dp->mst.stream_encoders[pipe] = mst_stream_encoder_create(dig_port, pipe);
>  	return true;
>  }
>  
>  int
>  intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port)
>  {
> -	return dig_port->dp.active_mst_links;
> +	return dig_port->dp.mst.active_links;
>  }
>  
>  int
> @@ -1892,15 +1892,15 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
>  	if (DISPLAY_VER(display) < 11 && port == PORT_E)
>  		return 0;
>  
> -	intel_dp->mst_mgr.cbs = &mst_topology_cbs;
> +	intel_dp->mst.mgr.cbs = &mst_topology_cbs;
>  
>  	/* create encoders */
>  	mst_stream_encoders_create(dig_port);
> -	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, display->drm,
> +	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst.mgr, display->drm,
>  					   &intel_dp->aux, 16,
>  					   INTEL_NUM_PIPES(display), conn_base_id);
>  	if (ret) {
> -		intel_dp->mst_mgr.cbs = NULL;
> +		intel_dp->mst.mgr.cbs = NULL;
>  		return ret;
>  	}
>  
> @@ -1909,7 +1909,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
>  
>  bool intel_dp_mst_source_support(struct intel_dp *intel_dp)
>  {
> -	return intel_dp->mst_mgr.cbs;
> +	return intel_dp->mst.mgr.cbs;
>  }
>  
>  void
> @@ -1920,10 +1920,10 @@ intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port)
>  	if (!intel_dp_mst_source_support(intel_dp))
>  		return;
>  
> -	drm_dp_mst_topology_mgr_destroy(&intel_dp->mst_mgr);
> +	drm_dp_mst_topology_mgr_destroy(&intel_dp->mst.mgr);
>  	/* encoders will get killed by normal cleanup */
>  
> -	intel_dp->mst_mgr.cbs = NULL;
> +	intel_dp->mst.mgr.cbs = NULL;
>  }
>  
>  bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state)
> @@ -1958,7 +1958,7 @@ intel_dp_mst_add_topology_state_for_connector(struct intel_atomic_state *state,
>  		return 0;
>  
>  	mst_state = drm_atomic_get_mst_topology_state(&state->base,
> -						      &connector->mst_port->mst_mgr);
> +						      &connector->mst_port->mst.mgr);
>  	if (IS_ERR(mst_state))
>  		return PTR_ERR(mst_state);
>  
> @@ -2140,7 +2140,7 @@ bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp)
>  	if (!intel_dp->is_mst)
>  		return true;
>  
> -	ret = drm_dp_dpcd_readb(intel_dp->mst_mgr.aux, DP_MSTM_CTRL, &val);
> +	ret = drm_dp_dpcd_readb(intel_dp->mst.mgr.aux, DP_MSTM_CTRL, &val);
>  
>  	/* Adjust the expected register value for SST + SideBand. */
>  	if (ret < 0 || val != (DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 7063e3f5c538..100f3fb1c1a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -136,7 +136,7 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
>  		data->k++;
>  
>  		/* if there is only one active stream */
> -		if (dig_port->dp.active_mst_links <= 1)
> +		if (dig_port->dp.mst.active_links <= 1)
>  			break;
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
> -- 
> 2.39.5
> 
