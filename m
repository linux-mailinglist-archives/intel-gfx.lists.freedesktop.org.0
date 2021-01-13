Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 618112F4908
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 11:55:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA3F26E48B;
	Wed, 13 Jan 2021 10:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB646E48B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 10:55:39 +0000 (UTC)
IronPort-SDR: ey0nA5XxZG25pggcjT94Croywibe4EUkk6qJOChg1PnhgDlUo4QVEn9gXoUvXE/dcW9u2aJX5h
 2180HjMhl/gQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="175604574"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="175604574"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:55:38 -0800
IronPort-SDR: EFQPCSQLMYIy0dB0JEq5aqGUqqX1INvHAgx09kFhgH6mvQ8NYe90qCDs4VSBmqDhohrU+qFmhr
 aEonKK+JpD6Q==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="424519705"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:55:36 -0800
Date: Wed, 13 Jan 2021 16:11:04 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210113104103.GM11717@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
 <d119605ba3d9c86647a524375de2d7e3d57a5676.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d119605ba3d9c86647a524375de2d7e3d57a5676.1610127741.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 05/17] drm/i915/pps: rename edp_panel_*
 to intel_pps_*_unlocked
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

On 2021-01-08 at 19:44:13 +0200, Jani Nikula wrote:
> Follow the usual naming pattern for functions, both for the prefix and
> the _unlocked suffix for functions that expect the lock to be held when
> calling. No functional changes.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
LGTM.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 16 +++++++--------
>  drivers/gpu/drm/i915/display/intel_pps.c | 26 ++++++++++++------------
>  drivers/gpu/drm/i915/display/intel_pps.h | 10 ++++-----
>  3 files changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index eac674ad91c8..1384f1d3a9cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1061,7 +1061,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
>  	 * ourselves.
>  	 */
> -	vdd = edp_panel_vdd_on(intel_dp);
> +	vdd = intel_pps_vdd_on_unlocked(intel_dp);
>  
>  	/* dp aux is extremely sensitive to irq latency, hence request the
>  	 * lowest possible wakeup latency and so prevent the cpu from going into
> @@ -1203,7 +1203,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>  
>  	if (vdd)
> -		edp_panel_vdd_off(intel_dp, false);
> +		intel_pps_vdd_off_unlocked(intel_dp, false);
>  
>  	intel_pps_unlock(intel_dp, pps_wakeref);
>  	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
> @@ -3520,9 +3520,9 @@ static void intel_enable_dp(struct intel_atomic_state *state,
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
> @@ -6258,7 +6258,7 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
>  		 * Make sure vdd is actually turned off here.
>  		 */
>  		with_intel_pps_lock(intel_dp, wakeref)
> -			edp_panel_vdd_off_sync(intel_dp);
> +			intel_pps_vdd_off_sync_unlocked(intel_dp);
>  	}
>  
>  	intel_dp_aux_fini(intel_dp);
> @@ -6286,7 +6286,7 @@ void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
>  	 */
>  	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		edp_panel_vdd_off_sync(intel_dp);
> +		intel_pps_vdd_off_sync_unlocked(intel_dp);
>  }
>  
>  void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
> @@ -7146,7 +7146,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	 * Make sure vdd is actually turned off here.
>  	 */
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		edp_panel_vdd_off_sync(intel_dp);
> +		intel_pps_vdd_off_sync_unlocked(intel_dp);
>  
>  	return false;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 59215cfd7d97..fd3677948800 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -556,11 +556,11 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
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
> @@ -631,13 +631,13 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
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
> @@ -687,7 +687,7 @@ void edp_panel_vdd_work(struct work_struct *__work)
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
>  		if (!intel_dp->want_panel_vdd)
> -			edp_panel_vdd_off_sync(intel_dp);
> +			intel_pps_vdd_off_sync_unlocked(intel_dp);
>  	}
>  }
>  
> @@ -709,7 +709,7 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
>   * Must hold pps_mutex around the whole on/off sequence.
>   * Can be nested with intel_pps_vdd_{on,off}() calls.
>   */
> -void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
> +void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
> @@ -725,12 +725,12 @@ void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
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
> @@ -787,10 +787,10 @@ void intel_pps_on(struct intel_dp *intel_dp)
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
> @@ -839,7 +839,7 @@ void intel_pps_off(struct intel_dp *intel_dp)
>  		return;
>  
>  	with_intel_pps_lock(intel_dp, wakeref)
> -		edp_panel_off(intel_dp);
> +		intel_pps_off_unlocked(intel_dp);
>  }
>  
>  /* Enable backlight in the panel power control. */
> @@ -930,7 +930,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
>  	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
>  		return;
>  
> -	edp_panel_vdd_off_sync(intel_dp);
> +	intel_pps_vdd_off_sync_unlocked(intel_dp);
>  
>  	/*
>  	 * VLV seems to get confused when multiple power sequencers
> @@ -1245,7 +1245,7 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
