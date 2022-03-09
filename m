Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48844D3D51
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 23:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA51510E550;
	Wed,  9 Mar 2022 22:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAD110E556
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 22:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646866232; x=1678402232;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aOYWBto8Vm/VppIcBO0k9HLTnV2zlzZANWZCNM8M2Oc=;
 b=ki3ilG+XrSNSYxixJjt7Bgd4JP+89sBqeqy4sLh+NVkVjmVOYGFfUbHZ
 zKMfSYH6ttPXqEr61nNTM4PuIyhur1fjapBM+I9gZPzQpaOgueCbxRNNF
 1j20kMh2HSauWegKmeJ/W1Yg8gaA14iIQ7aTXvNpbjgsyjY2SzMVODAjo
 UeSYmAdGfJdgGkDH2SwXjZwcUaHLJcADvynAIq5Ygwl0XWY4f1ilMn7vP
 3qNXiyp4RGE6wFmcWmSbe7YI2Rt8VlITeN/y17ve6tv3Fs5wCOhTQPRnC
 mbZjwmlF+pm/Z+IqtsVLrXOTcPrfzahjY2B2IYihrqohgd16Hy19v8LbF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237277266"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="237277266"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 14:50:16 -0800
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="510666031"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 14:50:16 -0800
Date: Wed, 9 Mar 2022 14:50:15 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YikvJzweylS9mXMF@mdroper-desk1.amr.corp.intel.com>
References: <20220309090913.2820533-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220309090913.2820533-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/regs: move GEN12_SFC_DONE_MAX
 where it belongs
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

On Wed, Mar 09, 2022 at 11:09:13AM +0200, Jani Nikula wrote:
> Commit ce2fce2513c5 ("drm/i915: Only include i915_reg.h from .c files")
> moved GEN12_SFC_DONE_MAX from i915_regs.h to i915_reg_defs.h. Arguably
> it belongs next to the GEN12_SFC_DONE() definition, as it describes the
> number of GEN12_SFC_DONE instances.

It should probably be replaced with an I915_MAX_SFC define instead,
since what we really care about is the number of SFC units rather than
the number of registers; there's always one register per SFC unit.  Or
maybe even get rid of this completely and replace it with I915_MAX_VCS/2
since we expect there to be a 2:1:1 ratio of VCS:VECS:SFC.


Matt

> 
> The unfortunate downside is obviously having to pull in intel_gt_regs.h
> in i915_gpu_error.h.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> I guess the alternative is to define GEN12_SFC_DONE_MAX in
> i915_gpu_error.h, to avoid the extra include. No matter what, IMO it's
> really out of place in i915_reg_defs.h.
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 1 +
>  drivers/gpu/drm/i915/i915_gpu_error.h   | 1 +
>  drivers/gpu/drm/i915/i915_reg_defs.h    | 2 --
>  3 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 19cd34f24263..6bb987fe3289 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1502,5 +1502,6 @@
>  #define GEN12_CCS2_CCS3_INTR_MASK		_MMIO(0x190104)
>  
>  #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
> +#define GEN12_SFC_DONE_MAX			4
>  
>  #endif /* __INTEL_GT_REGS__ */
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 903d838e2e63..d29155aca84c 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -15,6 +15,7 @@
>  #include <drm/drm_mm.h>
>  
>  #include "gt/intel_engine.h"
> +#include "gt/intel_gt_regs.h"
>  #include "gt/intel_gt_types.h"
>  #include "gt/uc/intel_uc_fw.h"
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index d78d78fce431..8f486f77609f 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -123,6 +123,4 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  
>  #define VLV_DISPLAY_BASE		0x180000
>  
> -#define GEN12_SFC_DONE_MAX		4
> -
>  #endif /* __I915_REG_DEFS__ */
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
