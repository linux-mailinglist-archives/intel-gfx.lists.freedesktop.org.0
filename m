Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8785A2FD6E3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 18:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC916E32F;
	Wed, 20 Jan 2021 17:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D126E32F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 17:30:30 +0000 (UTC)
IronPort-SDR: /0hJGGgr0HmwsG8L6LxeVWVAmIeU8h4qU9JBx96scrUXKxFh9MlSNmEneOPIXvEBnNZK+rqcBJ
 FdpvrnMcsaiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="176574608"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="176574608"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 09:30:06 -0800
IronPort-SDR: BhQLuuvJ4YvZiZIeN6tRoRUaxgvlO2UMpu0qlpGo/oeb5eHOMJNcaC2ktAFSXeFy/bpTW3Y+7V
 HYhFlpFIi16Q==
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="354381675"
Received: from sbhatta1-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.212.249.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 09:30:05 -0800
Date: Wed, 20 Jan 2021 12:30:03 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210120173003.GB3970@intel.com>
References: <20210120101834.19813-1-jani.nikula@intel.com>
 <20210120101834.19813-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120101834.19813-3-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp: abstract struct intel_dp
 pps members to a sub-struct
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 20, 2021 at 12:18:33PM +0200, Jani Nikula wrote:
> Add some namespacing to highlight what belongs where. No functional
> changes.
> 
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  |   8 +-
>  .../drm/i915/display/intel_display_types.h    |  61 +++---
>  drivers/gpu/drm/i915/display/intel_dp.c       |  14 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      | 192 +++++++++---------
>  4 files changed, 140 insertions(+), 135 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index cd7e5519ee7d..885d2d3c91a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2155,13 +2155,13 @@ static int i915_panel_show(struct seq_file *m, void *data)
>  		return -ENODEV;
>  
>  	seq_printf(m, "Panel power up delay: %d\n",
> -		   intel_dp->panel_power_up_delay);
> +		   intel_dp->pps.panel_power_up_delay);
>  	seq_printf(m, "Panel power down delay: %d\n",
> -		   intel_dp->panel_power_down_delay);
> +		   intel_dp->pps.panel_power_down_delay);
>  	seq_printf(m, "Backlight on delay: %d\n",
> -		   intel_dp->backlight_on_delay);
> +		   intel_dp->pps.backlight_on_delay);
>  	seq_printf(m, "Backlight off delay: %d\n",
> -		   intel_dp->backlight_off_delay);
> +		   intel_dp->pps.backlight_off_delay);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b601e804f854..1a9243426a25 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1369,6 +1369,38 @@ struct intel_dp_pcon_frl {
>  	int trained_rate_gbps;
>  };
>  
> +struct intel_pps {

PPS for Panel Power Something (Sequence? Struct?)

> +	int panel_power_up_delay;

if we have panel power already could we remove panel_power_ from
here to simply use pps.up_delay ?

> +	int panel_power_down_delay;
> +	int panel_power_cycle_delay;
> +	int backlight_on_delay;
> +	int backlight_off_delay;
> +	struct delayed_work panel_vdd_work;
> +	bool want_panel_vdd;
> +	unsigned long last_power_on;
> +	unsigned long last_backlight_off;
> +	ktime_t panel_power_off_time;
> +	intel_wakeref_t vdd_wakeref;
> +
> +	/*
> +	 * Pipe whose power sequencer is currently locked into
> +	 * this port. Only relevant on VLV/CHV.
> +	 */
> +	enum pipe pps_pipe;

and pps.pipe

> +	/*
> +	 * Pipe currently driving the port. Used for preventing
> +	 * the use of the PPS for any pipe currentrly driving
> +	 * external DP as that will mess things up on VLV.
> +	 */
> +	enum pipe active_pipe;
> +	/*
> +	 * Set if the sequencer may be reset due to a power transition,
> +	 * requiring a reinitialization. Only relevant on BXT.
> +	 */
> +	bool pps_reset;

and pps.reset ?

> +	struct edp_power_seq pps_delays;
> +};
> +
>  struct intel_dp {
>  	i915_reg_t output_reg;
>  	u32 DP;
> @@ -1408,35 +1440,8 @@ struct intel_dp {
>  	struct drm_dp_aux aux;
>  	u32 aux_busy_last_status;
>  	u8 train_set[4];
> -	int panel_power_up_delay;
> -	int panel_power_down_delay;
> -	int panel_power_cycle_delay;
> -	int backlight_on_delay;
> -	int backlight_off_delay;
> -	struct delayed_work panel_vdd_work;
> -	bool want_panel_vdd;
> -	unsigned long last_power_on;
> -	unsigned long last_backlight_off;
> -	ktime_t panel_power_off_time;
> -	intel_wakeref_t vdd_wakeref;
>  
> -	/*
> -	 * Pipe whose power sequencer is currently locked into
> -	 * this port. Only relevant on VLV/CHV.
> -	 */
> -	enum pipe pps_pipe;
> -	/*
> -	 * Pipe currently driving the port. Used for preventing
> -	 * the use of the PPS for any pipe currentrly driving
> -	 * external DP as that will mess things up on VLV.
> -	 */
> -	enum pipe active_pipe;
> -	/*
> -	 * Set if the sequencer may be reset due to a power transition,
> -	 * requiring a reinitialization. Only relevant on BXT.
> -	 */
> -	bool pps_reset;
> -	struct edp_power_seq pps_delays;
> +	struct intel_pps pps;
>  
>  	bool can_mst; /* this port supports mst */
>  	bool is_mst;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8b9c20555f0e..d815087a26aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4129,7 +4129,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
>  	}
>  
> -	msleep(intel_dp->panel_power_down_delay);
> +	msleep(intel_dp->pps.panel_power_down_delay);
>  
>  	intel_dp->DP = DP;
>  
> @@ -4137,7 +4137,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  		intel_wakeref_t wakeref;
>  
>  		with_intel_pps_lock(intel_dp, wakeref)
> -			intel_dp->active_pipe = INVALID_PIPE;
> +			intel_dp->pps.active_pipe = INVALID_PIPE;
>  	}
>  }
>  
> @@ -6368,7 +6368,7 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
>  		intel_wakeref_t wakeref;
>  
>  		with_intel_pps_lock(intel_dp, wakeref)
> -			intel_dp->active_pipe = vlv_active_pipe(intel_dp);
> +			intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
>  	}
>  
>  	intel_pps_encoder_reset(intel_dp);
> @@ -7139,7 +7139,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  		pipe = vlv_active_pipe(intel_dp);
>  
>  		if (pipe != PIPE_A && pipe != PIPE_B)
> -			pipe = intel_dp->pps_pipe;
> +			pipe = intel_dp->pps.pps_pipe;
>  
>  		if (pipe != PIPE_A && pipe != PIPE_B)
>  			pipe = PIPE_A;
> @@ -7216,8 +7216,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	intel_dp_set_source_rates(intel_dp);
>  
>  	intel_dp->reset_link_params = true;
> -	intel_dp->pps_pipe = INVALID_PIPE;
> -	intel_dp->active_pipe = INVALID_PIPE;
> +	intel_dp->pps.pps_pipe = INVALID_PIPE;
> +	intel_dp->pps.active_pipe = INVALID_PIPE;
>  
>  	/* Preserve the current hw state. */
>  	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
> @@ -7235,7 +7235,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	}
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		intel_dp->active_pipe = vlv_active_pipe(intel_dp);
> +		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
>  
>  	/*
>  	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 69d9d41b6d22..c4867a8020a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -44,7 +44,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	enum pipe pipe = intel_dp->pps_pipe;
> +	enum pipe pipe = intel_dp->pps.pps_pipe;
>  	bool pll_enabled, release_cl_override = false;
>  	enum dpio_phy phy = DPIO_PHY(pipe);
>  	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
> @@ -130,18 +130,18 @@ static enum pipe vlv_find_free_pps(struct drm_i915_private *dev_priv)
>  
>  		if (encoder->type == INTEL_OUTPUT_EDP) {
>  			drm_WARN_ON(&dev_priv->drm,
> -				    intel_dp->active_pipe != INVALID_PIPE &&
> -				    intel_dp->active_pipe !=
> -				    intel_dp->pps_pipe);
> +				    intel_dp->pps.active_pipe != INVALID_PIPE &&
> +				    intel_dp->pps.active_pipe !=
> +				    intel_dp->pps.pps_pipe);
>  
> -			if (intel_dp->pps_pipe != INVALID_PIPE)
> -				pipes &= ~(1 << intel_dp->pps_pipe);
> +			if (intel_dp->pps.pps_pipe != INVALID_PIPE)
> +				pipes &= ~(1 << intel_dp->pps.pps_pipe);
>  		} else {
>  			drm_WARN_ON(&dev_priv->drm,
> -				    intel_dp->pps_pipe != INVALID_PIPE);
> +				    intel_dp->pps.pps_pipe != INVALID_PIPE);
>  
> -			if (intel_dp->active_pipe != INVALID_PIPE)
> -				pipes &= ~(1 << intel_dp->active_pipe);
> +			if (intel_dp->pps.active_pipe != INVALID_PIPE)
> +				pipes &= ~(1 << intel_dp->pps.active_pipe);
>  		}
>  	}
>  
> @@ -163,11 +163,11 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
>  	/* We should never land here with regular DP ports */
>  	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
>  
> -	drm_WARN_ON(&dev_priv->drm, intel_dp->active_pipe != INVALID_PIPE &&
> -		    intel_dp->active_pipe != intel_dp->pps_pipe);
> +	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE &&
> +		    intel_dp->pps.active_pipe != intel_dp->pps.pps_pipe);
>  
> -	if (intel_dp->pps_pipe != INVALID_PIPE)
> -		return intel_dp->pps_pipe;
> +	if (intel_dp->pps.pps_pipe != INVALID_PIPE)
> +		return intel_dp->pps.pps_pipe;
>  
>  	pipe = vlv_find_free_pps(dev_priv);
>  
> @@ -179,11 +179,11 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
>  		pipe = PIPE_A;
>  
>  	vlv_steal_power_sequencer(dev_priv, pipe);
> -	intel_dp->pps_pipe = pipe;
> +	intel_dp->pps.pps_pipe = pipe;
>  
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "picked pipe %c power sequencer for [ENCODER:%d:%s]\n",
> -		    pipe_name(intel_dp->pps_pipe),
> +		    pipe_name(intel_dp->pps.pps_pipe),
>  		    dig_port->base.base.base.id,
>  		    dig_port->base.base.name);
>  
> @@ -197,7 +197,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
>  	 */
>  	vlv_power_sequencer_kick(intel_dp);
>  
> -	return intel_dp->pps_pipe;
> +	return intel_dp->pps.pps_pipe;
>  }
>  
>  static int
> @@ -211,10 +211,10 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
>  	/* We should never land here with regular DP ports */
>  	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
>  
> -	if (!intel_dp->pps_reset)
> +	if (!intel_dp->pps.pps_reset)
>  		return backlight_controller;
>  
> -	intel_dp->pps_reset = false;
> +	intel_dp->pps.pps_reset = false;
>  
>  	/*
>  	 * Only the HW needs to be reprogrammed, the SW state is fixed and
> @@ -280,19 +280,19 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
>  
>  	/* try to find a pipe with this port selected */
>  	/* first pick one where the panel is on */
> -	intel_dp->pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
> -						  vlv_pipe_has_pp_on);
> +	intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
> +						      vlv_pipe_has_pp_on);
>  	/* didn't find one? pick one where vdd is on */
> -	if (intel_dp->pps_pipe == INVALID_PIPE)
> -		intel_dp->pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
> -							  vlv_pipe_has_vdd_on);
> +	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
> +		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
> +							      vlv_pipe_has_vdd_on);
>  	/* didn't find one? pick one with just the correct port */
> -	if (intel_dp->pps_pipe == INVALID_PIPE)
> -		intel_dp->pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
> -							  vlv_pipe_any);
> +	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
> +		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
> +							      vlv_pipe_any);
>  
>  	/* didn't find one? just let vlv_power_sequencer_pipe() pick one when needed */
> -	if (intel_dp->pps_pipe == INVALID_PIPE) {
> +	if (intel_dp->pps.pps_pipe == INVALID_PIPE) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "no initial power sequencer for [ENCODER:%d:%s]\n",
>  			    dig_port->base.base.base.id,
> @@ -304,7 +304,7 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
>  		    "initial power sequencer for [ENCODER:%d:%s]: pipe %c\n",
>  		    dig_port->base.base.base.id,
>  		    dig_port->base.base.name,
> -		    pipe_name(intel_dp->pps_pipe));
> +		    pipe_name(intel_dp->pps.pps_pipe));
>  }
>  
>  void intel_pps_reset_all(struct drm_i915_private *dev_priv)
> @@ -331,15 +331,15 @@ void intel_pps_reset_all(struct drm_i915_private *dev_priv)
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  		drm_WARN_ON(&dev_priv->drm,
> -			    intel_dp->active_pipe != INVALID_PIPE);
> +			    intel_dp->pps.active_pipe != INVALID_PIPE);
>  
>  		if (encoder->type != INTEL_OUTPUT_EDP)
>  			continue;
>  
>  		if (IS_GEN9_LP(dev_priv))
> -			intel_dp->pps_reset = true;
> +			intel_dp->pps.pps_reset = true;
>  		else
> -			intel_dp->pps_pipe = INVALID_PIPE;
> +			intel_dp->pps.pps_pipe = INVALID_PIPE;
>  	}
>  }
>  
> @@ -403,7 +403,7 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
>  	lockdep_assert_held(&dev_priv->pps_mutex);
>  
>  	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> -	    intel_dp->pps_pipe == INVALID_PIPE)
> +	    intel_dp->pps.pps_pipe == INVALID_PIPE)
>  		return false;
>  
>  	return (intel_de_read(dev_priv, _pp_stat_reg(intel_dp)) & PP_ON) != 0;
> @@ -416,7 +416,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
>  	lockdep_assert_held(&dev_priv->pps_mutex);
>  
>  	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> -	    intel_dp->pps_pipe == INVALID_PIPE)
> +	    intel_dp->pps.pps_pipe == INVALID_PIPE)
>  		return false;
>  
>  	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
> @@ -506,13 +506,13 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>  	/* take the difference of currrent time and panel power off time
>  	 * and then make panel wait for t11_t12 if needed. */
>  	panel_power_on_time = ktime_get_boottime();
> -	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->panel_power_off_time);
> +	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->pps.panel_power_off_time);
>  
>  	/* When we disable the VDD override bit last we have to do the manual
>  	 * wait. */
> -	if (panel_power_off_duration < (s64)intel_dp->panel_power_cycle_delay)
> +	if (panel_power_off_duration < (s64)intel_dp->pps.panel_power_cycle_delay)
>  		wait_remaining_ms_from_jiffies(jiffies,
> -				       intel_dp->panel_power_cycle_delay - panel_power_off_duration);
> +				       intel_dp->pps.panel_power_cycle_delay - panel_power_off_duration);
>  
>  	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
>  }
> @@ -530,14 +530,14 @@ void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
>  
>  static void wait_backlight_on(struct intel_dp *intel_dp)
>  {
> -	wait_remaining_ms_from_jiffies(intel_dp->last_power_on,
> -				       intel_dp->backlight_on_delay);
> +	wait_remaining_ms_from_jiffies(intel_dp->pps.last_power_on,
> +				       intel_dp->pps.backlight_on_delay);
>  }
>  
>  static void edp_wait_backlight_off(struct intel_dp *intel_dp)
>  {
> -	wait_remaining_ms_from_jiffies(intel_dp->last_backlight_off,
> -				       intel_dp->backlight_off_delay);
> +	wait_remaining_ms_from_jiffies(intel_dp->pps.last_backlight_off,
> +				       intel_dp->pps.backlight_off_delay);
>  }
>  
>  /* Read the current pp_control value, unlocking the register if it
> @@ -571,22 +571,22 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	u32 pp;
>  	i915_reg_t pp_stat_reg, pp_ctrl_reg;
> -	bool need_to_disable = !intel_dp->want_panel_vdd;
> +	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
>  
>  	lockdep_assert_held(&dev_priv->pps_mutex);
>  
>  	if (!intel_dp_is_edp(intel_dp))
>  		return false;
>  
> -	cancel_delayed_work(&intel_dp->panel_vdd_work);
> -	intel_dp->want_panel_vdd = true;
> +	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
> +	intel_dp->pps.want_panel_vdd = true;
>  
>  	if (edp_have_panel_vdd(intel_dp))
>  		return need_to_disable;
>  
> -	drm_WARN_ON(&dev_priv->drm, intel_dp->vdd_wakeref);
> -	intel_dp->vdd_wakeref = intel_display_power_get(dev_priv,
> -							intel_aux_power_domain(dig_port));
> +	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
> +	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
> +							    intel_aux_power_domain(dig_port));
>  
>  	drm_dbg_kms(&dev_priv->drm, "Turning [ENCODER:%d:%s] VDD on\n",
>  		    dig_port->base.base.base.id,
> @@ -614,7 +614,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
>  			    "[ENCODER:%d:%s] panel power wasn't enabled\n",
>  			    dig_port->base.base.base.id,
>  			    dig_port->base.base.name);
> -		msleep(intel_dp->panel_power_up_delay);
> +		msleep(intel_dp->pps.panel_power_up_delay);
>  	}
>  
>  	return need_to_disable;
> @@ -652,7 +652,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
>  
>  	lockdep_assert_held(&dev_priv->pps_mutex);
>  
> -	drm_WARN_ON(&dev_priv->drm, intel_dp->want_panel_vdd);
> +	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.want_panel_vdd);
>  
>  	if (!edp_have_panel_vdd(intel_dp))
>  		return;
> @@ -676,11 +676,11 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
>  		    intel_de_read(dev_priv, pp_ctrl_reg));
>  
>  	if ((pp & PANEL_POWER_ON) == 0)
> -		intel_dp->panel_power_off_time = ktime_get_boottime();
> +		intel_dp->pps.panel_power_off_time = ktime_get_boottime();
>  
>  	intel_display_power_put(dev_priv,
>  				intel_aux_power_domain(dig_port),
> -				fetch_and_zero(&intel_dp->vdd_wakeref));
> +				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
>  }
>  
>  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
> @@ -690,7 +690,7 @@ void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>  
> -	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
> +	cancel_delayed_work_sync(&intel_dp->pps.panel_vdd_work);
>  	/*
>  	 * vdd might still be enabled due to the delayed vdd off.
>  	 * Make sure vdd is actually turned off here.
> @@ -701,13 +701,13 @@ void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
>  
>  static void edp_panel_vdd_work(struct work_struct *__work)
>  {
> -	struct intel_dp *intel_dp =
> -		container_of(to_delayed_work(__work),
> -			     struct intel_dp, panel_vdd_work);
> +	struct intel_pps *pps = container_of(to_delayed_work(__work),
> +					     struct intel_pps, panel_vdd_work);
> +	struct intel_dp *intel_dp = container_of(pps, struct intel_dp, pps);
>  	intel_wakeref_t wakeref;
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
> -		if (!intel_dp->want_panel_vdd)
> +		if (!intel_dp->pps.want_panel_vdd)
>  			intel_pps_vdd_off_sync_unlocked(intel_dp);
>  	}
>  }
> @@ -721,8 +721,8 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
>  	 * down delay) to keep the panel power up across a sequence of
>  	 * operations.
>  	 */
> -	delay = msecs_to_jiffies(intel_dp->panel_power_cycle_delay * 5);
> -	schedule_delayed_work(&intel_dp->panel_vdd_work, delay);
> +	delay = msecs_to_jiffies(intel_dp->pps.panel_power_cycle_delay * 5);
> +	schedule_delayed_work(&intel_dp->pps.panel_vdd_work, delay);
>  }
>  
>  /*
> @@ -739,11 +739,11 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>  
> -	I915_STATE_WARN(!intel_dp->want_panel_vdd, "[ENCODER:%d:%s] VDD not forced on",
> +	I915_STATE_WARN(!intel_dp->pps.want_panel_vdd, "[ENCODER:%d:%s] VDD not forced on",
>  			dp_to_dig_port(intel_dp)->base.base.base.id,
>  			dp_to_dig_port(intel_dp)->base.base.name);
>  
> -	intel_dp->want_panel_vdd = false;
> +	intel_dp->pps.want_panel_vdd = false;
>  
>  	if (sync)
>  		intel_pps_vdd_off_sync_unlocked(intel_dp);
> @@ -791,7 +791,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  	intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  
>  	wait_panel_on(intel_dp);
> -	intel_dp->last_power_on = jiffies;
> +	intel_dp->pps.last_power_on = jiffies;
>  
>  	if (IS_GEN(dev_priv, 5)) {
>  		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
> @@ -826,7 +826,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
>  	drm_dbg_kms(&dev_priv->drm, "Turn [ENCODER:%d:%s] panel power off\n",
>  		    dig_port->base.base.base.id, dig_port->base.base.name);
>  
> -	drm_WARN(&dev_priv->drm, !intel_dp->want_panel_vdd,
> +	drm_WARN(&dev_priv->drm, !intel_dp->pps.want_panel_vdd,
>  		 "Need [ENCODER:%d:%s] VDD to turn off panel\n",
>  		 dig_port->base.base.base.id, dig_port->base.base.name);
>  
> @@ -838,18 +838,18 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
>  
>  	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
>  
> -	intel_dp->want_panel_vdd = false;
> +	intel_dp->pps.want_panel_vdd = false;
>  
>  	intel_de_write(dev_priv, pp_ctrl_reg, pp);
>  	intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  
>  	wait_panel_off(intel_dp);
> -	intel_dp->panel_power_off_time = ktime_get_boottime();
> +	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
>  
>  	/* We got a reference when we enabled the VDD. */
>  	intel_display_power_put(dev_priv,
>  				intel_aux_power_domain(dig_port),
> -				fetch_and_zero(&intel_dp->vdd_wakeref));
> +				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
>  }
>  
>  void intel_pps_off(struct intel_dp *intel_dp)
> @@ -909,7 +909,7 @@ void intel_pps_backlight_off(struct intel_dp *intel_dp)
>  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  	}
>  
> -	intel_dp->last_backlight_off = jiffies;
> +	intel_dp->pps.last_backlight_off = jiffies;
>  	edp_wait_backlight_off(intel_dp);
>  }
>  
> @@ -943,10 +943,10 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> -	enum pipe pipe = intel_dp->pps_pipe;
> +	enum pipe pipe = intel_dp->pps.pps_pipe;
>  	i915_reg_t pp_on_reg = PP_ON_DELAYS(pipe);
>  
> -	drm_WARN_ON(&dev_priv->drm, intel_dp->active_pipe != INVALID_PIPE);
> +	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
>  
>  	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
>  		return;
> @@ -969,7 +969,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
>  	intel_de_write(dev_priv, pp_on_reg, 0);
>  	intel_de_posting_read(dev_priv, pp_on_reg);
>  
> -	intel_dp->pps_pipe = INVALID_PIPE;
> +	intel_dp->pps.pps_pipe = INVALID_PIPE;
>  }
>  
>  static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
> @@ -982,12 +982,12 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
>  	for_each_intel_dp(&dev_priv->drm, encoder) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
> -		drm_WARN(&dev_priv->drm, intel_dp->active_pipe == pipe,
> +		drm_WARN(&dev_priv->drm, intel_dp->pps.active_pipe == pipe,
>  			 "stealing pipe %c power sequencer from active [ENCODER:%d:%s]\n",
>  			 pipe_name(pipe), encoder->base.base.id,
>  			 encoder->base.name);
>  
> -		if (intel_dp->pps_pipe != pipe)
> +		if (intel_dp->pps.pps_pipe != pipe)
>  			continue;
>  
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1009,10 +1009,10 @@ void vlv_pps_init(struct intel_encoder *encoder,
>  
>  	lockdep_assert_held(&dev_priv->pps_mutex);
>  
> -	drm_WARN_ON(&dev_priv->drm, intel_dp->active_pipe != INVALID_PIPE);
> +	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
>  
> -	if (intel_dp->pps_pipe != INVALID_PIPE &&
> -	    intel_dp->pps_pipe != crtc->pipe) {
> +	if (intel_dp->pps.pps_pipe != INVALID_PIPE &&
> +	    intel_dp->pps.pps_pipe != crtc->pipe) {
>  		/*
>  		 * If another power sequencer was being used on this
>  		 * port previously make sure to turn off vdd there while
> @@ -1027,17 +1027,17 @@ void vlv_pps_init(struct intel_encoder *encoder,
>  	 */
>  	vlv_steal_power_sequencer(dev_priv, crtc->pipe);
>  
> -	intel_dp->active_pipe = crtc->pipe;
> +	intel_dp->pps.active_pipe = crtc->pipe;
>  
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>  
>  	/* now it's all ours */
> -	intel_dp->pps_pipe = crtc->pipe;
> +	intel_dp->pps.pps_pipe = crtc->pipe;
>  
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "initializing pipe %c power sequencer for [ENCODER:%d:%s]\n",
> -		    pipe_name(intel_dp->pps_pipe), encoder->base.base.id,
> +		    pipe_name(intel_dp->pps.pps_pipe), encoder->base.base.id,
>  		    encoder->base.name);
>  
>  	/* init power sequencer on this pipe and port */
> @@ -1063,9 +1063,9 @@ static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
>  	 */
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "VDD left on by BIOS, adjusting state tracking\n");
> -	drm_WARN_ON(&dev_priv->drm, intel_dp->vdd_wakeref);
> -	intel_dp->vdd_wakeref = intel_display_power_get(dev_priv,
> -							intel_aux_power_domain(dig_port));
> +	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
> +	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
> +							    intel_aux_power_domain(dig_port));
>  
>  	edp_panel_vdd_schedule_off(intel_dp);
>  }
> @@ -1085,9 +1085,9 @@ bool intel_pps_have_power(struct intel_dp *intel_dp)
>  
>  static void pps_init_timestamps(struct intel_dp *intel_dp)
>  {
> -	intel_dp->panel_power_off_time = ktime_get_boottime();
> -	intel_dp->last_power_on = jiffies;
> -	intel_dp->last_backlight_off = jiffies;
> +	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
> +	intel_dp->pps.last_power_on = jiffies;
> +	intel_dp->pps.last_backlight_off = jiffies;
>  }
>  
>  static void
> @@ -1137,7 +1137,7 @@ static void
>  intel_pps_verify_state(struct intel_dp *intel_dp)
>  {
>  	struct edp_power_seq hw;
> -	struct edp_power_seq *sw = &intel_dp->pps_delays;
> +	struct edp_power_seq *sw = &intel_dp->pps.pps_delays;
>  
>  	intel_pps_readout_hw_state(intel_dp, &hw);
>  
> @@ -1153,7 +1153,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct edp_power_seq cur, vbt, spec,
> -		*final = &intel_dp->pps_delays;
> +		*final = &intel_dp->pps.pps_delays;
>  
>  	lockdep_assert_held(&dev_priv->pps_mutex);
>  
> @@ -1210,22 +1210,22 @@ static void pps_init_delays(struct intel_dp *intel_dp)
>  #undef assign_final
>  
>  #define get_delay(field)	(DIV_ROUND_UP(final->field, 10))
> -	intel_dp->panel_power_up_delay = get_delay(t1_t3);
> -	intel_dp->backlight_on_delay = get_delay(t8);
> -	intel_dp->backlight_off_delay = get_delay(t9);
> -	intel_dp->panel_power_down_delay = get_delay(t10);
> -	intel_dp->panel_power_cycle_delay = get_delay(t11_t12);
> +	intel_dp->pps.panel_power_up_delay = get_delay(t1_t3);
> +	intel_dp->pps.backlight_on_delay = get_delay(t8);
> +	intel_dp->pps.backlight_off_delay = get_delay(t9);
> +	intel_dp->pps.panel_power_down_delay = get_delay(t10);
> +	intel_dp->pps.panel_power_cycle_delay = get_delay(t11_t12);
>  #undef get_delay
>  
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "panel power up delay %d, power down delay %d, power cycle delay %d\n",
> -		    intel_dp->panel_power_up_delay,
> -		    intel_dp->panel_power_down_delay,
> -		    intel_dp->panel_power_cycle_delay);
> +		    intel_dp->pps.panel_power_up_delay,
> +		    intel_dp->pps.panel_power_down_delay,
> +		    intel_dp->pps.panel_power_cycle_delay);
>  
>  	drm_dbg_kms(&dev_priv->drm, "backlight on delay %d, off delay %d\n",
> -		    intel_dp->backlight_on_delay,
> -		    intel_dp->backlight_off_delay);
> +		    intel_dp->pps.backlight_on_delay,
> +		    intel_dp->pps.backlight_off_delay);
>  
>  	/*
>  	 * We override the HW backlight delays to 1 because we do manual waits
> @@ -1251,7 +1251,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
>  	int div = RUNTIME_INFO(dev_priv)->rawclk_freq / 1000;
>  	struct pps_registers regs;
>  	enum port port = dp_to_dig_port(intel_dp)->base.port;
> -	const struct edp_power_seq *seq = &intel_dp->pps_delays;
> +	const struct edp_power_seq *seq = &intel_dp->pps.pps_delays;
>  
>  	lockdep_assert_held(&dev_priv->pps_mutex);
>  
> @@ -1364,7 +1364,7 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
>  
>  void intel_pps_init(struct intel_dp *intel_dp)
>  {
> -	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
> +	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>  
>  	pps_init_timestamps(intel_dp);
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
