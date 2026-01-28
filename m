Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLLvGNrmeWl60wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 11:37:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6AF9F936
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 11:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54E4C10E63E;
	Wed, 28 Jan 2026 10:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F41X8UX6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA6810E645;
 Wed, 28 Jan 2026 10:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769596629; x=1801132629;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qkbkelAPjgCA+ZcCgv7G2Xp7/tg8ldzlzu5N/RsplE4=;
 b=F41X8UX6kgcg9HQEkoGUGBFJgmyCyXvRAUdl+d2PCvnw3Mb529Lsb+0J
 m03QTbMeLX5bfjpOJxmFxi2x//csLr+Npz5ea7O3JwA2i+VS8M2Z7lz1O
 EjIFXVEWbvFH0KX+LYXeDvMXcXSZ2EmpFJHWiTbwTFME9Cdcl1RbwTxb5
 RxBMu0ZUVHmy3Lmj28XhqSl6Wgo9FPoMda0xPstISW/fBObIX9iu1ajz/
 D1DHTu62Hb/AGlx2kxPcprBEQLCMfCjsLOUm0JA1wPQsAObXn8eg1PaSb
 nF1HFtWN9DBgQDkOjfu3EeWtKD5Ccz4anpQjQocDL1uro5LnU0v0K7DJk g==;
X-CSE-ConnectionGUID: m7keqPA7RAOeBZFusnLJ7w==
X-CSE-MsgGUID: 15bZpH7GSzil/egTUgqiNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="88379502"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88379502"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 02:36:48 -0800
X-CSE-ConnectionGUID: rGm091yxRs6RN8jhNx5lQw==
X-CSE-MsgGUID: HapZHNj9TuWYJyRk53RLMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208252789"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 02:36:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
 gating issue (22021048059)
In-Reply-To: <20260128074806.3324942-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260128074806.3324942-1-mika.kahola@intel.com>
Date: Wed, 28 Jan 2026 12:36:42 +0200
Message-ID: <dbf4f2f926ab41f860bfac9b22b185fc519a6815@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 1C6AF9F936
X-Rspamd-Action: no action

On Wed, 28 Jan 2026, Mika Kahola <mika.kahola@intel.com> wrote:
> Prevent display corruption observed after restart, hotplug, or unplug
> operations on Meteor Lake and newer platforms. The issue is caused by
> DSS clock gating affecting DSC logic when pipe power wells are disabled.
>
> Apply WA 22021048059 by disabling DSS clock gating for the affected pipes
> before turning off their power wells. This avoids DSC corruption on
> external displays.
>
> WA: 22021048059
> BSpec: 690991, 666241
>

Superfluous blank line. The git commit trailers belong together.

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   | 78 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_regs.h |  7 ++
>  .../gpu/drm/i915/display/intel_display_wa.c   |  2 +
>  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>  4 files changed, 86 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 6f9bc6f9615e..1ef450f26879 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -14,10 +14,13 @@
>  #include "intel_crt.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
> +#include "intel_display_limits.h"
>  #include "intel_display_power_well.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dmc.h"
> @@ -194,6 +197,69 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
>  	return power_well->count;
>  }
>  
> +static void clock_gating_dss_enable_disable(struct intel_display *display,
> +					    u8 irq_pipe_mask,
> +					    bool disable)
> +{
> +	struct drm_printer p;
> +	enum pipe pipe;
> +
> +	switch (irq_pipe_mask) {
> +	case BIT(PIPE_A):
> +		pipe = PIPE_A;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_A_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_A_GATING_DISABLED, 0);
> +		break;
> +	case BIT(PIPE_B):
> +		pipe = PIPE_B;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_B_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_B_GATING_DISABLED, 0);
> +		break;
> +	case BIT(PIPE_C):
> +		pipe = PIPE_C;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_C_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_C_GATING_DISABLED, 0);
> +		break;
> +	case BIT(PIPE_D):
> +		pipe = PIPE_D;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_D_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_D_GATING_DISABLED, 0);
> +		break;
> +	default:
> +		MISSING_CASE(irq_pipe_mask);
> +		break;
> +	}

irq_pipe_mask implies it can have multiple pipes set. That will lead to
a warning here. Does this need to use for_each_pipe_masked() instead?

The whole thing is awfully verbose as well. Perhaps figure out the bits
to set/unset based on the pipes, and have just one intel_de_rmw()
statement?

> +
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;

This is redundant.

> +
> +	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
> +
> +	drm_printf(&p, "dss clock gating %sd on pipe %c (0x%.8x)\n",
> +		   str_enable_disable(!disable), pipe_name(pipe),
> +		   intel_de_read(display, CLKGATE_DIS_DSSDSC));

Using a printer is overkill for one line. This should just be a
drm_dbg_kms().

And this also assumes just one pipe.

BR,
Jani.


> +}
> +
>  /*
>   * Starting with Haswell, we have a "Power Down Well" that can be turned off
>   * when not needed anymore. We have 4 registers that can request the power well
> @@ -203,15 +269,23 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
>  static void hsw_power_well_post_enable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
> -	if (irq_pipe_mask)
> +	if (irq_pipe_mask) {
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
> +
> +		if (intel_display_wa(display, 22021048059))
> +			clock_gating_dss_enable_disable(display, irq_pipe_mask, false);
> +	}
>  }
>  
>  static void hsw_power_well_pre_disable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
> -	if (irq_pipe_mask)
> +	if (irq_pipe_mask) {
> +		if (intel_display_wa(display, 22021048059))
> +			clock_gating_dss_enable_disable(display, irq_pipe_mask, true);
> +
>  		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
> +	}
>  }
>  
>  #define ICL_AUX_PW_TO_PHY(pw_idx)	\
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9e0d853f4b61..9740f32ced24 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2211,6 +2211,13 @@
>  #define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
>  #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
>  
> +/* clock gating DSS DSC disable register */
> +#define CLKGATE_DIS_DSSDSC			_MMIO(0x46548)
> +#define   DSS_PIPE_D_GATING_DISABLED		REG_BIT(31)
> +#define   DSS_PIPE_C_GATING_DISABLED		REG_BIT(29)
> +#define   DSS_PIPE_B_GATING_DISABLED		REG_BIT(27)
> +#define   DSS_PIPE_A_GATING_DISABLED		REG_BIT(25)
> +
>  /* SKL Fuse Status */
>  enum skl_power_gate {
>  	SKL_PG0,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 86a6cc45b6ab..f8e14aa34dae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -84,6 +84,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return intel_display_needs_wa_16025573575(display);
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> +	case INTEL_DISPLAY_WA_22021048059:
> +		return DISPLAY_VER(display) >= 14;
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 40f989f19df1..767420d5f406 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -34,6 +34,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_22014263786,
> +	INTEL_DISPLAY_WA_22021048059,
>  };
>  
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);

-- 
Jani Nikula, Intel
