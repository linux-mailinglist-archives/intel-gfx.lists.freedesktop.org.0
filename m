Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D073A8FE4E4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DB910E8CE;
	Thu,  6 Jun 2024 11:09:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WNh6oivF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21BC10E8CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672146; x=1749208146;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zve9G2JytZASQAvD76puZL+MVs+1Z0md/PLm9udI1t0=;
 b=WNh6oivFCX8T48MFRVgyR+ZHBf5gevmFvOEKk+FQ69tdW9BXziKl1EwY
 EVQ8YSgPWWrcc1dRw6OhVkcAHlNKxQ0ytvIVKv4UgUjzWyPW/nJZo/bvi
 8McHMTAZl5XOgN/R4knJ3CZFD0lKeaerPM6rZBEA1ltClb/TEV8It44Lp
 0nJGzgwZXQYu5g4buAhUiI7Jw7m0AmAJbn6WtmolPQXDR6tgblYwvVBEy
 0HLSimL5evKJcegcWZSpH+CuUZzoj/bzHRaaY8oHjpm3g0YQyuLFP2ipk
 i2HSHagi1InpUJNR8V5saoFh/Qg7lK3kBZlQW2oubXM8wuE3bBKibnHAh w==;
X-CSE-ConnectionGUID: 69m0VkjUTDuxA8qTa6s7Jg==
X-CSE-MsgGUID: t9e0F53IRPSAuml+/ju8GA==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="24987487"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="24987487"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:09:05 -0700
X-CSE-ConnectionGUID: DvewvNUVT3S3qPioCpC0pw==
X-CSE-MsgGUID: pIFp3w5GQ+e8aRpEeQbFeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38379393"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:09:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, arun.r.murthy@intel.com,
 jouni.hogander@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
In-Reply-To: <20240606082926.1816416-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240606082926.1816416-2-suraj.kandpal@intel.com>
 <20240606082926.1816416-4-suraj.kandpal@intel.com>
Date: Thu, 06 Jun 2024 14:09:01 +0300
Message-ID: <8734pqba5u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 06 Jun 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> To reach PC10 when PKG_C_LATENCY is configure we must do the following
> things
> 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
> 2) Allow PSR2 deep sleep when DC5 can be entered
> 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
> not happening.
>
> WA: 16023497226
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 75 +++++++++++++++++++++++-
>  1 file changed, 73 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 6fc88f6c6b26..b22745c019df 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -811,12 +811,81 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
>  	return idle_frames;
>  }
>  
> +static bool intel_psr_check_delayed_vblank_limit(struct drm_i915_private *i915,
> +						 enum transcoder cpu_transcoder)
> +{
> +	return intel_de_read(i915, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder)) >= 6;

Please don't use the hardware to preserve the state for you. It will get
really complicated to maintain.

> +}
> +
> +static bool intel_psr_is_dpkgc_configured(struct drm_i915_private *i915)
> +{
> +	return intel_de_read(i915, LNL_PKG_C_LATENCY) == U32_MAX;

Ditto.

> +}
> +
> +static bool intel_psr_is_dc5_entry_possible(struct drm_i915_private *i915)
> +{
> +	struct intel_crtc *intel_crtc;
> +	bool ret = true;
> +
> +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> +		struct intel_encoder *encoder;
> +		struct drm_crtc *crtc = &intel_crtc->base;
> +		enum pipe pipe = intel_crtc->pipe;
> +
> +		if (!crtc->active)
> +			continue;
> +
> +		if (!(i915->display.irq.de_irq_mask[pipe] & GEN8_PIPE_VBLANK))

You have no business looking directly at that. It's for display irq code
*only*.

> +			ret = false;
> +
> +		for_each_encoder_on_crtc(&i915->drm, crtc, encoder) {
> +			struct intel_dp *intel_dp = enc_to_intel_dp(_encoder);
> +			struct intel_psr *psr = &intel_dp->psr;
> +
> +			if (!psr->enabled)
> +				ret = false;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static bool wa_16023497226_check(struct intel_dp *intel_dp, bool psr1)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> +
> +	if (DISPLAY_VER(i915) != 20)
> +		return true;
> +
> +	if (is_dpkg_c_configured(i915)) {
> +		if (psr1 &&
> +		    (intel_psr_check_delayed_vblank_limit(i915, cpu_transcoder) ||
> +		     intel_psr_is_dc5_entry_possible(i915)))
> +			return true;
> +		else if (!psr1 && is_dc5_entry_possible(i915))
> +			return true;
> +		else
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>  static bool hsw_activate_psr1(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
>  	u32 max_sleep_time = 0x1f;
> -	u32 val = EDP_PSR_ENABLE;
> +	u32 val = 0;
> +
> +	/* WA: 16023497226*/
> +	if (wa_16023497226_check(intel_dp, true)) {
> +		val = EDP_PSR_ENABLE;
> +	} else {
> +		drm_dbg_kms(&dev_priv->drm, "PSR1 was not activated\n");

Please add reason.

> +		return false;
> +	}

Switch the condition around and use early return.

>  
>  	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>  
> @@ -910,7 +979,9 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	u32 val = EDP_PSR2_ENABLE;
>  	u32 psr_val = 0;
>  
> -	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> +	/* WA: 16023497226*/
> +	if (wa_16023497226_check(intel_dp, false))
> +		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>  
>  	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
>  		val |= EDP_SU_TRACK_ENABLE;

-- 
Jani Nikula, Intel
