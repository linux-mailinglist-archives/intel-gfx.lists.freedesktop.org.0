Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB44A97B403
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 20:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E73B10E064;
	Tue, 17 Sep 2024 18:15:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pp5QPWT+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C1A10E064
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 18:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726596912; x=1758132912;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EQXDv7cmxImDM4iiM+isdRLb/CLdWYIQBTg1w/daQjQ=;
 b=Pp5QPWT+etOWj84pWo039pDhDDWg7xw3vrR61zbnACNUOc9HTS+0AGne
 TSU+y3MDcUKFXZQUdfdTnwW2GK0ME1Ll5RE5wzk3a5me42pxjc5Sae/ng
 vpdeXo+Gw4GpdOVD5/CbCDb21CQGoYw1I1pdN79L7aVZ8nmSHdRUTv1pj
 u+3RO7rTgw2KHw8XL/WniFkqRM53jVajfmRP5Vzm0jleaO/r92IjoG+tw
 PO57dIcW6kLOKMak4l1oMGtHyG4sT4ifUp0zGAm3dUY5jOXshnonudTpF
 2ANEM3BBlDn7d1WOGrx/vHqChMejButvBo5BDU7e8wN+9e+TmZzOChG91 A==;
X-CSE-ConnectionGUID: +W3vC+AYSgKs6sskK+Ruag==
X-CSE-MsgGUID: KWQbR0tQTkiXfp8m2FPB/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36042854"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36042854"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 11:15:11 -0700
X-CSE-ConnectionGUID: t8RXzH6VS2uHSBY1CvhC6Q==
X-CSE-MsgGUID: 3tW5Et98T+yInExFptrOuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69377357"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Sep 2024 11:15:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Sep 2024 21:15:07 +0300
Date: Tue, 17 Sep 2024 21:15:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 2/2] drm/i915/display: Prevent DC6 while vblank is
 enabled for Panel Replay
Message-ID: <ZunHK2ZvWyRECCxF@intel.com>
References: <20240917063600.3086259-1-jouni.hogander@intel.com>
 <20240917063600.3086259-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240917063600.3086259-3-jouni.hogander@intel.com>
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

On Tue, Sep 17, 2024 at 09:36:00AM +0300, Jouni Högander wrote:
> We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
> prevent DC6 in case of Panel Replay. This causes problems if user-space is
> polling for vblank events.
> 
> Fix this by setting target DC state as DC_STATE_EN_UPTO_DC5 when both
> source and sink are supporting eDP Panel Replay and VBI is enabled.
> 
> v2:
>   - use READ_ONCE in intel_display_vblank_work
>   - use DC_STATE_DISABLE instead of DC_STATE_EN_UPTO_DC6
>   - use intel_crtc->block_dc6_needed
> 
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2296
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 ++
>  .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
>  2 files changed, 30 insertions(+)
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
> index 8f13f148c73e3..4bdc67e1baa31 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1361,16 +1361,38 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>  	return true;
>  }
>  
> +static void intel_display_vblank_work(struct work_struct *work)
> +{
> +	struct intel_display *display =
> +		container_of(work, typeof(*display), irq.vblank_work);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	u8 vblank_enabled = READ_ONCE(display->irq.vblank_enabled);

Could be a bool since you don't use the numeric value for anything.
Or could just not have a local variable since you only use it once
anyway.

> +
> +	/*
> +	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
> +	 * code for DC3CO handling. DC3CO target state is currently disabled in
> +	 * PSR code. If DC3CO is taken into use we need take that into account
> +	 * here as well.
> +	 */
> +	intel_display_power_set_target_dc_state(i915, vblank_enabled ? DC_STATE_DISABLE :
> +						DC_STATE_EN_UPTO_DC6);
> +}
> +
>  int bdw_enable_vblank(struct drm_crtc *_crtc)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	unsigned long irqflags;
> +	u8 block_dc6_needed = READ_ONCE(crtc->block_dc6_needed);

This doesn't really need the read once dance IMO since this
will never change between vblank on/off.

Feels like the introduction of that flag should also be part of
this patch, and this should be the first patch, and the second
patch would then just figure out when to set said flag.

>  
>  	if (gen11_dsi_configure_te(crtc, true))
>  		return 0;
>  
> +	if (display->irq.vblank_enabled++ == 0 && block_dc6_needed)
> +		schedule_work(&display->irq.vblank_work);
> +
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>  	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> @@ -1436,6 +1458,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
>  void bdw_disable_vblank(struct drm_crtc *_crtc)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	unsigned long irqflags;
> @@ -1446,6 +1469,9 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>  	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> +
> +	if (--display->irq.vblank_enabled == 0)

This one seems to be missing the block_dc6_needed check.

> +		schedule_work(&display->irq.vblank_work);
>  }
>  
>  void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -1871,4 +1897,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
>  		i915->display.irq.display_irqs_enabled = false;
>  
>  	intel_hotplug_irq_init(i915);
> +
> +	INIT_WORK(&i915->display.irq.vblank_work, intel_display_vblank_work);

I'd probably also toss in a flush_work() at the end of
intel_vblank_off() to make sure the work doesn't linger
past its due date.

-- 
Ville Syrjälä
Intel
