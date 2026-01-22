Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLTSHU0NcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:43:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD22B66296
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D68710E990;
	Thu, 22 Jan 2026 11:43:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZJ3IA2g8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B6D910E98D;
 Thu, 22 Jan 2026 11:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769082186; x=1800618186;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ADMKnUq+XCI3wuvVF7+UUF05SchjPe8zvbNaVM7PbPQ=;
 b=ZJ3IA2g8nU47POXdS/GUJLDYH6oqu63IvwcGBBViV+j27y2blp/iANth
 fCq+1II8jCUre7nJBYO3FKGHI86YD+rxt6o+6s5QTHszp/zvSVC7Bidth
 RX5mR7F301fE51+ol9npLyCvt6Qj/sidWPyGngJjFrtzsLCTnGGhQg3ZZ
 kDUaDG/YNES8JYOD9Ql3E2rZqaIcYMX5fkUckNzRxIHZAGUhhDazFicJU
 SWwQRQsrBOTnrBm+pRUgIPj85ljv1wdHdXB/3L3EnOkbB28pWHEaM5UsJ
 eQQ+SPtMdjqM809SatGg3JYSkPc48nO5dFtV2iRbnS3ZuoanlCqiyBzXG g==;
X-CSE-ConnectionGUID: zF++R3DuQe+aeXqdqXOkyg==
X-CSE-MsgGUID: aiSgjCEFQV6M9NyQHHPl8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81039874"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81039874"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:43:06 -0800
X-CSE-ConnectionGUID: sDbRe7OURGe0cqi0DoI/Zw==
X-CSE-MsgGUID: W3vTMYZwRcKk+AS2lxF40w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="211229232"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:43:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 08/19] drm/{i915, xe}: Removed i915_reg.h from intel_display.c
In-Reply-To: <20260121232414.707192-9-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-9-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 13:43:01 +0200
Message-ID: <e96ac9fbe9b53bbbae5dc84c3fb0d270e5093a29@intel.com>
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
X-Rspamd-Queue-Id: DD22B66296
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move CHICKEN_PIPESL_1 register definition to display header.
> This allows intel_display.c free of i915_reg.h include.
>
> v2: Drop common header in include and use display_regs.h (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

*Remove in subject, also drm/i915 prefix only.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 -
>  .../gpu/drm/i915/display/intel_display_regs.h | 23 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 22 ------------------
>  3 files changed, 23 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e3858..b7d4ac7e5ff9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -50,7 +50,6 @@
>  #include "g4x_hdmi.h"
>  #include "hsw_ips.h"
>  #include "i915_config.h"
> -#include "i915_reg.h"
>  #include "i9xx_plane.h"
>  #include "i9xx_plane_regs.h"
>  #include "i9xx_wm.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index f395b7d4d640..b26e6a4ee1c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1544,6 +1544,29 @@
>  #define   CHICKEN_FBC_STRIDE_MASK	REG_GENMASK(12, 0)
>  #define   CHICKEN_FBC_STRIDE(x)		REG_FIELD_PREP(CHICKEN_FBC_STRIDE_MASK, (x))
>  
> +#define _CHICKEN_PIPESL_1_A	0x420b0
> +#define _CHICKEN_PIPESL_1_B	0x420b4
> +#define CHICKEN_PIPESL_1(pipe)	_MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
> +#define   HSW_PRI_STRETCH_MAX_MASK	REG_GENMASK(28, 27)
> +#define   HSW_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 0)
> +#define   HSW_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 1)
> +#define   HSW_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 2)
> +#define   HSW_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 3)
> +#define   HSW_SPR_STRETCH_MAX_MASK	REG_GENMASK(26, 25)
> +#define   HSW_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 0)
> +#define   HSW_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
> +#define   HSW_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
> +#define   HSW_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
> +#define   HSW_FBCQ_DIS			REG_BIT(22)
> +#define   HSW_UNMASK_VBL_TO_REGS_IN_SRD REG_BIT(15) /* hsw */
> +#define   SKL_PSR_MASK_PLANE_FLIP	REG_BIT(11) /* skl+ */
> +#define   SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
> +#define   SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
> +#define   SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
> +#define   SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
> +#define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
> +#define   BDW_UNMASK_VBL_TO_REGS_IN_SRD	REG_BIT(0) /* bdw */
> +
>  #define _CHICKEN_TRANS_A	0x420c0
>  #define _CHICKEN_TRANS_B	0x420c4
>  #define _CHICKEN_TRANS_C	0x420c8
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c9fb9af1a35c..c1d141e9ca47 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -878,28 +878,6 @@
>  #define CHICKEN_PAR2_1		_MMIO(0x42090)
>  #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
>  
> -#define _CHICKEN_PIPESL_1_A	0x420b0
> -#define _CHICKEN_PIPESL_1_B	0x420b4
> -#define CHICKEN_PIPESL_1(pipe)	_MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
> -#define   HSW_PRI_STRETCH_MAX_MASK	REG_GENMASK(28, 27)
> -#define   HSW_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 0)
> -#define   HSW_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 1)
> -#define   HSW_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 2)
> -#define   HSW_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 3)
> -#define   HSW_SPR_STRETCH_MAX_MASK	REG_GENMASK(26, 25)
> -#define   HSW_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 0)
> -#define   HSW_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
> -#define   HSW_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
> -#define   HSW_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
> -#define   HSW_FBCQ_DIS			REG_BIT(22)
> -#define   HSW_UNMASK_VBL_TO_REGS_IN_SRD REG_BIT(15) /* hsw */
> -#define   SKL_PSR_MASK_PLANE_FLIP	REG_BIT(11) /* skl+ */
> -#define   SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
> -#define   SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
> -#define   SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
> -#define   SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
> -#define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
> -#define   BDW_UNMASK_VBL_TO_REGS_IN_SRD	REG_BIT(0) /* bdw */
>  
>  #define DISP_ARB_CTL	_MMIO(0x45000)
>  #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)

-- 
Jani Nikula, Intel
