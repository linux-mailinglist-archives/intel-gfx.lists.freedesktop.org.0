Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4FF2E6EA3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 07:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91F388FFA;
	Tue, 29 Dec 2020 06:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF6988FE2
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 06:49:57 +0000 (UTC)
IronPort-SDR: niQB58i2eiaN3c8LWg7f3ln3bKV5DB/qygbiFzAfCuxdNe5qYdLTL/sh1cRCeCtWTPEr+eqBfb
 oEP8Tm5lDJug==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="156252211"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="156252211"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 22:49:57 -0800
IronPort-SDR: 5HwNgsaENz9/sEKeWwYH+lWSUcZEfAxsD3ZfF8fHelAcrPtSru+veXZ5+OrrryTXJQVoQ/Cze0
 yBwbHcsIt+Ag==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="395326711"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 22:49:56 -0800
Date: Tue, 29 Dec 2020 12:05:04 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229063504.GC11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <4fc39e47c1f66a8cfc4a4bb6b8f15b9156cad05f.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4fc39e47c1f66a8cfc4a4bb6b8f15b9156cad05f.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/pps: rename edp_panel_* to
 intel_pps_*_unlocked
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

On 2020-12-22 at 20:19:45 +0530, Jani Nikula wrote:
> Follow the usual naming pattern for functions, both for the prefix and
> the _unlocked suffix for functions that expect the lock to be held when
IMHO referring * pps lock *  would be good in commit log.
Thanks,
Anshuman.
> calling.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 16 +++++++--------
>  drivers/gpu/drm/i915/display/intel_pps.c | 26 ++++++++++++------------
>  drivers/gpu/drm/i915/display/intel_pps.h | 10 ++++-----
>  3 files changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2052ee228077..f2794cc4292a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1038,7 +1038,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
>  	 * ourselves.
>  	 */
> -	vdd = edp_panel_vdd_on(intel_dp);
> +	vdd = intel_pps_vdd_on_unlocked(intel_dp);
>  
>  	/* dp aux is extremely sensitive to irq latency, hence request the
>  	 * lowest possible wakeup latency and so prevent the cpu from going into
> @@ -1180,7 +1180,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	cpu_latency_qos_update_request(&i915->pm_qos, PM_QOS_DEFAULT_VALUE);
>  
>  	if (vdd)
> -		edp_panel_vdd_off(intel_dp, false);
> +		intel_pps_vdd_off_unlocked(intel_dp, false);
>  
>  	intel_pps_unlock(intel_dp, pps_wakeref);
>  	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
> @@ -3159,9 +3159,9 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  
>  		intel_dp_enable_port(intel_dp, pipe_config);
>  
> -		edp_panel_vdd_on(intel_dp);
> -		edp_panel_on(intel_dp);
> -		edp_panel_vdd_off(intel_dp, true);
> +		intel_pps_vdd_on_unlocked(intel_dp);
> +		intel_pps_on_unlocked(intel_dp);
> +		intel_pps_vdd_off_unlocked(intel_dp, true);
>  	}
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> @@ -5818,7 +5818,7 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
>  		 * Make sure vdd is actually turned off here.
>  		 */
>  		with_intel_pps_lock(intel_dp, wakeref)
> -			edp_panel_vdd_off_sync(intel_dp);
> +			intel_pps_vdd_off_sync_unlocked(intel_dp);
>  	}
>  
>  	intel_dp_aux_fini(intel_dp);
> @@ -5846,7 +5846,7 @@ void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
>  	 */
>  	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		edp_panel_vdd_off_sync(intel_dp);
> +		intel_pps_vdd_off_sync_unlocked(intel_dp);
>  }
>  
>  void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
> @@ -6706,7 +6706,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	 * Make sure vdd is actually turned off here.
>  	 */
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		edp_panel_vdd_off_sync(intel_dp);
> +		intel_pps_vdd_off_sync_unlocked(intel_dp);
>  
>  	return false;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 1f8ea3c41440..01c9e69f4e3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -559,11 +559,11 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
>  }
>  
>  /*
> - * Must be paired with edp_panel_vdd_off().
> + * Must be paired with intel_pps_vdd_off_unlocked().
>   * Must hold pps_mutex around the whole on/off sequence.
>   * Can be nested with intel_pps_vdd_{on,off}() calls.
>   */
> -bool edp_panel_vdd_on(struct intel_dp *intel_dp)
> +bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> @@ -635,13 +635,13 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  
>  	vdd = false;
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		vdd = edp_panel_vdd_on(intel_dp);
> +		vdd = intel_pps_vdd_on_unlocked(intel_dp);
>  	I915_STATE_WARN(!vdd, "[ENCODER:%d:%s] VDD already requested on\n",
>  			dp_to_dig_port(intel_dp)->base.base.base.id,
>  			dp_to_dig_port(intel_dp)->base.base.name);
>  }
>  
> -void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
> +void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port =
> @@ -691,7 +691,7 @@ void edp_panel_vdd_work(struct work_struct *__work)
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
>  		if (!intel_dp->want_panel_vdd)
> -			edp_panel_vdd_off_sync(intel_dp);
> +			intel_pps_vdd_off_sync_unlocked(intel_dp);
>  	}
>  }
>  
> @@ -713,7 +713,7 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
>   * Must hold pps_mutex around the whole on/off sequence.
>   * Can be nested with intel_pps_vdd_{on,off}() calls.
>   */
> -void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
> +void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
> @@ -729,12 +729,12 @@ void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
>  	intel_dp->want_panel_vdd = false;
>  
>  	if (sync)
> -		edp_panel_vdd_off_sync(intel_dp);
> +		intel_pps_vdd_off_sync_unlocked(intel_dp);
>  	else
>  		edp_panel_vdd_schedule_off(intel_dp);
>  }
>  
> -void edp_panel_on(struct intel_dp *intel_dp)
> +void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	u32 pp;
> @@ -791,10 +791,10 @@ void intel_pps_on(struct intel_dp *intel_dp)
>  		return;
>  
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		edp_panel_on(intel_dp);
> +		intel_pps_on_unlocked(intel_dp);
>  }
>  
> -void edp_panel_off(struct intel_dp *intel_dp)
> +void intel_pps_off_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> @@ -843,7 +843,7 @@ void intel_pps_off(struct intel_dp *intel_dp)
>  		return;
>  
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		edp_panel_off(intel_dp);
> +		intel_pps_off_unlocked(intel_dp);
>  }
>  
>  /* Enable backlight in the panel power control. */
> @@ -934,7 +934,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
>  	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
>  		return;
>  
> -	edp_panel_vdd_off_sync(intel_dp);
> +	intel_pps_vdd_off_sync_unlocked(intel_dp);
>  
>  	/*
>  	 * VLV seems to get confused when multiple power sequencers
> @@ -1249,7 +1249,7 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
>  	 * hooked up to any port. This would mess up the
>  	 * power domain tracking the first time we pick
>  	 * one of these power sequencers for use since
> -	 * edp_panel_vdd_on() would notice that the VDD was
> +	 * intel_pps_vdd_on_unlocked() would notice that the VDD was
>  	 * already on and therefore wouldn't grab the power
>  	 * domain reference. Disable VDD first to avoid this.
>  	 * This also avoids spuriously turning the VDD on as
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 69f670678d0e..e7f0473be9a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -27,11 +27,11 @@ void intel_pps_backlight_on(struct intel_dp *intel_dp);
>  void intel_pps_backlight_off(struct intel_dp *intel_dp);
>  void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
>  
> -bool edp_panel_vdd_on(struct intel_dp *intel_dp);
> -void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync);
> -void edp_panel_vdd_off_sync(struct intel_dp *intel_dp);
> -void edp_panel_on(struct intel_dp *intel_dp);
> -void edp_panel_off(struct intel_dp *intel_dp);
> +bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
> +void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
> +void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp);
> +void intel_pps_on_unlocked(struct intel_dp *intel_dp);
> +void intel_pps_off_unlocked(struct intel_dp *intel_dp);
>  void edp_panel_vdd_work(struct work_struct *__work);
>  
>  void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
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
