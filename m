Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOrHBvsGcmmvZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:16:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5623C65D48
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:16:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7611A10E97A;
	Thu, 22 Jan 2026 11:16:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HGLcQGzW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F29310E06D;
 Thu, 22 Jan 2026 11:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769080567; x=1800616567;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rnlHZZBO+cAFQzM3koZnESYCUzYejpnS7WaLoCxQyeg=;
 b=HGLcQGzWSRU+cpQejFIVCawtBiYMP0hPUa+9/IbN1t6HS51ALYp5Nfbd
 t8lCldtCDAhRN8ZUanBbH1ve79/WXH2gToFiTw/VQMsPhzvqvTrfGBCd+
 L48/2khpffRNTs2ZUilrVUu5jqX0Uqs7hTJdVSYdu96wm3HF1+BOp8UkE
 +g0UTIsuqTM87RqjEdTRixFeeB2Vd3RETnKN/d2T0KtHtSytPIUJd05GC
 d+UHrGtd9pc8PEM8Uyl7JuUHQ0v8QZBS7re8PtPjVlaUQA4HweDG0NyaE
 uIcANNipvtz+K+WRWCyaYfBgoMDfXddtFGlMYaa5I3MAjajQ0vbYAvyQ2 Q==;
X-CSE-ConnectionGUID: XmWq+D1uS7CB51P26y+ovA==
X-CSE-MsgGUID: VvYnguqFSVS5iH6Apz7g0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81430887"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81430887"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:16:06 -0800
X-CSE-ConnectionGUID: JTBID/EaSKCeIN2aTb2Fsg==
X-CSE-MsgGUID: c7N1zVbjRSOYROTjy8p0ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="206611435"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:16:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 01/19] drm/{i915, xe}: Extract display registers from
 i915_reg.h to display
In-Reply-To: <20260121232414.707192-2-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-2-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 13:16:02 +0200
Message-ID: <007ce54a265e088d7da75e3ec308d84d0453b761@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 5623C65D48
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> There are certain register definitions which are defined in i915_reg.h
> which are exclusively needed by display. Move the same to display
> headers to remove i915_reg.h includes from display. This is a step
> towards making display independent of i915.
>
> intel_clock_gating.c can include display header directly.

...because its usage should be refactored and moved inside display.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> v2: Drop common header in include and use display_regs.h (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_pch_display.c  |  1 -
>  drivers/gpu/drm/i915/i915_reg.h                   | 10 ----------
>  drivers/gpu/drm/i915/intel_clock_gating.c         |  2 +-
>  4 files changed, 11 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9e0d853f4b61..9f8fbfb2e115 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2021,6 +2021,16 @@
>  #define  TRANS_BPC_6			REG_FIELD_PREP(TRANS_BPC_MASK, 2)
>  #define  TRANS_BPC_12			REG_FIELD_PREP(TRANS_BPC_MASK, 3)
>  
> +#define _TRANSA_CHICKEN2	0xf0064
> +#define _TRANSB_CHICKEN2	0xf1064
> +#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
> +#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
> +#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED		REG_BIT(29)
> +#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK		REG_GENMASK(28, 27)
> +#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */
> +#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
> +#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
> +
>  #define PCH_DP_B		_MMIO(0xe4100)
>  #define PCH_DP_C		_MMIO(0xe4200)
>  #define PCH_DP_D		_MMIO(0xe4300)
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 16619f7be5f8..69c7952a1413 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -6,7 +6,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "g4x_dp.h"
> -#include "i915_reg.h"
>  #include "intel_crt.h"
>  #include "intel_crt_regs.h"
>  #include "intel_de.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5bf3b4ab2baa..d247e107f42f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1022,16 +1022,6 @@
>  #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
>  #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
>  
> -#define _TRANSA_CHICKEN2	 0xf0064
> -#define _TRANSB_CHICKEN2	 0xf1064
> -#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
> -#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
> -#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED		REG_BIT(29)
> -#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK		REG_GENMASK(28, 27)
> -#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */
> -#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
> -#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
> -
>  #define SOUTH_CHICKEN1		_MMIO(0xc2000)
>  #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
>  #define  FDIA_PHASE_SYNC_SHIFT_EN	18
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
> index 7336934bb934..4e18d5a22112 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -30,7 +30,7 @@
>  #include "display/i9xx_plane_regs.h"
>  #include "display/intel_display.h"
>  #include "display/intel_display_core.h"
> -
> +#include "display/intel_display_regs.h"
>  #include "gt/intel_engine_regs.h"
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_mcr.h"

-- 
Jani Nikula, Intel
