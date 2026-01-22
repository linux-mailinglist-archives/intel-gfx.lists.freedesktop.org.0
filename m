Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIhgA7sTcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:10:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7030866701
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAD110E998;
	Thu, 22 Jan 2026 12:10:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dtotKrC/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9341510E995;
 Thu, 22 Jan 2026 12:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769083832; x=1800619832;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=i8eppLZ/tRRsGtoH+KIG6oEmp5jRJlgOIg22JWKqWDg=;
 b=dtotKrC/U+QOf9T3ssIlBfq7fOw+0b0+L21xU4bCScOguZbuy39aDbFh
 WPP4uzPq5FgPdvi+Gc9BIky1N9LAcSG7YMn8JRap2dyEjGBqIs1mmPUDp
 He1QDdEfS/OOLT1es98UcwiFjonIfZFsMECaYYjbBpaYg9gezC5XbJkVc
 r0jMwxFUH5SQTwDB94d1DurjyKTE4ZHi1Zb35EVbVsaA1SQfzj4F9Cz+r
 5RI4KRH3far6jJVXaZQXPa6taTXn7kQeMnN2J3n1Gykseh7jtBFb2qWSj
 EE9sDYYQcYplXaKU+F7xR4a4d85mIySqt9549UVVu7vwiezsaso1LkDs+ Q==;
X-CSE-ConnectionGUID: 7CRks27SRaKRJ9Ljy20Epg==
X-CSE-MsgGUID: 6u+CFK/WSAqOoU23xxoK6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81695691"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81695691"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:10:31 -0800
X-CSE-ConnectionGUID: u2i0M55vQUaKLQjy8fDtPA==
X-CSE-MsgGUID: Kt1WSAYQTfqENnnXIHRzqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="206540797"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:10:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 14/19] drm/{i915, xe}: Remove i915_reg.h from intel_psr.c
In-Reply-To: <20260121232414.707192-15-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-15-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 14:10:25 +0200
Message-ID: <276bfaa323b9c616ebb18783ab9540d2ee6c900a@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7030866701
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move some chicken registers to display header to make
> intel_psr.c free from including i915_reg.h.
>
> v2: Use display header instead of gmd common include (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_regs.h | 26 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.c      |  1 -
>  drivers/gpu/drm/i915/i915_reg.h               | 26 -------------------
>  3 files changed, 26 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index f468e0d20b92..aafe71a3b410 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -363,6 +363,32 @@
>  #define OGAMC1			_MMIO(0x30020)
>  #define OGAMC0			_MMIO(0x30024)
>  
> +#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
> +#define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
> +#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
> +#define   _LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
> +#define   _LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
> +#define   _LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
> +#define   LATENCY_REPORTING_REMOVED(pipe)	_PICK((pipe), \
> +						      _LATENCY_REPORTING_REMOVED_PIPE_A, \
> +						      _LATENCY_REPORTING_REMOVED_PIPE_B, \
> +						      _LATENCY_REPORTING_REMOVED_PIPE_C, \
> +						      _LATENCY_REPORTING_REMOVED_PIPE_D)
> +#define   ICL_DELAY_PMRSP			REG_BIT(22)
> +#define   DISABLE_FLR_SRC			REG_BIT(15)
> +#define   MASK_WAKEMEM				REG_BIT(13)
> +#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
> +
> +#define CHICKEN_PAR1_1		_MMIO(0x42080)
> +#define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
> +#define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
> +#define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
> +#define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
> +#define   HSW_MASK_VBL_TO_PIPE_IN_SRD	REG_BIT(15) /* hsw/bdw */
> +#define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
> +#define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
> +#define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
> +
>  #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
>  #define   BXT_GMBUS_GATING_DIS		(1 << 14)
>  #define   DG2_DPFC_GATING_DIS		REG_BIT(31)
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 62208ffc5101..bde7dbfe15a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -29,7 +29,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
>  
> -#include "i915_reg.h"
>  #include "intel_alpm.h"
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d43c04e491e1..62d58d7cfa7a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -806,36 +806,10 @@
>  #define   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE	REG_BIT(5)
>  #define   CHICKEN3_DGMG_DONE_FIX_DISABLE	REG_BIT(2)
>  
> -#define CHICKEN_PAR1_1		_MMIO(0x42080)
> -#define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
> -#define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
> -#define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
> -#define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
> -#define   HSW_MASK_VBL_TO_PIPE_IN_SRD	REG_BIT(15) /* hsw/bdw */
> -#define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
> -#define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
> -#define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
> -
>  #define CHICKEN_PAR2_1		_MMIO(0x42090)
>  #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
>  
>  
> -#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
> -#define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
> -#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
> -#define   _LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
> -#define   _LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
> -#define   _LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
> -#define   LATENCY_REPORTING_REMOVED(pipe)	_PICK((pipe), \
> -						      _LATENCY_REPORTING_REMOVED_PIPE_A, \
> -						      _LATENCY_REPORTING_REMOVED_PIPE_B, \
> -						      _LATENCY_REPORTING_REMOVED_PIPE_C, \
> -						      _LATENCY_REPORTING_REMOVED_PIPE_D)
> -#define   ICL_DELAY_PMRSP			REG_BIT(22)
> -#define   DISABLE_FLR_SRC			REG_BIT(15)
> -#define   MASK_WAKEMEM				REG_BIT(13)
> -#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
> -
>  #define  VLV_PMWGICZ				_MMIO(0x1300a4)
>  
>  #define  HSW_EDRAM_CAP				_MMIO(0x120010)

-- 
Jani Nikula, Intel
