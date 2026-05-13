Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SB+aNQuLBGqvLQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 16:30:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC35535156
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 16:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162FA892C1;
	Wed, 13 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TF1LCGzp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54A1E892C1;
 Wed, 13 May 2026 14:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778682632; x=1810218632;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9sTmjg0W5b9FgKDBZGDVJfIXX5rk5bJuiXEXPCsDpqw=;
 b=TF1LCGzpegXVK60DYtqpJ8uup30sAx91et5xy2Y/SzFML7jhZLHcLvFV
 KWHNaGvYnkqydW4xQA/JPezxrCJjGIl2M207wVo1i/YLdKDc2YOmmodVU
 r4trd3CQxSX0mxb/F7u5saKzp5Wtv/OAH5JJdkOPdobYkpQttn2f+JmFW
 cx7Vs2hNy4uKTJXOUcVcmUDMKV0Lt9SOpvgXjrKtnun46GbSA/x/3rzcC
 osmuhr5XvCbWk93DtZkvVz5XSPYlvv38HsEQpzSWf0sm0mQAjVmSKh33Y
 +RweFSph8Yrr8Lpl4IYHo7Gr/qycqb6HaqxO0ik/xmvEOlgMgta6SyprV Q==;
X-CSE-ConnectionGUID: N1UXJAS7TcaUsMyimGVstA==
X-CSE-MsgGUID: iwLvRXa+QCOyCjj0Lm2iWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="82178122"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="82178122"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 07:30:32 -0700
X-CSE-ConnectionGUID: qYoynPEERtGVE3hYSLK8fA==
X-CSE-MsgGUID: Rm7Yqh9gSO+tza/Ek5dYsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="276206359"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.10])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 07:30:31 -0700
Date: Wed, 13 May 2026 17:30:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 5/6] drm/i915/irq: add intel_display_irq_ack() to irq
 funcs
Message-ID: <agSLAz2q4ksazecu@intel.com>
References: <cover.1778666967.git.jani.nikula@intel.com>
 <cdeee940180b0009bc71753e065c02cc496ae272.1778666967.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cdeee940180b0009bc71753e065c02cc496ae272.1778666967.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 2CC35535156
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 01:10:10PM +0300, Jani Nikula wrote:
> Some platforms have a separate step for acking display irqs. Call the
> platform specific display irq ack hooks, if any, via
> intel_display_irq_ack().
> 
> Introduce struct intel_display_irq_state to group together all the data
> the ack hooks need. In the follow-up, this state will be passed on to a
> shared handler function.

This also might be a bit cleaner done in two steps:
1. extract the gmch ack() funcs
2. add the vfunc

> 
> Check for HAS_DISPLAY() in intel_display_irq_ack() for completeness even
> though fusing is not possible on the platforms in question.
> 
> v2:
> - Include LPE audio in the ack part
> - Check for HAS_DISPLAY()
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  |  58 ++++++-
>  .../gpu/drm/i915/display/intel_display_irq.h  |  12 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 144 ++++++------------
>  3 files changed, 113 insertions(+), 101 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 1c3c8095765d..4b2a61e97ed1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -23,6 +23,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
>  #include "intel_hotplug_irq.h"
> +#include "intel_lpe_audio.h"
>  #include "intel_parent.h"
>  #include "intel_pipe_crc_regs.h"
>  #include "intel_plane.h"
> @@ -529,8 +530,8 @@ static void i9xx_pipestat_irq_reset(struct intel_display *display)
>  	}
>  }
>  
> -void i9xx_pipestat_irq_ack(struct intel_display *display,
> -			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
> +static void i9xx_pipestat_irq_ack(struct intel_display *display,
> +				  u32 iir, u32 pipe_stats[I915_MAX_PIPES])
>  {
>  	enum pipe pipe;
>  
> @@ -1898,8 +1899,8 @@ static void vlv_page_table_error_irq_handler(struct intel_display *display, u32
>  	}
>  }
>  
> -void vlv_display_error_irq_ack(struct intel_display *display,
> -			       u32 *eir, u32 *dpinvgtt)
> +static void vlv_display_error_irq_ack(struct intel_display *display,
> +				      u32 *eir, u32 *dpinvgtt)
>  {
>  	u32 emr;
>  
> @@ -2010,6 +2011,16 @@ static void i965_display_irq_postinstall(struct intel_display *display)
>  	i915_enable_asle_pipestat(display);
>  }
>  
> +static void i9xx_display_irq_ack(struct intel_display *display,
> +				 struct intel_display_irq_state *state)
> +{
> +	if (state->iir & I915_DISPLAY_PORT_INTERRUPT)
> +		state->hotplug_status = i9xx_hpd_irq_ack(display);
> +
> +	/* Call regardless, as some status bits might not be signalled in IIR */
> +	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
> +}
> +
>  static u32 vlv_error_mask(void)
>  {
>  	/* TODO enable other errors too? */
> @@ -2065,6 +2076,32 @@ static void vlv_display_irq_postinstall(struct intel_display *display)
>  	spin_unlock_irq(&display->irq.lock);
>  }
>  
> +static u32 vlv_lpe_irq_mask(struct intel_display *display)
> +{
> +	if (display->platform.cherryview)
> +		return I915_LPE_PIPE_A_INTERRUPT | I915_LPE_PIPE_B_INTERRUPT |
> +			I915_LPE_PIPE_C_INTERRUPT;
> +	else
> +		return I915_LPE_PIPE_A_INTERRUPT | I915_LPE_PIPE_B_INTERRUPT;
> +}
> +
> +static void vlv_display_irq_ack(struct intel_display *display,
> +				struct intel_display_irq_state *state)
> +{
> +	if (state->iir & I915_DISPLAY_PORT_INTERRUPT)
> +		state->hotplug_status = i9xx_hpd_irq_ack(display);
> +
> +	if (state->iir & I915_MASTER_ERROR_INTERRUPT)
> +		vlv_display_error_irq_ack(display, &state->eir, &state->dpinvgtt);
> +
> +	/* Call regardless, as some status bits might not be signalled in IIR */
> +	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
> +
> +	/* The handler acks the irq, so need to call the handler here */
> +	if (state->iir & vlv_lpe_irq_mask(display))
> +		intel_lpe_audio_irq_handler(display);
> +}
> +
>  static void ibx_display_irq_reset(struct intel_display *display)
>  {
>  	if (HAS_PCH_NOP(display))
> @@ -2443,6 +2480,7 @@ static void gen11_de_irq_postinstall(struct intel_display *display)
>  struct intel_display_irq_funcs {
>  	void (*reset)(struct intel_display *display);
>  	void (*postinstall)(struct intel_display *display);
> +	void (*ack)(struct intel_display *display, struct intel_display_irq_state *state);
>  };
>  
>  static const struct intel_display_irq_funcs gen11_display_irq_funcs = {
> @@ -2458,6 +2496,7 @@ static const struct intel_display_irq_funcs gen8_display_irq_funcs = {
>  static const struct intel_display_irq_funcs vlv_display_irq_funcs = {
>  	.reset = vlv_display_irq_reset,
>  	.postinstall = vlv_display_irq_postinstall,
> +	.ack = vlv_display_irq_ack,
>  };
>  
>  static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
> @@ -2468,11 +2507,13 @@ static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
>  static const struct intel_display_irq_funcs i965_display_irq_funcs = {
>  	.reset = i9xx_display_irq_reset,
>  	.postinstall = i965_display_irq_postinstall,
> +	.ack = i9xx_display_irq_ack,
>  };
>  
>  static const struct intel_display_irq_funcs i915_display_irq_funcs = {
>  	.reset = i9xx_display_irq_reset,
>  	.postinstall = i915_display_irq_postinstall,
> +	.ack = i9xx_display_irq_ack,
>  };
>  
>  void intel_display_irq_reset(struct intel_display *display)
> @@ -2491,6 +2532,15 @@ void intel_display_irq_postinstall(struct intel_display *display)
>  	display->irq.funcs->postinstall(display);
>  }
>  
> +void intel_display_irq_ack(struct intel_display *display,
> +			   struct intel_display_irq_state *state)
> +{
> +	if (!HAS_DISPLAY(display) || !display->irq.funcs->ack)
> +		return;
> +
> +	display->irq.funcs->ack(display, state);
> +}
> +
>  void intel_display_irq_init(struct intel_display *display)
>  {
>  	spin_lock_init(&display->irq.lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index fd9873ce9755..3773a31e48f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -58,8 +58,17 @@ void gen11_display_irq_handler(struct intel_display *display);
>  u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
>  
> +struct intel_display_irq_state {
> +	u32 iir;
> +	u32 eir;
> +	u32 hotplug_status;
> +	u32 dpinvgtt;
> +	u32 pipe_stats[I915_MAX_PIPES];
> +};
> +
>  void intel_display_irq_reset(struct intel_display *display);
>  void intel_display_irq_postinstall(struct intel_display *display);
> +void intel_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
>  
>  u32 i9xx_display_irq_enable_mask(struct intel_display *display);
>  
> @@ -67,13 +76,10 @@ u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
>  void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
>  void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
>  
> -void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
> -
>  void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
>  void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
>  void valleyview_pipestat_irq_handler(struct intel_display *display, const u32 pipe_stats[I915_MAX_PIPES]);
>  
> -void vlv_display_error_irq_ack(struct intel_display *display, u32 *eir, u32 *dpinvgtt);
>  void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
>  
>  void intel_display_irq_init(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index c21b289b8007..b28e89fdb6fd 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -39,7 +39,6 @@
>  #include "display/intel_display_irq.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_hotplug_irq.h"
> -#include "display/intel_lpe_audio.h"
>  
>  #include "gt/intel_breadcrumbs.h"
>  #include "gt/intel_gt.h"
> @@ -236,17 +235,15 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	do {
> -		u32 iir, gt_iir, pm_iir;
> -		u32 eir = 0, dpinvgtt = 0;
> -		u32 pipe_stats[I915_MAX_PIPES] = {};
> -		u32 hotplug_status = 0;
> +		struct intel_display_irq_state state = {};
> +		u32 gt_iir, pm_iir;
>  		u32 ier = 0;
>  
>  		gt_iir = intel_uncore_read(&dev_priv->uncore, GTIIR);
>  		pm_iir = intel_uncore_read(&dev_priv->uncore, GEN6_PMIIR);
> -		iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
> +		state.iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
>  
> -		if (gt_iir == 0 && pm_iir == 0 && iir == 0)
> +		if (gt_iir == 0 && pm_iir == 0 && state.iir == 0)
>  			break;
>  
>  		ret = IRQ_HANDLED;
> @@ -272,26 +269,14 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  		if (pm_iir)
>  			intel_uncore_write(&dev_priv->uncore, GEN6_PMIIR, pm_iir);
>  
> -		if (iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status = i9xx_hpd_irq_ack(display);
> -
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> -			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
> -
> -		/* Call regardless, as some status bits might not be
> -		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
> -
> -		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
> -			   I915_LPE_PIPE_B_INTERRUPT))
> -			intel_lpe_audio_irq_handler(display);
> +		intel_display_irq_ack(display, &state);
>  
>  		/*
>  		 * VLV_IIR is single buffered, and reflects the level
>  		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
>  		 */
> -		if (iir)
> -			intel_uncore_write(&dev_priv->uncore, VLV_IIR, iir);
> +		if (state.iir)
> +			intel_uncore_write(&dev_priv->uncore, VLV_IIR, state.iir);
>  
>  		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
>  		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
> @@ -301,13 +286,13 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  		if (pm_iir)
>  			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
>  
> -		if (hotplug_status)
> -			i9xx_hpd_irq_handler(display, hotplug_status);
> +		if (state.hotplug_status)
> +			i9xx_hpd_irq_handler(display, state.hotplug_status);
>  
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> -			vlv_display_error_irq_handler(display, eir, dpinvgtt);
> +		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
> +			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
>  
> -		valleyview_pipestat_irq_handler(display, pipe_stats);
> +		valleyview_pipestat_irq_handler(display, state.pipe_stats);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, ret);
> @@ -330,16 +315,14 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	do {
> -		u32 master_ctl, iir;
> -		u32 eir = 0, dpinvgtt = 0;
> -		u32 pipe_stats[I915_MAX_PIPES] = {};
> -		u32 hotplug_status = 0;
> +		struct intel_display_irq_state state = {};
> +		u32 master_ctl;
>  		u32 ier = 0;
>  
>  		master_ctl = intel_uncore_read(&dev_priv->uncore, GEN8_MASTER_IRQ) & ~GEN8_MASTER_IRQ_CONTROL;
> -		iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
> +		state.iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
>  
> -		if (master_ctl == 0 && iir == 0)
> +		if (master_ctl == 0 && state.iir == 0)
>  			break;
>  
>  		ret = IRQ_HANDLED;
> @@ -362,38 +345,25 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  
>  		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
>  
> -		if (iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status = i9xx_hpd_irq_ack(display);
> -
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> -			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
> -
> -		/* Call regardless, as some status bits might not be
> -		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
> -
> -		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
> -			   I915_LPE_PIPE_B_INTERRUPT |
> -			   I915_LPE_PIPE_C_INTERRUPT))
> -			intel_lpe_audio_irq_handler(display);
> +		intel_display_irq_ack(display, &state);
>  
>  		/*
>  		 * VLV_IIR is single buffered, and reflects the level
>  		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
>  		 */
> -		if (iir)
> -			intel_uncore_write(&dev_priv->uncore, VLV_IIR, iir);
> +		if (state.iir)
> +			intel_uncore_write(&dev_priv->uncore, VLV_IIR, state.iir);
>  
>  		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
>  		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
>  
> -		if (hotplug_status)
> -			i9xx_hpd_irq_handler(display, hotplug_status);
> +		if (state.hotplug_status)
> +			i9xx_hpd_irq_handler(display, state.hotplug_status);
>  
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> -			vlv_display_error_irq_handler(display, eir, dpinvgtt);
> +		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
> +			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
>  
> -		valleyview_pipestat_irq_handler(display, pipe_stats);
> +		valleyview_pipestat_irq_handler(display, state.pipe_stats);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, ret);
> @@ -904,39 +874,32 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	do {
> -		u32 pipe_stats[I915_MAX_PIPES] = {};
> +		struct intel_display_irq_state state = {};
>  		u32 eir = 0, eir_stuck = 0;
> -		u32 hotplug_status = 0;
> -		u32 iir;
>  
> -		iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
> -		if (iir == 0)
> +		state.iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
> +		if (state.iir == 0)
>  			break;
>  
>  		ret = IRQ_HANDLED;
>  
> -		if (iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status = i9xx_hpd_irq_ack(display);
> +		intel_display_irq_ack(display, &state);
>  
> -		/* Call regardless, as some status bits might not be
> -		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
> -
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> +		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
>  
> -		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
> +		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, state.iir);
>  
> -		if (iir & I915_USER_INTERRUPT)
> -			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0], iir);
> +		if (state.iir & I915_USER_INTERRUPT)
> +			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0], state.iir);
>  
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> +		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
>  
> -		if (hotplug_status)
> -			i9xx_hpd_irq_handler(display, hotplug_status);
> +		if (state.hotplug_status)
> +			i9xx_hpd_irq_handler(display, state.hotplug_status);
>  
> -		i915_pipestat_irq_handler(display, iir, pipe_stats);
> +		i915_pipestat_irq_handler(display, state.iir, state.pipe_stats);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, ret);
> @@ -1013,44 +976,37 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	do {
> -		u32 pipe_stats[I915_MAX_PIPES] = {};
> +		struct intel_display_irq_state state = {};
>  		u32 eir = 0, eir_stuck = 0;
> -		u32 hotplug_status = 0;
> -		u32 iir;
>  
> -		iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
> -		if (iir == 0)
> +		state.iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
> +		if (state.iir == 0)
>  			break;
>  
>  		ret = IRQ_HANDLED;
>  
> -		if (iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status = i9xx_hpd_irq_ack(display);
> -
> -		/* Call regardless, as some status bits might not be
> -		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
> +		intel_display_irq_ack(display, &state);
>  
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> +		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
>  
> -		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
> +		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, state.iir);
>  
> -		if (iir & I915_USER_INTERRUPT)
> +		if (state.iir & I915_USER_INTERRUPT)
>  			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0],
> -					    iir);
> +					    state.iir);
>  
> -		if (iir & I915_BSD_USER_INTERRUPT)
> +		if (state.iir & I915_BSD_USER_INTERRUPT)
>  			intel_engine_cs_irq(to_gt(dev_priv)->engine[VCS0],
> -					    iir >> 25);
> +					    state.iir >> 25);
>  
> -		if (iir & I915_MASTER_ERROR_INTERRUPT)
> +		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
>  
> -		if (hotplug_status)
> -			i9xx_hpd_irq_handler(display, hotplug_status);
> +		if (state.hotplug_status)
> +			i9xx_hpd_irq_handler(display, state.hotplug_status);
>  
> -		i965_pipestat_irq_handler(display, iir, pipe_stats);
> +		i965_pipestat_irq_handler(display, state.iir, state.pipe_stats);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, IRQ_HANDLED);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
