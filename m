Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E8D6ACC36
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 19:14:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4B710E41D;
	Mon,  6 Mar 2023 18:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4614110E41D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 18:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678126480; x=1709662480;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WwE/zapzAeMvz9QgD+lObUX13HM/88XOpqLc+SexrfE=;
 b=m8FaT4QrO//V2C7mvT3DC0GP/yidEIWCwZt99RVPBl57zwskkvE6Zm6I
 OtpZF1ifzmfFoMb1eOLnjImEm+la1Wl6l/jeXwjMgV3YV7y430nOFFLUE
 2huYot3/2thqiJBdT7XG0bipumw6csljK0MunLBpJRiTp0PaqB1BSCUmR
 rnS0iqgrFLrXLxmnctlOhoh0uRDzAWFd+zJ7HcIVKV+F2TEx/akT1C3A4
 Kr3cM/8AsBeqkSWrApQ2bVbWpaYPIv9hL6XYAk5eV5Le0qRJA2t8f/GGs
 FlsIF2DS3KZP6tX2MmITttdaQ/Tw3W9BCD3D8fkL11YM4BHihXqf6XneP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="363252428"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="363252428"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 10:14:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="786342645"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="786342645"
Received: from ramuchie-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.58.188])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 10:14:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230227132607.15496-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230227132607.15496-1-stanislav.lisovskiy@intel.com>
Date: Mon, 06 Mar 2023 20:14:35 +0200
Message-ID: <871qm1u4qc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Communicate display power
 demands to pcode more accurately
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Feb 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> Display to communicate display pipe count/CDCLK/voltage configuration
> to Pcode for more accurate power accounting for gen >= 12.
> Existing sequence is only sending the voltage value to the Pcode.
> Adding new sequence with current cdclk associate with voltage value masking.
> Adding pcode request when any pipe power well will disable or enable.
>
> v2: - Make intel_cdclk_need_serialize static to make CI compiler happy.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 174 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cdclk.h |   2 +
>  drivers/gpu/drm/i915/i915_reg.h            |  14 ++
>  3 files changed, 176 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 084a483f9776..df5a21f6a393 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1932,10 +1932,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		 * NOOP - No Pcode communication needed for
>  		 * Display versions 14 and beyond
>  		 */;
> -	else if (DISPLAY_VER(dev_priv) >= 11)
> +	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  				      cdclk_config->voltage_level);
> -	else
> +	if (DISPLAY_VER(dev_priv) < 11) {
>  		/*
>  		 * The timeout isn't specified, the 2ms used here is based on
>  		 * experiment.
> @@ -1946,7 +1946,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>  					      cdclk_config->voltage_level,
>  					      150, 2);
> -
> +	}
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
>  			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
> @@ -2242,6 +2242,40 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
>  		    cdclk_config->voltage_level);
>  }
>  
> +static void intel_pcode_notify(struct drm_i915_private *i915,
> +			       u8 voltage_level,
> +			       u8 active_pipe_count,
> +			       u8 cdclk,
> +			       bool cdclk_update_valid,
> +			       bool pipe_count_update_valid)
> +{
> +	int ret;
> +	u32 update_mask = 0;
> +
> +	if (DISPLAY_VER(i915) < 12)
> +		return;
> +
> +	update_mask = DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, active_pipe_count, voltage_level);
> +
> +	if (cdclk_update_valid)
> +		update_mask |= DISPLAY_TO_PCODE_CDCLK_VALID;
> +
> +	if (pipe_count_update_valid)
> +		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
> +
> +	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
> +				SKL_CDCLK_PREPARE_FOR_CHANGE |
> +				update_mask,
> +				SKL_CDCLK_READY_FOR_CHANGE,
> +				SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	if (ret) {
> +		drm_err(&i915->drm,
> +				"Failed to inform PCU about display config (err %d)\n",
> +				ret);
> +		return;

Superfluous return.

> +	}
> +}
> +
>  /**
>   * intel_set_cdclk - Push the CDCLK configuration to the hardware
>   * @dev_priv: i915 device
> @@ -2311,6 +2345,98 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  	}
>  }
>  
> +/**
> + * intel_cdclk_power_usage_to_pcode_pre_notification: display to pcode notification
> + * before the enabling power wells.
> + * send notification with cdclk, number of pipes, voltage_level.
> + * @state: intel atomic state
> + */
> +void intel_cdclk_power_usage_to_pcode_pre_notification(struct intel_atomic_state *state)

This could be static?

Not happy with the name, really, but at least it could use a
verb. Notify instead of notification.

> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);

No new dev_priv please.

> +	const struct intel_cdclk_state *old_cdclk_state =
> +		intel_atomic_get_old_cdclk_state(state);
> +	const struct intel_cdclk_state *new_cdclk_state =
> +		intel_atomic_get_new_cdclk_state(state);
> +	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
> +	bool change_cdclk, update_pipe_count;
> +
> +	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> +				 &new_cdclk_state->actual) &&
> +				 (new_cdclk_state->active_pipes ==
> +				 old_cdclk_state->active_pipes))
> +		return;
> +
> +	/* According to "Sequence Before Frequency Change", voltage level set to 0x3 */
> +	voltage_level = DISPLAY_TO_PCODE_VOLTAGE_MAX;
> +
> +	change_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
> +	update_pipe_count = hweight8(new_cdclk_state->active_pipes) >
> +			    hweight8(old_cdclk_state->active_pipes);
> +
> +	/*
> +	 * According to "Sequence Before Frequency Change",
> +	 * if CDCLK is increasing, set bits 25:16 to upcoming CDCLK,
> +	 * if CDCLK is decreasing or not changing, set bits 25:16 to current CDCLK,
> +	 * which basically means we choose the maximum of old and new CDCLK, if we know both
> +	 */
> +	if (change_cdclk)
> +		cdclk = max(new_cdclk_state->actual.cdclk, old_cdclk_state->actual.cdclk);
> +
> +	/*
> +	 * According to "Sequence For Pipe Count Change",
> +	 * if pipe count is increasing, set bits 25:16 to upcoming pipe count
> +	 * (power well is enabled)
> +	 * no action if it is decreasing, before the change
> +	 */
> +	if (update_pipe_count)
> +		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
> +
> +	intel_pcode_notify(dev_priv, voltage_level, num_active_pipes, cdclk,
> +			   change_cdclk, update_pipe_count);
> +}
> +
> +/* intel_cdclk_power_usage_to_pcode_post_notification: after frequency change sending
> + * voltage_level, active pipes, current CDCLK frequency.
> + * @state: intel atomic state
> + */
> +void intel_cdclk_power_usage_to_pcode_post_notification(struct intel_atomic_state *state)

Ditto about static & naming.

> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);

No new dev_priv please.

> +	const struct intel_cdclk_state *new_cdclk_state =
> +		intel_atomic_get_new_cdclk_state(state);
> +	const struct intel_cdclk_state *old_cdclk_state =
> +		intel_atomic_get_old_cdclk_state(state);
> +	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
> +	bool update_cdclk, update_pipe_count;
> +
> +	/* According to "Sequence After Frequency Change", set voltage to used level */
> +	voltage_level = new_cdclk_state->actual.voltage_level;
> +
> +	update_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
> +	update_pipe_count = hweight8(new_cdclk_state->active_pipes) <
> +			    hweight8(old_cdclk_state->active_pipes);
> +
> +	/*
> +	 * According to "Sequence After Frequency Change",
> +	 * set bits 25:16 to current CDCLK
> +	 */
> +	if (update_cdclk)
> +		cdclk = new_cdclk_state->actual.cdclk;
> +
> +	/*
> +	 * According to "Sequence For Pipe Count Change",
> +	 * if pipe count is decreasing, set bits 25:16 to current pipe count,
> +	 * after the change(power well is disabled)
> +	 * no action if it is increasing, after the change
> +	 */
> +	if (update_pipe_count)
> +		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
> +
> +	intel_pcode_notify(dev_priv, voltage_level, num_active_pipes, cdclk,
> +			   update_cdclk, update_pipe_count);
> +}
> +
>  /**
>   * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
>   * @state: intel atomic state
> @@ -2321,7 +2447,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  void
>  intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_cdclk_state *old_cdclk_state =
>  		intel_atomic_get_old_cdclk_state(state);
>  	const struct intel_cdclk_state *new_cdclk_state =
> @@ -2332,11 +2458,14 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
>  				 &new_cdclk_state->actual))
>  		return;
>  
> +	if (DISPLAY_VER(i915) >= 12)
> +		intel_cdclk_power_usage_to_pcode_pre_notification(state);
> +
>  	if (pipe == INVALID_PIPE ||
>  	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> -		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
> +		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>  
> -		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
> +		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
>  	}
>  }
>  
> @@ -2350,7 +2479,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
>  void
>  intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_cdclk_state *old_cdclk_state =
>  		intel_atomic_get_old_cdclk_state(state);
>  	const struct intel_cdclk_state *new_cdclk_state =
> @@ -2361,11 +2490,14 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
>  				 &new_cdclk_state->actual))
>  		return;
>  
> +	if (DISPLAY_VER(i915) >= 12)
> +		intel_cdclk_power_usage_to_pcode_post_notification(state);
> +
>  	if (pipe != INVALID_PIPE &&
>  	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
> -		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
> +		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>  
> -		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
> +		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
>  	}
>  }
>  
> @@ -2871,6 +3003,21 @@ int intel_cdclk_init(struct drm_i915_private *dev_priv)
>  	return 0;
>  }
>  
> +static bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
> +				       const struct intel_cdclk_state *old_cdclk_state,
> +				       const struct intel_cdclk_state *new_cdclk_state)
> +{
> +	/*
> +	 * We need to poke hw for gen >= 12, because we notify PCode if
> +	 * pipe power well count changes.
> +	 */
> +	return intel_cdclk_changed(&old_cdclk_state->actual,
> +				   &new_cdclk_state->actual) ||
> +	       ((DISPLAY_VER(i915) >= 12 &&
> +		 hweight8(old_cdclk_state->active_pipes) !=
> +		 hweight8(new_cdclk_state->active_pipes)));

That's getting a bit unweildy for one expression.

> +}
> +
>  int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> @@ -2892,8 +3039,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  	if (ret)
>  		return ret;
>  
> -	if (intel_cdclk_changed(&old_cdclk_state->actual,
> -				&new_cdclk_state->actual)) {
> +	if (intel_cdclk_need_serialize(dev_priv, old_cdclk_state, new_cdclk_state)) {
>  		/*
>  		 * Also serialize commits across all crtcs
>  		 * if the actual hw needs to be poked.
> @@ -2905,9 +3051,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  		   old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk ||
>  		   intel_cdclk_changed(&old_cdclk_state->logical,
>  				       &new_cdclk_state->logical)) {
> -		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
> -		if (ret)
> -			return ret;
> +			ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
> +			if (ret)
> +				return ret;
>  	} else {
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 51e2f6a11ce4..fa356adc61d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -64,6 +64,8 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b);
>  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
>  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> +void intel_cdclk_power_usage_to_pcode_pre_notification(struct intel_atomic_state *state);
> +void intel_cdclk_power_usage_to_pcode_post_notification(struct intel_atomic_state *state);
>  void intel_cdclk_dump_config(struct drm_i915_private *i915,
>  			     const struct intel_cdclk_config *cdclk_config,
>  			     const char *context);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c1efa655fb68..9f786952585b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6526,6 +6526,20 @@
>  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
>  #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
> +#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
> +#define   DISPLAY_TO_PCODE_VOLTAGE_MASK		REG_GENMASK(1, 0)
> +#define	  DISPLAY_TO_PCODE_VOLTAGE_MAX		DISPLAY_TO_PCODE_VOLTAGE_MASK
> +#define   DISPLAY_TO_PCODE_CDCLK_VALID		REG_BIT(27)
> +#define   DISPLAY_TO_PCODE_PIPE_COUNT_VALID	REG_BIT(31)
> +#define   DISPLAY_TO_PCODE_CDCLK_MASK		REG_GENMASK(25, 16)
> +#define   DISPLAY_TO_PCODE_PIPE_COUNT_MASK	REG_GENMASK(30, 28)
> +#define   DISPLAY_TO_PCODE_CDCLK(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_CDCLK_MASK, (x))
> +#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE_PIPE_COUNT_MASK, (x))
> +#define   DISPLAY_TO_PCODE_VOLTAGE(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_VOLTAGE_MASK, (x))
> +#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
> +		(DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
> +		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
> +		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level))
>  #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
>  #define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
>  #define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)

-- 
Jani Nikula, Intel Open Source Graphics Center
