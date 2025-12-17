Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C39CC80FB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 15:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7819E10E7A4;
	Wed, 17 Dec 2025 14:04:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="liYFwok+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB3810E790;
 Wed, 17 Dec 2025 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765980260; x=1797516260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xqGSvA6x60DDRmMRySoCfoS1p1qD/JZCaS5oS3WNyc4=;
 b=liYFwok+5pQOn1u+FYfQAfhb/8pBHDlw41lQArgULLvSVCocpi6FlQdk
 RStdFXxSeWu3H8SZZn1Z+h0TgZdGIMVtYzNXKs8b8w18fiXDQCL/3T5oU
 CIQRZv0VibUS4cP6Z06rq3nLuXDWPEyVNOk8lODzgVuR0496mOrZc1eDK
 D3/xzVKZU61csgMxeSW6XjjvVKI6mr4U23TmLmIHJ4aEXS0JIYE4r3333
 XKnG/LOGhrqXhuzQjXZjTOz5h03uT7X01RPItSD7l/Nsqt32F3JVPu04b
 LDFBO/MXCObz0TLRBBU9oLjXRuBGIx2Tm8aJZwaekz5zJ6U5p1HbxbgOf w==;
X-CSE-ConnectionGUID: ajPQeJsFTTuzNAk02wRjpw==
X-CSE-MsgGUID: lC90m4ZIQH2iRBXhx/yalQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="78555576"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="78555576"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:04:20 -0800
X-CSE-ConnectionGUID: s/jm7BwjRDWOOuhnHp94fQ==
X-CSE-MsgGUID: FOQuZ+ekS4KbZqS8LPQu9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="197929299"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:04:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH 08/19] drm/{i915, xe}: Removed i915_reg.h from
 intel_display.c
In-Reply-To: <20251217062209.852324-9-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251217062209.852324-1-uma.shankar@intel.com>
 <20251217062209.852324-9-uma.shankar@intel.com>
Date: Wed, 17 Dec 2025 16:04:15 +0200
Message-ID: <b72e47f19b42c10825f869a3016d44176be1db25@intel.com>
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

On Wed, 17 Dec 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> Move CHICKEN_PIPESL_1 to common header to free intel_display.c
> from including i915_reg.h

Same as before, I think this is display stuff that belongs under
display, intel_clock_gating.c parts that use it belong in display/ too,
and gvt can include the header directly.

BR,
Jani.

>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h              | 23 --------------------
>  include/drm/intel/intel_gmd_common_regs.h    | 23 ++++++++++++++++++++
>  3 files changed, 24 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9c6d3ecdb589..ad2782d85074 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -45,13 +45,13 @@
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/intel/intel_gmd_common_regs.h>
>  
>  #include "g4x_dp.h"
>  #include "g4x_hdmi.h"
>  #include "hsw_ips.h"
>  #include "i915_config.h"
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "i9xx_plane.h"
>  #include "i9xx_plane_regs.h"
>  #include "i9xx_wm.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c9fb9af1a35c..e807be4a9962 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -878,29 +878,6 @@
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
> -
>  #define DISP_ARB_CTL	_MMIO(0x45000)
>  #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
>  #define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
> diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
> index d4f91703e8a0..1908c203d54c 100644
> --- a/include/drm/intel/intel_gmd_common_regs.h
> +++ b/include/drm/intel/intel_gmd_common_regs.h
> @@ -80,6 +80,29 @@
>  #define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
>  #define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
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
>  #define _TRANSA_CHICKEN2	 0xf0064
>  #define _TRANSB_CHICKEN2	 0xf1064
>  #define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)

-- 
Jani Nikula, Intel
