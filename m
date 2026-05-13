Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIRnIMRwBGprIQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 14:38:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C1A533245
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 14:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7020410EE24;
	Wed, 13 May 2026 12:38:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DjzUmSwx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4998710E337;
 Wed, 13 May 2026 12:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778675903; x=1810211903;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Mh/ihdMa85iXepw/qWSMDdcwq/mcjE4PGui68tpbqxs=;
 b=DjzUmSwx0eTp9xeGsHF8IkM7+fRXycWXcdno5X/jeLY3jDSSLX37jCFQ
 DFQsVMmiiym3NLIc1ZXv/e7cnPQoJuqp57zyk5Vw/EHmTRTUt/T2IM2j9
 4Ud5GmA/LlJqDbg88BBsml5+MBqMiUxD3iOMkfluWpp8plpcaZ6ZdF4n6
 tEkWWySg2Dl9+olrUo44Q+dDmaytgZX8UhOVpnO1M1REv/L957LRKvMOC
 HSPZCDWSW6ObYIIBKUB+bFAB+jEJ/tew//VtwA8HuDfmZEI+iuqTeEINT
 8jKb5CSwYubjzyt8gftQLZu3dNaczy7/1UCGWL9CwjhY2MFwbfd19eMUq Q==;
X-CSE-ConnectionGUID: jw5jW/9PRqG7CH7MeM/XZA==
X-CSE-MsgGUID: TUtct5NLQv2YezFx0f9m9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="89907412"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="89907412"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 05:38:23 -0700
X-CSE-ConnectionGUID: vkaY5GfjRMGTuQEtBtabPA==
X-CSE-MsgGUID: fqrapqhqSrGMQYfmXsAh4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="242423019"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.10])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 05:38:22 -0700
Date: Wed, 13 May 2026 15:38:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 6/6] drm/i915/irq: add intel_display_irq_handler() to
 irq funcs
Message-ID: <agRwushjikqBGmxp@intel.com>
References: <cover.1778666967.git.jani.nikula@intel.com>
 <ce7673cb2614044646d5d51ba8927c9a892e3cb9.1778666967.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ce7673cb2614044646d5d51ba8927c9a892e3cb9.1778666967.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 35C1A533245
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

On Wed, May 13, 2026 at 01:10:11PM +0300, Jani Nikula wrote:
> Call the platform specific display irq handler hooks via
> intel_display_irq_handler(). Add master_ctl to struct
> intel_display_irq_state, and pass the state pointer to the handler where
> necessary.

Would probably be cleaner to extract the gmch *_display_irq_handler()
in a separate patch before adding the vfunc.

> 
> v2: Rebase, handle LPE audio in ack (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 86 ++++++++++++++++---
>  .../gpu/drm/i915/display/intel_display_irq.h  | 11 +--
>  drivers/gpu/drm/i915/i915_irq.c               | 38 +++-----
>  drivers/gpu/drm/xe/display/xe_display.c       |  2 +-
>  4 files changed, 89 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 4b2a61e97ed1..e8c1e0f88054 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -597,8 +597,8 @@ static void i9xx_pipestat_irq_ack(struct intel_display *display,
>  	spin_unlock(&display->irq.lock);
>  }
>  
> -void i915_pipestat_irq_handler(struct intel_display *display,
> -			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
> +static void i915_pipestat_irq_handler(struct intel_display *display,
> +				      u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
>  {
>  	bool blc_event = false;
>  	enum pipe pipe;
> @@ -621,8 +621,8 @@ void i915_pipestat_irq_handler(struct intel_display *display,
>  		intel_opregion_asle_intr(display);
>  }
>  
> -void i965_pipestat_irq_handler(struct intel_display *display,
> -			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
> +static void i965_pipestat_irq_handler(struct intel_display *display,
> +				      u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
>  {
>  	bool blc_event = false;
>  	enum pipe pipe;
> @@ -648,8 +648,8 @@ void i965_pipestat_irq_handler(struct intel_display *display,
>  		intel_gmbus_irq_handler(display);
>  }
>  
> -void valleyview_pipestat_irq_handler(struct intel_display *display,
> -				     const u32 pipe_stats[I915_MAX_PIPES])
> +static void valleyview_pipestat_irq_handler(struct intel_display *display,
> +					    const u32 pipe_stats[I915_MAX_PIPES])
>  {
>  	enum pipe pipe;
>  
> @@ -1021,7 +1021,8 @@ void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u3
>  		intel_de_write_fw(display, SDEIER, sde_ier);
>  }
>  
> -bool ilk_display_irq_handler(struct intel_display *display)
> +static bool ilk_display_irq_handler(struct intel_display *display,
> +				    const struct intel_display_irq_state *state)
>  {
>  	u32 de_iir;
>  	bool handled = false;
> @@ -1405,7 +1406,7 @@ static void gen8_read_and_ack_pch_irqs(struct intel_display *display, u32 *pch_i
>  		intel_de_write(display, PICAINTERRUPT_IER, pica_ier);
>  }
>  
> -void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
> +static void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
>  {
>  	u32 iir;
>  	enum pipe pipe;
> @@ -1566,6 +1567,14 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
>  	}
>  }
>  
> +static bool gen8_display_irq_handler(struct intel_display *display,
> +				     const struct intel_display_irq_state *state)
> +{
> +	gen8_de_irq_handler(display, state->master_ctl);
> +
> +	return true;
> +}
> +
>  u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl)
>  {
>  	u32 iir;
> @@ -1590,7 +1599,8 @@ void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir)
>  		intel_opregion_asle_intr(display);
>  }
>  
> -void gen11_display_irq_handler(struct intel_display *display)
> +static bool gen11_display_irq_handler(struct intel_display *display,
> +				      const struct intel_display_irq_state *state)
>  {
>  	u32 disp_ctl;
>  
> @@ -1606,6 +1616,8 @@ void gen11_display_irq_handler(struct intel_display *display)
>  	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
>  
>  	intel_display_rpm_assert_unblock(display);
> +
> +	return true;
>  }
>  
>  static void i915gm_irq_cstate_wa_enable(struct intel_display *display)
> @@ -1921,8 +1933,8 @@ static void vlv_display_error_irq_ack(struct intel_display *display,
>  	intel_de_write(display, VLV_EMR, emr);
>  }
>  
> -void vlv_display_error_irq_handler(struct intel_display *display,
> -				   u32 eir, u32 dpinvgtt)
> +static void vlv_display_error_irq_handler(struct intel_display *display,
> +					  u32 eir, u32 dpinvgtt)
>  {
>  	drm_dbg(display->drm, "Master Error, EIR 0x%08x\n", eir);
>  
> @@ -2021,6 +2033,28 @@ static void i9xx_display_irq_ack(struct intel_display *display,
>  	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
>  }
>  
> +static bool i965_display_irq_handler(struct intel_display *display,
> +				     const struct intel_display_irq_state *state)
> +{
> +	if (state->hotplug_status)
> +		i9xx_hpd_irq_handler(display, state->hotplug_status);
> +
> +	i965_pipestat_irq_handler(display, state->iir, state->pipe_stats);
> +
> +	return true;
> +}
> +
> +static bool i915_display_irq_handler(struct intel_display *display,
> +				     const struct intel_display_irq_state *state)
> +{
> +	if (state->hotplug_status)
> +		i9xx_hpd_irq_handler(display, state->hotplug_status);
> +
> +	i915_pipestat_irq_handler(display, state->iir, state->pipe_stats);
> +
> +	return true;
> +}
> +
>  static u32 vlv_error_mask(void)
>  {
>  	/* TODO enable other errors too? */
> @@ -2102,6 +2136,20 @@ static void vlv_display_irq_ack(struct intel_display *display,
>  		intel_lpe_audio_irq_handler(display);
>  }
>  
> +static bool vlv_display_irq_handler(struct intel_display *display,
> +				    const struct intel_display_irq_state *state)
> +{
> +	if (state->hotplug_status)
> +		i9xx_hpd_irq_handler(display, state->hotplug_status);
> +
> +	if (state->iir & I915_MASTER_ERROR_INTERRUPT)
> +		vlv_display_error_irq_handler(display, state->eir, state->dpinvgtt);
> +
> +	valleyview_pipestat_irq_handler(display, state->pipe_stats);
> +
> +	return true;
> +}
> +
>  static void ibx_display_irq_reset(struct intel_display *display)
>  {
>  	if (HAS_PCH_NOP(display))
> @@ -2481,39 +2529,46 @@ struct intel_display_irq_funcs {
>  	void (*reset)(struct intel_display *display);
>  	void (*postinstall)(struct intel_display *display);
>  	void (*ack)(struct intel_display *display, struct intel_display_irq_state *state);
> +	bool (*handler)(struct intel_display *display, const struct intel_display_irq_state *state);
>  };
>  
>  static const struct intel_display_irq_funcs gen11_display_irq_funcs = {
>  	.reset = gen11_display_irq_reset,
>  	.postinstall = gen11_de_irq_postinstall,
> +	.handler = gen11_display_irq_handler,
>  };
>  
>  static const struct intel_display_irq_funcs gen8_display_irq_funcs = {
>  	.reset = gen8_display_irq_reset,
>  	.postinstall = gen8_de_irq_postinstall,
> +	.handler = gen8_display_irq_handler,
>  };
>  
>  static const struct intel_display_irq_funcs vlv_display_irq_funcs = {
>  	.reset = vlv_display_irq_reset,
>  	.postinstall = vlv_display_irq_postinstall,
>  	.ack = vlv_display_irq_ack,
> +	.handler = vlv_display_irq_handler,
>  };
>  
>  static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
>  	.reset = ilk_display_irq_reset,
>  	.postinstall = ilk_de_irq_postinstall,
> +	.handler = ilk_display_irq_handler,
>  };
>  
>  static const struct intel_display_irq_funcs i965_display_irq_funcs = {
>  	.reset = i9xx_display_irq_reset,
>  	.postinstall = i965_display_irq_postinstall,
>  	.ack = i9xx_display_irq_ack,
> +	.handler = i965_display_irq_handler,
>  };
>  
>  static const struct intel_display_irq_funcs i915_display_irq_funcs = {
>  	.reset = i9xx_display_irq_reset,
>  	.postinstall = i915_display_irq_postinstall,
>  	.ack = i9xx_display_irq_ack,
> +	.handler = i915_display_irq_handler,
>  };
>  
>  void intel_display_irq_reset(struct intel_display *display)
> @@ -2541,6 +2596,15 @@ void intel_display_irq_ack(struct intel_display *display,
>  	display->irq.funcs->ack(display, state);
>  }
>  
> +bool intel_display_irq_handler(struct intel_display *display,
> +			       const struct intel_display_irq_state *state)
> +{
> +	if (!HAS_DISPLAY(display) || !display->irq.funcs->handler)
> +		return true;
> +
> +	return display->irq.funcs->handler(display, state);
> +}
> +
>  void intel_display_irq_init(struct intel_display *display)
>  {
>  	spin_lock_init(&display->irq.lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 3773a31e48f2..a1227cee885a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -51,14 +51,12 @@ void bdw_disable_vblank(struct drm_crtc *crtc);
>  
>  void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier);
>  void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u32 sde_ier);
> -bool ilk_display_irq_handler(struct intel_display *display);
> -void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
> -void gen11_display_irq_handler(struct intel_display *display);
>  
>  u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
>  
>  struct intel_display_irq_state {
> +	u32 master_ctl;
>  	u32 iir;
>  	u32 eir;
>  	u32 hotplug_status;
> @@ -69,6 +67,7 @@ struct intel_display_irq_state {
>  void intel_display_irq_reset(struct intel_display *display);
>  void intel_display_irq_postinstall(struct intel_display *display);
>  void intel_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
> +bool intel_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
>  
>  u32 i9xx_display_irq_enable_mask(struct intel_display *display);
>  
> @@ -76,12 +75,6 @@ u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
>  void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
>  void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
>  
> -void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
> -void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
> -void valleyview_pipestat_irq_handler(struct intel_display *display, const u32 pipe_stats[I915_MAX_PIPES]);
> -
> -void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
> -
>  void intel_display_irq_init(struct intel_display *display);
>  
>  void i915gm_irq_cstate_wa(struct intel_display *display, bool enable);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index b28e89fdb6fd..30ce462e92ab 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -38,7 +38,6 @@
>  
>  #include "display/intel_display_irq.h"
>  #include "display/intel_hotplug.h"
> -#include "display/intel_hotplug_irq.h"
>  
>  #include "gt/intel_breadcrumbs.h"
>  #include "gt/intel_gt.h"
> @@ -286,13 +285,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  		if (pm_iir)
>  			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
>  
> -		if (state.hotplug_status)
> -			i9xx_hpd_irq_handler(display, state.hotplug_status);
> -
> -		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
> -			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
> -
> -		valleyview_pipestat_irq_handler(display, state.pipe_stats);
> +		intel_display_irq_handler(display, &state);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, ret);
> @@ -357,13 +350,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
>  		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
>  
> -		if (state.hotplug_status)
> -			i9xx_hpd_irq_handler(display, state.hotplug_status);
> -
> -		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
> -			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
> -
> -		valleyview_pipestat_irq_handler(display, state.pipe_stats);
> +		intel_display_irq_handler(display, &state);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, ret);
> @@ -410,7 +397,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  		ret = IRQ_HANDLED;
>  	}
>  
> -	if (ilk_display_irq_handler(display))
> +	if (intel_display_irq_handler(display, NULL))
>  		ret = IRQ_HANDLED;
>  
>  	if (GRAPHICS_VER(i915) >= 6) {
> @@ -472,8 +459,11 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
>  
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
>  	if (master_ctl & ~GEN8_GT_IRQS) {
> +		const struct intel_display_irq_state state = {
> +			.master_ctl = master_ctl,
> +		};
>  		disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> -		gen8_de_irq_handler(display, master_ctl);
> +		intel_display_irq_handler(display, &state);
>  		enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  	}
>  
> @@ -525,7 +515,7 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
>  
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
>  	if (master_ctl & GEN11_DISPLAY_IRQ)
> -		gen11_display_irq_handler(display);
> +		intel_display_irq_handler(display, NULL);
>  
>  	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
>  
> @@ -592,7 +582,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  	gen11_gt_irq_handler(gt, master_ctl);
>  
>  	if (master_ctl & GEN11_DISPLAY_IRQ)
> -		gen11_display_irq_handler(display);
> +		intel_display_irq_handler(display, NULL);
>  
>  	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
>  
> @@ -896,10 +886,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
>  		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
>  
> -		if (state.hotplug_status)
> -			i9xx_hpd_irq_handler(display, state.hotplug_status);
> -
> -		i915_pipestat_irq_handler(display, state.iir, state.pipe_stats);
> +		intel_display_irq_handler(display, &state);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, ret);
> @@ -1003,10 +990,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
>  		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
>  
> -		if (state.hotplug_status)
> -			i9xx_hpd_irq_handler(display, state.hotplug_status);
> -
> -		i965_pipestat_irq_handler(display, state.iir, state.pipe_stats);
> +		intel_display_irq_handler(display, &state);
>  	} while (0);
>  
>  	pmu_irq_stats(dev_priv, IRQ_HANDLED);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 62e5d38938eb..796164e9bc20 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -215,7 +215,7 @@ void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
>  		return;
>  
>  	if (master_ctl & DISPLAY_IRQ)
> -		gen11_display_irq_handler(display);
> +		intel_display_irq_handler(display, NULL);
>  }
>  
>  void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
