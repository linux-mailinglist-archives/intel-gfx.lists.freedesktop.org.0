Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 445B24DAC74
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 09:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7112110E5E3;
	Wed, 16 Mar 2022 08:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D46E10E5E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 08:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647419286; x=1678955286;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=JpI/7HXFJwK0X6wvK5CKtUFT6zsK1dfkjnrp44EcJt8=;
 b=ifMIAXu5TUz+4tppSD73tHR/8BQ0K1BRgtp4PGoYDm0ZjH8PMj7/Z4ZK
 9ElKtByaDKiY/cBO1JLfoe/UJR9wPv/orSTkur3I2bT0rXLTCzV2OWmpE
 m8F+JnseyDEUcMkyVNvdriz9qkRirx81aaUlN6vRqv4YUNcF+S5vMVedy
 6ou7l7wz4kLzs04lmuwRFHo4cCs+0qSGNWzxgw2PgMWlhr+FCH7O2pxWy
 MvfLvFdJ00qJQvUSwgO0WFZgOHMy49EHE1VZg7lhosqeUWf7+VWWq4MqW
 +kRTR6mnRkxF8WCHwfs11xLWdUMeKKe7x2yX+MWq7pCi7z4VVBhiWd5jP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256248099"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="256248099"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 01:28:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="540812520"
Received: from jgarrosx-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.45])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 01:28:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220314225837.42816-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220314225837.42816-1-vinod.govindapillai@intel.com>
 <20220314225837.42816-3-vinod.govindapillai@intel.com>
Date: Wed, 16 Mar 2022 10:28:01 +0200
Message-ID: <87sfrinvxq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] drm/i915/display: Add sleep for
 power state connector
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 15 Mar 2022, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
>
> Add 2sec sleep for power state connector when a monitor
> is in power sleep state before atomic commit enable.

We're absolutely not adding a sleep like this.

> Monitors like LG 27UL650-W, 27UK850 goes into power
> sleep state and generates long duration hotplug events
> even the monitor connected for display, sleep for 2sec
> for power state monitor become available before enable
> atomic commit.

Again, will need a better description of the failure mode and/or a
detailed bug report to even suggest a better alternative.

BR,
Jani.

>
> Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 80 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  8 ++
>  2 files changed, 88 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 54db81c2cce6..a793f4234460 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -224,6 +224,81 @@ static int intel_compute_global_watermarks(struct intel_atomic_state *state)
>  	return 0;
>  }
>  
> +static void
> +intel_connectors_wakeup_hpd_suppress(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct i915_hotplug *hpd = &i915->hotplug;
> +	bool do_delay = false;
> +	struct intel_connector *connector;
> +	struct intel_digital_connector_state *conn_state;
> +	int i;
> +
> +	if (!hpd->suppress_wakeup_hpd_enabled)
> +		return;
> +
> +	for_each_new_intel_connector_in_state(state, connector,
> +					      conn_state, i) {
> +		struct intel_crtc *crtc = to_intel_crtc(conn_state->base.crtc);
> +		struct intel_crtc_state *crtc_state;
> +
> +		if (!crtc || !intel_connector_needs_modeset(state,
> +							    &connector->base))
> +			continue;
> +
> +		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> +		if (!crtc_state->hw.active)
> +			continue;
> +
> +		if (!intel_connector_need_suppress_wakeup_hpd(connector))
> +			continue;
> +
> +		if (time_is_before_jiffies64(connector->disabled_time +
> +					     msecs_to_jiffies(MSEC_PER_SEC * 10))) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[CONNECTOR:%d:%s] Suppress wakeup HPD for 2 secs\n",
> +				    connector->base.base.id, connector->base.name);
> +			do_delay = true;
> +		}
> +	}
> +
> +	if (do_delay)
> +		msleep(2 * MSEC_PER_SEC);
> +}
> +
> +static void
> +intel_connectors_wakeup_hpd_track_disabling(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct i915_hotplug *hpd = &i915->hotplug;
> +	struct intel_connector *connector;
> +	struct intel_digital_connector_state *conn_state;
> +	int i;
> +
> +	if (!hpd->suppress_wakeup_hpd_enabled)
> +		return;
> +
> +	for_each_old_intel_connector_in_state(state, connector,
> +					      conn_state, i) {
> +		struct intel_crtc *crtc = to_intel_crtc(conn_state->base.crtc);
> +		struct intel_crtc_state *crtc_state;
> +
> +		if (!crtc || !intel_connector_needs_modeset(state,
> +							    &connector->base))
> +			continue;
> +
> +		crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
> +		if (!crtc_state->hw.active)
> +			continue;
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "[CONNECTOR:%d:%s] Update disabled time for wakeup HPD handling\n",
> +			    connector->base.base.id, connector->base.name);
> +
> +		connector->disabled_time = get_jiffies_64();
> +	}
> +}
> +
>  /* returns HPLL frequency in kHz */
>  int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
>  {
> @@ -8517,6 +8592,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		}
>  	}
>  
> +	intel_connectors_wakeup_hpd_track_disabling(state);
> +
>  	intel_commit_modeset_disables(state);
>  
>  	/* FIXME: Eventually get rid of our crtc->config pointer */
> @@ -8560,6 +8637,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>  	dev_priv->display->commit_modeset_enables(state);
>  
> +	/* sleep for 2sec for power state connector become available */
> +	intel_connectors_wakeup_hpd_suppress(state);
> +
>  	intel_encoders_update_complete(state);
>  
>  	if (state->modeset)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 8513703086b7..12ecf1497b07 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -539,6 +539,14 @@ enum hpd_pin {
>  			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
>  			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
>  
> +#define for_each_old_intel_connector_in_state(__state, connector, old_connector_state, __i) \
> +	for ((__i) = 0; \
> +		(__i) < (__state)->base.num_connector; \
> +		(__i)++) \
> +		for_each_if((__state)->base.connectors[__i].ptr && \
> +				((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
> +				(old_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].old_state), 1))
> +
>  int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc);
>  u8 intel_calc_active_pipes(struct intel_atomic_state *state,

-- 
Jani Nikula, Intel Open Source Graphics Center
