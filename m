Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8AC5576CC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 11:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A6D10E190;
	Thu, 23 Jun 2022 09:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C2DB10E190
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 09:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655977157; x=1687513157;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YAu4iQSE8pnWzlNG2HJ9LlCXuMAZCuZjPwjGBHb4qz4=;
 b=UXy0jHstjKRMIr4nmuAxurWBEP7S6Z00ICByy4ITvwy5iBEHZeg3bfCR
 PLlLL31b7YMqWOFXXYeo5uByVlNq6rMR5A5JmBnxe3qDsQpDYT5dy5fNM
 1+H9RVxp79xSq3yHmXTTywKfNu0hUhuYOw9/G+BASyCWnYC3c9VLZjBjl
 mZJo4ebjp7NducZ0dE45AwQqhCC0BMtg4jNrEAhtY7/rF+5uw38ngVk+Y
 0dmjjyu+EvAYAcjHsEnBkv6l/H2r2DXVnmo28zNU/pU79ONv+9T5aKP6z
 mfB6DqXUaRwu1rOY4RMoi61TzzEEAOUCGjgIBo4yhu84lW9g9Erqa5vVw A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="279442079"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="279442079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 02:39:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="615517692"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 23 Jun 2022 02:39:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 12:39:12 +0300
Date: Thu, 23 Jun 2022 12:39:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YrQ0wKJqc98VQ10Y@intel.com>
References: <cover.1655748056.git.jani.nikula@intel.com>
 <a0edacd8be456458b432e77865cf3bf0078ec9c6.1655748056.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a0edacd8be456458b432e77865cf3bf0078ec9c6.1655748056.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: add
 intel_display_features.h for feature check macros
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 20, 2022 at 09:03:51PM +0300, Jani Nikula wrote:
> Group widely used display feature check macros together in one place.

I was also pondering whether we could pull in the whole INTEL_INFO->display
struct definition, but dunno if that would just make a bigger mess of the
includes.

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_features.h | 37 +++++++++++++++++++
>  .../i915/display/intel_display_power_map.c    |  5 +--
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  .../gpu/drm/i915/display/intel_lpe_audio.c    |  1 +
>  drivers/gpu/drm/i915/i915_drv.h               | 35 ------------------
>  drivers/gpu/drm/i915/i915_suspend.c           |  1 +
>  drivers/gpu/drm/i915/intel_device_info.c      |  1 +
>  drivers/gpu/drm/i915/intel_dram.c             |  1 +
>  drivers/gpu/drm/i915/intel_pch.c              |  1 +
>  9 files changed, 45 insertions(+), 38 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_features.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_features.h b/drivers/gpu/drm/i915/display/intel_display_features.h
> new file mode 100644
> index 000000000000..019ee4c10252
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_features.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_FEATURES_H__
> +#define __INTEL_DISPLAY_FEATURES_H__
> +
> +/* Platform based conditions */
> +#define HAS_ASYNC_FLIPS(__i915)		(DISPLAY_VER(__i915) >= 5)
> +#define HAS_D12_PLANE_MINIMIZATION(__i915) (IS_ROCKETLAKE(__i915) || IS_ALDERLAKE_S(__i915))
> +#define HAS_DP20(__i915)		(IS_DG2(__i915))
> +#define HAS_HW_SAGV_WM(__i915)		(DISPLAY_VER(__i915) >= 13 && !IS_DGFX(__i915))
> +#define HAS_IPS(__i915)			(IS_HSW_ULT(__i915) || IS_BROADWELL(__i915))
> +#define HAS_MSO(__i915)			(DISPLAY_VER(__i915) >= 12)
> +#define HAS_VRR(__i915)			(DISPLAY_VER(__i915) >= 11)
> +
> +/* Device info flags */
> +#define HAS_DDI(__i915)		 	(INTEL_INFO(__i915)->display.has_ddi)
> +#define HAS_DISPLAY(__i915)		(INTEL_INFO(__i915)->display.pipe_mask != 0)
> +#define HAS_DP_MST(__i915)		(INTEL_INFO(__i915)->display.has_dp_mst)
> +#define HAS_FBC(__i915)			(INTEL_INFO(__i915)->display.fbc_mask != 0)
> +#define HAS_GMCH(__i915)		(INTEL_INFO(__i915)->display.has_gmch)
> +#define HAS_IPC(__i915)			(INTEL_INFO(__i915)->display.has_ipc)
> +#define HAS_PSR(__i915)		 	(INTEL_INFO(__i915)->display.has_psr)
> +#define HAS_TRANSCODER(__i915, trans)	((INTEL_INFO(__i915)->display.cpu_transcoder_mask & BIT(trans)) != 0)
> +#define I915_HAS_HOTPLUG(__i915)	(INTEL_INFO(__i915)->display.has_hotplug)
> +#define INTEL_NUM_PIPES(__i915)		(hweight8(INTEL_INFO(__i915)->display.pipe_mask))
> +#define SUPPORTS_TV(__i915)		(INTEL_INFO(__i915)->display.supports_tv)
> +
> +/* Only valid when HAS_DISPLAY() is true */
> +#define INTEL_DISPLAY_ENABLED(__i915) \
> +	(drm_WARN_ON(&(__i915)->drm, !HAS_DISPLAY(__i915)),		\
> +	 !(__i915)->params.disable_display &&				\
> +	 !intel_opregion_headless_sku(__i915))
> +
> +#endif /* __INTEL_DISPLAY_FEATURES_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 97b367f39f35..d84fdcdea588 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -5,11 +5,10 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> -
> -#include "vlv_sideband_reg.h"
> -
> +#include "intel_display_features.h"
>  #include "intel_display_power_map.h"
>  #include "intel_display_power_well.h"
> +#include "vlv_sideband_reg.h"
>  
>  #define __LIST_INLINE_ELEMS(__elem_type, ...) \
>  	((__elem_type[]) { __VA_ARGS__ })
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8b0949b6dc75..9dd008c7b4ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -49,6 +49,7 @@
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
>  #include "intel_display.h"
> +#include "intel_display_features.h"
>  #include "intel_display_power.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_pm_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 4970bf146c4a..9c89801ebaa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -72,6 +72,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_de.h"
> +#include "intel_display_features.h"
>  #include "intel_lpe_audio.h"
>  
>  #define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->audio.lpe.platdev != NULL)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 1d9ba4cf9e01..fd2a4c3b5d74 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1227,20 +1227,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
>  					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))
> -#define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_tv)
> -#define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
> -
> -#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.fbc_mask != 0)
> -
> -#define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
> -
> -#define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
> -#define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
> -
> -#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
> -#define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
> -#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
>  
>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
>  #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
> @@ -1256,7 +1243,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))
>  
> -#define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
>  
>  #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
>  #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
> @@ -1274,8 +1260,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
>  
> -#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
> -
>  #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
>  #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
>  
> @@ -1295,8 +1279,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  			    INTEL_INFO(dev_priv)->has_pxp) && \
>  			    VDBOX_MASK(to_gt(dev_priv)))
>  
> -#define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
> -
>  #define HAS_L3_CCS_READ(i915) (INTEL_INFO(i915)->has_l3_ccs_read)
>  
>  /* DPF == dynamic parity feature */
> @@ -1307,29 +1289,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define GT_FREQUENCY_MULTIPLIER 50
>  #define GEN9_FREQ_SCALER 3
>  
> -#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->display.pipe_mask))
> -
> -#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask != 0)
> -
> -#define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
> -
> -#define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
> -
> -/* Only valid when HAS_DISPLAY() is true */
> -#define INTEL_DISPLAY_ENABLED(dev_priv) \
> -	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),		\
> -	 !(dev_priv)->params.disable_display &&				\
> -	 !intel_opregion_headless_sku(dev_priv))
> -
>  #define HAS_GUC_DEPRIVILEGE(dev_priv) \
>  	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
>  
>  #define HAS_PERCTX_PREEMPT_CTRL(i915) \
>  	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
>  
> -#define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
> -					      IS_ALDERLAKE_S(dev_priv))
> -
>  #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
>  
>  #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index 81def10eb58f..af338f535fb1 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -25,6 +25,7 @@
>   */
>  
>  #include "display/intel_de.h"
> +#include "display/intel_display_features.h"
>  #include "display/intel_gmbus.h"
>  #include "display/intel_vga.h"
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index f0bf23726ed8..94310ac38137 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -29,6 +29,7 @@
>  
>  #include "display/intel_cdclk.h"
>  #include "display/intel_de.h"
> +#include "display/intel_display_features.h"
>  #include "intel_device_info.h"
>  #include "i915_drv.h"
>  #include "i915_utils.h"
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 437447119770..757fae87a32a 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/string_helpers.h>
>  
> +#include "display/intel_display_features.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_dram.h"
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> index e2b2bbdc0714..c60c8460eba9 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -3,6 +3,7 @@
>   * Copyright 2019 Intel Corporation.
>   */
>  
> +#include "display/intel_display_features.h"
>  #include "i915_drv.h"
>  #include "i915_utils.h"
>  #include "intel_pch.h"
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
