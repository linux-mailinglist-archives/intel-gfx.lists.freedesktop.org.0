Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C52E6E82
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 07:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3948989173;
	Tue, 29 Dec 2020 06:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5847E89173
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 06:30:27 +0000 (UTC)
IronPort-SDR: nSuKRig6LIgFlW4OraAU8wW878lHIqOMgXPQbNkXHd+DZBFxsrtmT11e83zSmu1bj6OJtbyZbI
 Yujf3e4L9UpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="176560287"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="176560287"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 22:30:26 -0800
IronPort-SDR: X7KUv+SJ8U2sbs9GqvLjEGFKiSKUhBm07HdvMla+YdJOE6cViDja813Eq6nIvxlXA/UZ9wYUcG
 Fvu48AiBVdrw==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="343970536"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 22:30:25 -0800
Date: Tue, 29 Dec 2020 11:45:33 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229061532.GB11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <4bf586da0ac828353940c0d5a643bacbb4399d7b.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bf586da0ac828353940c0d5a643bacbb4399d7b.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/pps: rename
 intel_edp_panel_* to intel_pps_*
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-22 at 20:19:44 +0530, Jani Nikula wrote:
> Follow the usual naming pattern for functions. We don't need to repeat
> "panel" here.
> 
> Follow the usual naming pattern for functions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |  8 ++++----
>  drivers/gpu/drm/i915/display/intel_dp.c  | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_pps.c | 18 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_pps.h | 11 +++++------
>  4 files changed, 23 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 9ddbe8b8730b..83300ee8c3fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3556,7 +3556,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  
>  	/* 2. Enable Panel Power if PPS is required */
> -	intel_edp_panel_on(intel_dp);
> +	intel_pps_on(intel_dp);
>  
>  	/*
>  	 * 3. For non-TBT Type-C ports, set FIA lane count
> @@ -3695,7 +3695,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				 crtc_state->port_clock,
>  				 crtc_state->lane_count);
>  
> -	intel_edp_panel_on(intel_dp);
> +	intel_pps_on(intel_dp);
>  
>  	intel_ddi_clk_select(encoder, crtc_state);
>  
> @@ -3937,8 +3937,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  	if (INTEL_GEN(dev_priv) >= 12)
>  		intel_ddi_disable_pipe_clock(old_crtc_state);
>  
> -	intel_edp_panel_vdd_on(intel_dp);
> -	intel_edp_panel_off(intel_dp);
> +	intel_pps_vdd_on(intel_dp);
> +	intel_pps_off(intel_dp);
>  
>  	if (!intel_phy_is_tc(dev_priv, phy) ||
>  	    dig_port->tc_mode != TC_PORT_TBT_ALT)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9813fb7e109c..2052ee228077 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2947,10 +2947,10 @@ static void intel_disable_dp(struct intel_atomic_state *state,
>  
>  	/* Make sure the panel is off before trying to change the mode. But also
>  	 * ensure that we have vdd while we switch off the panel. */
> -	intel_edp_panel_vdd_on(intel_dp);
> +	intel_pps_vdd_on(intel_dp);
>  	intel_edp_backlight_off(old_conn_state);
>  	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
> -	intel_edp_panel_off(intel_dp);
> +	intel_pps_off(intel_dp);
>  }
>  
>  static void g4x_disable_dp(struct intel_atomic_state *state,
> @@ -5899,7 +5899,7 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
>  			 * something nasty with it.
>  			 */
>  			intel_dp_pps_init(intel_dp);
> -			intel_edp_panel_vdd_sanitize(intel_dp);
> +			intel_pps_vdd_sanitize(intel_dp);
>  		}
>  	}
>  }
> @@ -6073,7 +6073,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  
>  	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
> -	    (long_hpd || !intel_edp_have_power(intel_dp))) {
> +	    (long_hpd || !intel_pps_have_power(intel_dp))) {
>  		/*
>  		 * vdd off can generate a long/short pulse on eDP which
>  		 * would require vdd on to handle it, and thus we
> @@ -6631,7 +6631,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	with_intel_pps_lock(intel_dp, wakeref) {
>  		intel_dp_init_panel_power_timestamps(intel_dp);
>  		intel_dp_pps_init(intel_dp);
> -		intel_edp_panel_vdd_sanitize(intel_dp);
> +		intel_pps_vdd_sanitize(intel_dp);
>  	}
>  
>  	/* Cache DPCD and EDID for edp. */
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 0edda87dee94..1f8ea3c41440 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -561,7 +561,7 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
>  /*
>   * Must be paired with edp_panel_vdd_off().
>   * Must hold pps_mutex around the whole on/off sequence.
> - * Can be nested with intel_edp_panel_vdd_{on,off}() calls.
> + * Can be nested with intel_pps_vdd_{on,off}() calls.
>   */
>  bool edp_panel_vdd_on(struct intel_dp *intel_dp)
>  {
> @@ -619,13 +619,13 @@ bool edp_panel_vdd_on(struct intel_dp *intel_dp)
>  }
>  
>  /*
> - * Must be paired with intel_edp_panel_vdd_off() or
> - * intel_edp_panel_off().
> + * Must be paired with intel_pps_vdd_off() or
IMHO can we change the comment, there is no function with name intel_pps_vdd_off()
Thanks,
Anshuman.
> + * intel_pps_off().
>   * Nested calls to these functions are not allowed since
>   * we drop the lock. Caller must use some higher level
>   * locking to prevent nested calls from other threads.
>   */
> -void intel_edp_panel_vdd_on(struct intel_dp *intel_dp)
> +void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  {
>  	intel_wakeref_t wakeref;
>  	bool vdd;
> @@ -711,7 +711,7 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
>  /*
>   * Must be paired with edp_panel_vdd_on().
>   * Must hold pps_mutex around the whole on/off sequence.
> - * Can be nested with intel_edp_panel_vdd_{on,off}() calls.
> + * Can be nested with intel_pps_vdd_{on,off}() calls.
>   */
>  void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
>  {
> @@ -783,7 +783,7 @@ void edp_panel_on(struct intel_dp *intel_dp)
>  	}
>  }
>  
> -void intel_edp_panel_on(struct intel_dp *intel_dp)
> +void intel_pps_on(struct intel_dp *intel_dp)
>  {
>  	intel_wakeref_t wakeref;
>  
> @@ -835,7 +835,7 @@ void edp_panel_off(struct intel_dp *intel_dp)
>  				fetch_and_zero(&intel_dp->vdd_wakeref));
>  }
>  
> -void intel_edp_panel_off(struct intel_dp *intel_dp)
> +void intel_pps_off(struct intel_dp *intel_dp)
>  {
>  	intel_wakeref_t wakeref;
>  
> @@ -1028,7 +1028,7 @@ void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
>  	intel_dp_init_panel_power_sequencer_registers(intel_dp, true);
>  }
>  
> -void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp)
> +void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> @@ -1053,7 +1053,7 @@ void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp)
>  	edp_panel_vdd_schedule_off(intel_dp);
>  }
>  
> -bool intel_edp_have_power(struct intel_dp *intel_dp)
> +bool intel_pps_have_power(struct intel_dp *intel_dp)
>  {
>  	intel_wakeref_t wakeref;
>  	bool have_power = false;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 81e4e9fc3cf5..69f670678d0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -34,12 +34,11 @@ void edp_panel_on(struct intel_dp *intel_dp);
>  void edp_panel_off(struct intel_dp *intel_dp);
>  void edp_panel_vdd_work(struct work_struct *__work);
>  
> -void intel_edp_panel_vdd_on(struct intel_dp *intel_dp);
> -void intel_edp_panel_on(struct intel_dp *intel_dp);
> -void intel_edp_panel_off(struct intel_dp *intel_dp);
> -bool intel_edp_have_power(struct intel_dp *intel_dp);
> -
> -void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp);
> +void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
> +void intel_pps_vdd_on(struct intel_dp *intel_dp);
> +void intel_pps_on(struct intel_dp *intel_dp);
> +void intel_pps_off(struct intel_dp *intel_dp);
> +bool intel_pps_have_power(struct intel_dp *intel_dp);
>  
>  void wait_panel_power_cycle(struct intel_dp *intel_dp);
>  
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
