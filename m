Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6A2975699
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 17:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC9810E6B3;
	Wed, 11 Sep 2024 15:14:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fbgGH4ek";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B136410E038
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 15:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726067650; x=1757603650;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sSsqJfKadLtDoT07VYWiODad1sQap1hl7vqMuxJSCxI=;
 b=fbgGH4ekSv7G7b6L9Zj2kbhJRd5L5OPyYuF5ESkXsrNxf93Kv66U/mGq
 8jbwDnImmubFkNxk9mkZ2RdVSULJH5JJDCc4c5RVTIbuWxzNVET8GYnQA
 FBbNKfV1nKKhgR6+icrnkZt/GJ2VHa3N8vdg/yAh1YpOsLKBqrjQmCoUG
 fvmvCdabhWPWLOdE0sGHF/Wsrc5+zBmal2RGyFnj4f0/bpcjLc/mzC/xF
 mbNLm9r///qFrEEByH+wv0AxsWayMhdnaMMEK1dPM9PjHDGWoWkRKYeph
 AZZ0Tk0V1wB5bfXinWJBVsVYRpsdCBnu/5fjH2vaXizxx0EWstHpN5xv4 w==;
X-CSE-ConnectionGUID: ry3OUCnwTWOkK4lp2XNm2Q==
X-CSE-MsgGUID: Ha8xOKRWTI6eGxllBTU2dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="28611382"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="28611382"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 08:14:10 -0700
X-CSE-ConnectionGUID: 2UHePeekSTy6sSNhizX4dA==
X-CSE-MsgGUID: zwYdNtXFRl6V8XE6qZSu/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67464474"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 08:14:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 18:14:06 +0300
Date: Wed, 11 Sep 2024 18:14:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Message-ID: <ZuGzvnE0XQuC97Eq@intel.com>
References: <20240911124015.1420976-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911124015.1420976-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 11, 2024 at 03:40:15PM +0300, Jouni Högander wrote:
> We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
> prevent DC6 in case of Panel Replay. This causes problems if user-space is
> polling for vblank events.
> 
> Fix this by setting target DC state as DC_STATE_EN_UPTO_DC5 when both
> source and sink are supporting eDP Panel Replay and VBI is enabled.
> 
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2296
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 +
>  .../gpu/drm/i915/display/intel_display_irq.c  | 48 +++++++++++++++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 0a711114ff2b4..0707bc2047931 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -457,6 +457,8 @@ struct intel_display {
>  		/* For i915gm/i945gm vblank irq workaround */
>  		u8 vblank_enabled;
>  
> +		struct work_struct vblank_work;
> +
>  		u32 de_irq_mask[I915_MAX_PIPES];
>  		u32 pipestat_irq_mask[I915_MAX_PIPES];
>  	} irq;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 8f13f148c73e3..96abfb356349e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -15,6 +15,7 @@
>  #include "intel_display_irq.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  #include "intel_dp_aux.h"
>  #include "intel_dsb.h"
>  #include "intel_fdi_regs.h"
> @@ -1361,9 +1362,47 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>  	return true;
>  }
>  
> +static void intel_display_vblank_work(struct work_struct *work)
> +{
> +	struct intel_display *display =
> +		container_of(work, typeof(*display), irq.vblank_work);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	/*
> +	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
> +	 * code for DC3CO handling. DC3CO target states is currently disabled in
> +	 * PSR code. If DC3CO is taken into use we need take that into account
> +	 * here as well.
> +	 */
> +	intel_display_power_set_target_dc_state(i915, display->irq.vblank_enabled ?

Hmm. How racy is this? I suppose workqueue should have sufficient
barriers to make the earlier increment/decrement visible to the
executing work. And vblank_enabled is a u8 so shouldn't tear
even when racing against another concurrent enable/disable.
And the last work scheduled should win out in the end
due to the way workqueue scheduling works. So I guess it works.

Might want to stick a READ_ONCE() here to highlight the
unlocked nature.

I have had some thoughts about reworking the vblank locking to
use per-crtc locks, which would require converting this to a
proper atomic_t though.

> +						DC_STATE_EN_UPTO_DC5 : DC_STATE_EN_UPTO_DC6);
> +}
> +
> +/*
> + * We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
> + * prevent DC6 in case of Panel Replay. This causes problems if user-space is
> + * polling for vblank events.
> + */
> +static bool block_dc6_needed(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +
> +	for_each_intel_encoder_with_psr(display->drm, encoder) {
> +		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +		if (!intel_dp_is_edp(intel_dp))
> +			continue;
> +
> +		if (CAN_PANEL_REPLAY(intel_dp))

That depends on intel_dp->psr.sink_panel_replay_support which can
updated during detect(). Granted, for eDP it's only done once,
but as soon as we introduce link off mode for non-eDP this is going
to turn into a race as well.

We might want to stick an actual flag or something into the crtc
itself that we can massage at modeset time to indicate whether
it needs this workaround.

> +			return true;
> +	}
> +	return false;
> +}
> +
>  int bdw_enable_vblank(struct drm_crtc *_crtc)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	unsigned long irqflags;
> @@ -1371,6 +1410,9 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>  	if (gen11_dsi_configure_te(crtc, true))
>  		return 0;
>  
> +	if (block_dc6_needed(display) && display->irq.vblank_enabled++ == 0)
> +		schedule_work(&display->irq.vblank_work);
> +
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>  	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> @@ -1436,6 +1478,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
>  void bdw_disable_vblank(struct drm_crtc *_crtc)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	unsigned long irqflags;
> @@ -1446,6 +1489,9 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>  	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> +
> +	if (block_dc6_needed(display) && --display->irq.vblank_enabled == 0)
> +		schedule_work(&display->irq.vblank_work);
>  }
>  
>  void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -1871,4 +1917,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
>  		i915->display.irq.display_irqs_enabled = false;
>  
>  	intel_hotplug_irq_init(i915);
> +
> +	INIT_WORK(&i915->display.irq.vblank_work, intel_display_vblank_work);
>  }
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
