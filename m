Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E6975318
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B863B10E9FD;
	Wed, 11 Sep 2024 13:00:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KFO7Nxg2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D08C910E9FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726059649; x=1757595649;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Fg+x/h9ZB9Ab7jBhYO8yA1noXh+TD+an6RhD6p6uQ8c=;
 b=KFO7Nxg2Tid0b00W37gxS2OiQH9iJ71h0wCZuG0AM2qaXosvhA5mprp0
 VC7MNY/s2f1ncUG7Eo+35iF8xYG+Vjr+p4PMdKGbTiT9nR4RPpJykIMz4
 fYxcRvgYCjm1NYTD+G5im9V7swd78Rk9x2Jd4lgH1nJMfgc//M+PWYuAC
 3Ch0Z+USeZr2BvgMtHdBr0/OPTj+QvdcJQyZvLtQuqEp4ydNMcZWJZ0oj
 dP2hCEW797OKbc67HZRWGB5uXfuIBUU4/L60xncjG3YVw69Pii5otlJhW
 luAFxvDK+XJ7UTLcQ39Ak4PqXvQpql6CVgf15b89Bqt3z3qZ7qfhz+EP6 Q==;
X-CSE-ConnectionGUID: c5+71TRSQi6ng5ocSgc28Q==
X-CSE-MsgGUID: B8fklkxBROSWnmL84wpBhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="47373961"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="47373961"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:00:34 -0700
X-CSE-ConnectionGUID: pNO6XO1ATOCQOgo4D14GUg==
X-CSE-MsgGUID: BhL80qwESv6fAU9HgZI3jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67423292"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 06:00:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 16:00:30 +0300
Date: Wed, 11 Sep 2024 16:00:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Message-ID: <ZuGUbvpnba19oGRo@intel.com>
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
> prevent DC6 in case of Panel Replay.

This doesn't make sense to me. I *think* we are currently
supposed to always operate in the "main link on" mode for panel replay.
But if we enter DC6 then for sure the main link will be turned off.
Also DC6 is a superset of DC5, so how can we enter DC6 if we can't
even enter DC5?

> This causes problems if user-space is
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
