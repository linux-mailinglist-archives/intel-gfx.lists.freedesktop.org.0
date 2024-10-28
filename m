Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA389B31E8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 14:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A9610E4B3;
	Mon, 28 Oct 2024 13:41:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HSe/0s3n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1F010E4B2;
 Mon, 28 Oct 2024 13:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730122877; x=1761658877;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2VIK6JwV2k0Fhp9MsImXl4fL3dmgHghsV421vsALGqs=;
 b=HSe/0s3n+LPpasHflgK6Tx3w13qXGbDYVscu18f1BetLldK4zHhnkX7f
 bIe0x4CTXZ+NWg5AKfELPZFj7sub7MAEqZh21iI8kzvNvXnr9AfcaS1QB
 5LKDX9RIzuRnV1lBxDzcK2FRSueaiEhXzw0NopE0tFcsvI1l95eFSkn11
 fU6IJD0Gtj9KfPt8cL92HH8oXUFxOdUh1WcPwyhcU7R0nnHYj3AOnImG7
 spATRObQlBVmNeuMGvgC3DARDtnUFClCpehq2skGMb9TUhvF0HciJQ3BC
 7zT9JN5QZwlPYUeVNjPuVO9DBJypiHgbVtcBIIZDCo3ktj8/i2vlLLxXP Q==;
X-CSE-ConnectionGUID: 2On4uT+lT6ucmfTrvkg36w==
X-CSE-MsgGUID: V9JOPnzHQreYNZxPx5IzDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="41084138"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="41084138"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 06:41:12 -0700
X-CSE-ConnectionGUID: ejI4fWxJSriqYtP/I9Dk/A==
X-CSE-MsgGUID: pS2l88qxTy2OxhndErY07w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81783737"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 06:41:10 -0700
Date: Mon, 28 Oct 2024 15:41:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/psr: WA for panels stating bad link status
 after PSR is enabled
Message-ID: <Zx-UljQCRUST_RSl@ideak-desk.fi.intel.com>
References: <20241028074642.804895-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241028074642.804895-1-jouni.hogander@intel.com>
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

On Mon, Oct 28, 2024 at 09:46:42AM +0200, Jouni Högander wrote:
> We are currently seeing unexpected link trainings with several different
> eDP panels. These are caused by these panels stating bad link status in
> their dpcd registers. This can be observed by doing following test:
> 
> 1. Boot up without Xe module loaded
> 
> 2. Load Xe module with PSR disabled:
>     $ modprobe xe  enable_psr=0
> 
> 3. Read panel link status register
>     $ dpcd_reg read --offset 0x200e --count=1
>     0x200e:  00
> 
> 4. Enable PSR, sleep for 2 seconds and disable PSR again:
> 
>     $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>     $ echo "-1" > /sys/kernel/debug/dri/0000:00:02.0/xe_params/enable_psr
>     $ echo 0x0 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>     $ sleep 2
>     $ cat /sys/kernel/debug/dri/0/i915_edp_psr_status | grep status
>     $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>     Source PSR/PanelReplay status: DEEP_SLEEP [0x80310030]
> 
> 5. Now read panel link status registers again:
>     $ dpcd_reg read --offset 0x200e --count=1
>     0x200e:  80
> 
> Workaround this by not trusting link status registers after PSR is enabled
> until first short pulse interrupt is received.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 39 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
>  4 files changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..f0b7d7262961 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1618,6 +1618,8 @@ struct intel_psr {
>  	u32 dc3co_exit_delay;
>  	struct delayed_work dc3co_work;
>  	u8 entry_setup_frames;
> +
> +	bool link_ok;
>  };
>  
>  struct intel_dp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b036c6521659..efaaadfb12ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5007,7 +5007,8 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  		return true;
>  
>  	/* Retrain if link not ok */
> -	return !intel_dp_link_ok(intel_dp, link_status);
> +	return !(intel_dp_link_ok(intel_dp, link_status) ||
> +		 intel_psr_link_ok(intel_dp));
>  }
>  
>  bool intel_dp_has_connector(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 992543f508c1..0cd7388389e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2009,6 +2009,15 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  	intel_dp->psr.enabled = true;
>  	intel_dp->psr.paused = false;
>  
> +	/*
> +	 * Link_ok is sticky and set here on PSR enable. We can assume link
> +	 * training is complete as we never continue to PSR enable with
> +	 * untrained link. Link_ok is kept as set until first short pulse
> +	 * interrupt. This is targeted to workaround panels stating bad link
> +	 * after PSR is enabled.
> +	 */
> +	intel_dp->psr.link_ok = true;
> +
>  	intel_psr_activate(intel_dp);
>  }
>  
> @@ -3458,6 +3467,9 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
>  
>  	mutex_lock(&psr->lock);
>  
> +	/* Let's clear possibly set link_ok flag here */
> +	psr->link_ok = false;

Should psr->link_ok also get reset when the output is disabled, so it's
effect is consistent (i.e. doesn't effect the link state from output
enabling/link training until PSR is enabled)?

> +
>  	if (!psr->enabled)
>  		goto exit;
>  
> @@ -3517,6 +3529,33 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
>  	return ret;
>  }
>  
> +/**
> + * intel_psr_link_ok - return psr->link_ok
> + * @intel_dp: struct intel_dp
> + *
> + * We are seeing unexpected link re-trainings with some panels. This is caused
> + * by panel stating bad link status after PSR is enabled. Code checking link
> + * status can call this to ensure it can ignore bad link status stated by the
> + * panel I.e. if panel is stating bad link and intel_psr_link_ok is stating link
> + * is ok caller should rely on latter.
> + *
> + * Return value of link_ok
> + */
> +bool intel_psr_link_ok(struct intel_dp *intel_dp)
> +{
> +	bool ret;
> +
> +	if ((!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp)) ||
> +	    !intel_dp_is_edp(intel_dp))
> +		return false;
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	ret = intel_dp->psr.link_ok;
> +	mutex_unlock(&intel_dp->psr.lock);
> +
> +	return ret;
> +}
> +
>  /**
>   * intel_psr_lock - grab PSR lock
>   * @crtc_state: the crtc state
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 5f26f61f82aa..956be263c09e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -59,6 +59,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
>  void intel_psr_pause(struct intel_dp *intel_dp);
>  void intel_psr_resume(struct intel_dp *intel_dp);
>  bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
> +bool intel_psr_link_ok(struct intel_dp *intel_dp);
>  
>  void intel_psr_lock(const struct intel_crtc_state *crtc_state);
>  void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
> -- 
> 2.34.1
> 
