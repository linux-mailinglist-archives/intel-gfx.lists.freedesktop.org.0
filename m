Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE2AGjoWcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:21:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 133E5668BC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:21:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C3C10E995;
	Thu, 22 Jan 2026 12:21:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="grqVR0Vs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B33010E0DE;
 Thu, 22 Jan 2026 12:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769084470; x=1800620470;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=17SvrHSg+t3xi0i2O3ECvc0K+Eu5DlrREh7/Nh63HYs=;
 b=grqVR0Vs+ZR1MyO7Gz+DFcb7I60+FrkacF3RpO2dcFfCCcECTx4nvNpz
 hnQwNGqm0E0FQI6MnIfU3rYcYjFlRa506mXIVMyxPc8PZ+K4WzzCKFQIQ
 AHMXhzue52eSxwF8RsIKh7y/AwHzIx0SoZy1VAd+OJOwbO4lGQra+UDb8
 XE/1FJFCyJ1qqtPqPJicc/Q0CjbM3NtgT4H9YFPS3/9HIq8Y0K97OB+pr
 QWyv4uKn2fPdIbMhzDcwDi12Y9BrPXIqL+r+sPk2ZdG+9hW7HakEHlMir
 nODekT1FLUVmujvCisrZdZQJVfJMyCYXwy7Y0j22OOjcjO9B/66q0/qKX g==;
X-CSE-ConnectionGUID: bAlA0XjYRG+XAleUfreWMA==
X-CSE-MsgGUID: yxkmC7R3Qe+v0smY8KaudQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81435726"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81435726"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:21:10 -0800
X-CSE-ConnectionGUID: Qmj0Ugo+TuusUomNg/tqCQ==
X-CSE-MsgGUID: qiehIkE6Rji9dnTSF8eWow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="205970977"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:21:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 18/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_modeset_setup.c
In-Reply-To: <20260121232414.707192-19-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-19-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 14:21:04 +0200
Message-ID: <001ab7708d5ce2a95afeae3aa617d12ff0cb3104@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 133E5668BC
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move GEN9_CLKGATE_DIS_0 reg to display header to make
> intel_modeset_setup.c free from i915_reg.h include.
>
> v2: Remove from gmd common header and use display_regs.h (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c |  1 -
>  drivers/gpu/drm/i915/i915_reg.h                    | 13 -------------
>  3 files changed, 13 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 1def3dccdf61..ec18ad9a262c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -377,6 +377,19 @@
>  #define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
>  #define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
>  
> +/*
> + * GEN9 clock gating regs
> + */
> +#define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> +#define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
> +#define   PWM2_GATING_DIS		REG_BIT(14)
> +#define   PWM1_GATING_DIS		REG_BIT(13)
> +
> +#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
> +#define   TGL_VRH_GATING_DIS		REG_BIT(31)
> +#define   DPT_GATING_DIS		REG_BIT(22)
> +
>  #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
>  #define   BXT_GMBUS_GATING_DIS		(1 << 14)
>  #define   DG2_DPFC_GATING_DIS		REG_BIT(31)
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index d10cbf69a5f8..9b0becee221c 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -11,7 +11,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
>  
> -#include "i915_reg.h"
>  #include "i9xx_wm.h"
>  #include "intel_atomic.h"
>  #include "intel_bw.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c68a64bc7646..86035f54ae7a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -629,19 +629,6 @@
>  #define VLV_CLK_CTL2			_MMIO(0x101104)
>  #define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
>  
> -/*
> - * GEN9 clock gating regs
> - */
> -#define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> -#define   DARBF_GATING_DIS		REG_BIT(27)
> -#define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
> -#define   PWM2_GATING_DIS		REG_BIT(14)
> -#define   PWM1_GATING_DIS		REG_BIT(13)
> -
> -#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
> -#define   TGL_VRH_GATING_DIS		REG_BIT(31)
> -#define   DPT_GATING_DIS		REG_BIT(22)
> -
>  #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
>  #define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
>  #define   PIPEB_HLINE_INT_EN			REG_BIT(28)

-- 
Jani Nikula, Intel
