Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMkMLhgHcmmvZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:16:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BA765D67
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A9010E06D;
	Thu, 22 Jan 2026 11:16:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jeW5zaBG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEC910E06D;
 Thu, 22 Jan 2026 11:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769080598; x=1800616598;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lmOtayG9lZd3jjXHnlx15aMDxKUGe4azQZL62lvxqjk=;
 b=jeW5zaBGVZFdM6qZXEK2AKlfMPnDJR/H14sUoGW41p3oBOv3qF3Jk5qM
 vP2xaTZDgs6cesVyescCrWCLuEarunlBmmEhr19FWmgjJ4L4kHXjfzbFm
 iNVe9F1/98RD5nYCdXw2khBLZZil0uT+Cg880kPeDmZwIkMtzKUzenjcs
 j4pBJpCjUyxEi0mY2UX3hPGUyEjTI8NEJRZN6Q2vSr3v5gDTIrCNCvFEh
 itnjQCJFC6nMMAL8lilCl9EYz5fTF3WjQwgQ3g6L3lsmNp1r1ulWnP/HE
 FNyQ6+DdXCuLJj/jrT0V0RAwG8oh0xtZQ554w62b58136WOPJfH26iMoW Q==;
X-CSE-ConnectionGUID: kY7pD8trSFOia6B/qqqcdQ==
X-CSE-MsgGUID: 77q2jkJ/TCC++XuyGl2waw==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70040943"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="70040943"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:16:38 -0800
X-CSE-ConnectionGUID: qbSGBCfxTXS8//LzyeU/lw==
X-CSE-MsgGUID: zp8DUewtScSN6HhZLk+SqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="205959175"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:16:36 -0800
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
Date: Thu, 22 Jan 2026 13:16:32 +0200
Message-ID: <a361944ea5c4c8d5cbac086270d57e8d319d003c@intel.com>
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
X-Rspamd-Queue-Id: 49BA765D67
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> There are certain register definitions which are defined in i915_reg.h
> which are exclusively needed by display. Move the same to display
> headers to remove i915_reg.h includes from display. This is a step
> towards making display independent of i915.
>
> intel_clock_gating.c can include display header directly.
>
> v2: Drop common header in include and use display_regs.h (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Oh, the Subject should just be drm/i915, this isn't directly related to
xe.

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
