Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD2C3F717B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 11:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4CE6E167;
	Wed, 25 Aug 2021 09:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC7DF6E16D;
 Wed, 25 Aug 2021 09:10:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217518290"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="217518290"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 02:10:54 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="527164446"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 02:10:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Koba Ko <koba.ko@canonical.com>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
In-Reply-To: <20210825043522.346512-1-koba.ko@canonical.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210825043522.346512-1-koba.ko@canonical.com>
Date: Wed, 25 Aug 2021 12:10:49 +0300
Message-ID: <8735qxga92.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm: i915: move intel_pch.h to
 include/drm
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

On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> Because AMD GPU have a issue on RKL platform,
> driver needs to determine which intel platfomr is and
> if the platform is RKL, disable PCIE_DPM for AMD polaris-series GPUs.
>
> Move intel_pch.h to includ/drm

I don't know what the root cause is, or whether this is the right course
of action. However, if you do end up needing PCH ids outside of i915, I
think it's too much to move the entire intel_pch.h under include/drm.

Instead, I suggest adding include/drm/i915_pchids.h (or similar,
analoguous to i915_pciids.h) which would only have the macros:

#define INTEL_PCH_DEVICE_ID_MASK		0xff80
#define INTEL_PCH_*_DEVICE_ID_TYPE		*

and nothing more. intel_pch.h is too i915 specific to expose and does
not have enough namespacing prefixes in the other macros and enums
either. Then intel_pch.h would include i915_pchids.h.

BR,
Jani.


>
> Ref: https://lists.freedesktop.org/archives/amd-gfx/2021-August/067413.html
> Signed-off-by: Koba Ko <koba.ko@canonical.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h                   | 4 +++-
>  drivers/gpu/drm/i915/intel_pch.c                  | 2 +-
>  {drivers/gpu/drm/i915 => include/drm}/intel_pch.h | 2 --
>  3 files changed, 4 insertions(+), 4 deletions(-)
>  rename {drivers/gpu/drm/i915 => include/drm}/intel_pch.h (98%)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 106f218cec2b..7d091927d9b4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -60,6 +60,7 @@
>  #include <drm/drm_connector.h>
>  #include <drm/i915_mei_hdcp_interface.h>
>  #include <drm/ttm/ttm_device.h>
> +#include <drm/intel_pch.h>
>  
>  #include "i915_params.h"
>  #include "i915_reg.h"
> @@ -89,7 +90,6 @@
>  
>  #include "intel_device_info.h"
>  #include "intel_memory_region.h"
> -#include "intel_pch.h"
>  #include "intel_runtime_pm.h"
>  #include "intel_step.h"
>  #include "intel_uncore.h"
> @@ -1336,6 +1336,8 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>  	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
>  	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) < (until))
>  
> +void intel_detect_pch(struct drm_i915_private *dev_priv);
> +
>  static __always_inline unsigned int
>  __platform_mask_index(const struct intel_runtime_info *info,
>  		      enum intel_platform p)
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> index d1d4b97b86f5..43162d1338bc 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -4,7 +4,7 @@
>   */
>  
>  #include "i915_drv.h"
> -#include "intel_pch.h"
> +#include <drm/intel_pch.h>
>  
>  /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
>  static enum intel_pch
> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/include/drm/intel_pch.h
> similarity index 98%
> rename from drivers/gpu/drm/i915/intel_pch.h
> rename to include/drm/intel_pch.h
> index 7c0d83d292dc..168c83c836b4 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/include/drm/intel_pch.h
> @@ -84,6 +84,4 @@ enum intel_pch {
>  #define HAS_PCH_NOP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_NOP)
>  #define HAS_PCH_SPLIT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
>  
> -void intel_detect_pch(struct drm_i915_private *dev_priv);
> -
>  #endif /* __INTEL_PCH__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
